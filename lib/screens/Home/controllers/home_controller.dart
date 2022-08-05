import 'package:atvos_agricola/models/card_info.dart';
import 'package:atvos_agricola/models/filter.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController {
  static HomeController instance = HomeController();

  final showSupply = ValueNotifier<bool>(false);
  final showFertigation = ValueNotifier<bool>(false);
  final showPlanting = ValueNotifier<bool>(false);
  final showProduction = ValueNotifier<bool>(false);

  final notes = ValueNotifier<List<CardInfo>>([]);
  final orders = ValueNotifier<List<CardInfo>>([]);

  final notesFiltered = ValueNotifier<List<CardInfo>>([]);
  final ordersFiltered = ValueNotifier<List<CardInfo>>([]);

  Future<Filter> getFiltersStorage() async {
    final prefs = await SharedPreferences.getInstance();
    final bool? showStorageSupply = prefs.getBool('isSupply');
    final bool? showStorageFertigation = prefs.getBool('isFertigation');
    final bool? showStoragePlanting = prefs.getBool('isPlanting');
    final bool? showStorageProduction = prefs.getBool('isProduction');

    return Filter(
        isSupply: showStorageSupply ?? false,
        isFertigation: showStorageFertigation ?? false,
        isPlanting: showStoragePlanting ?? false,
        isProduction: showStorageProduction ?? false);
  }

  toogleFilter({required ValueNotifier<bool> filter}) {
    filter.value = !filter.value;
  }

  Future<bool> isFilterActive({required Filter filters}) async {
    if (filters.isSupply ||
        filters.isFertigation ||
        filters.isPlanting ||
        filters.isProduction) {
      return true;
    } else {
      return false;
    }
  }

  onFilterNotesByType({required Filter filters}) {
    var supply = filters.isSupply ? 'Insumo' : 'empty';
    var fertigation = filters.isFertigation ? 'Fertirrigação' : 'empty';
    var planting = filters.isPlanting ? 'Plantio' : 'empty';
    var production = filters.isProduction ? 'Produção' : 'empty';

    List<CardInfo> allNotesFiltered = notes.value
        .where((note) =>
            note.title == supply ||
            note.title == fertigation ||
            note.title == planting ||
            note.title == production)
        .toList();

    return allNotesFiltered;
  }

  setNotesFiltered({required List<CardInfo> notes}) {
    notesFiltered.value = notes;
  }
}

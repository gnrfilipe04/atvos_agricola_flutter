import 'package:atvos_agricola/models/card_info.dart';
import 'package:atvos_agricola/models/filter.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'filter_model.g.dart';

class FilterModel = FilterModelBase with _$FilterModel;

abstract class FilterModelBase with Store {
  @observable
  bool showSupply = false;

  @observable
  bool showFertigation = false;

  @observable
  bool showPlanting = false;

  @observable
  bool showProduction = false;

  @observable
  List<CardInfo> notes = [];

  @observable
  List<CardInfo> orders = [];

  @observable
  List<CardInfo> notesFiltered = [];

  @observable
  List<CardInfo> ordersFiltered = [];

  @action
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

  @action
  setSupply({required dynamic filter}) {
    showSupply = !filter;
  }

  @action
  setFertigation({required dynamic filter}) {
    showFertigation = !filter;
  }

  @action
  setPlanting({required dynamic filter}) {
    showPlanting = !filter;
  }

  @action
  setProduction({required dynamic filter}) {
    showProduction = !filter;
  }

  @action
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

  @action
  filterNotesByType({required Filter filters}) {
    var supply = filters.isSupply ? 'Insumo' : 'empty';
    var fertigation = filters.isFertigation ? 'Fertirrigação' : 'empty';
    var planting = filters.isPlanting ? 'Plantio' : 'empty';
    var production = filters.isProduction ? 'Produção' : 'empty';

    List<CardInfo> allNotesFiltered = notes
        .where((note) =>
            note.title == supply ||
            note.title == fertigation ||
            note.title == planting ||
            note.title == production)
        .toList();

    return allNotesFiltered;
  }

  @action
  setNotesFiltered({required List<CardInfo> notes}) {
    notesFiltered = notes;
  }
}

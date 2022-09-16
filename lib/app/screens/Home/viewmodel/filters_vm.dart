import 'package:atvos_agricola/app/models/card_info.dart';
import 'package:atvos_agricola/app/models/filter.dart';
import 'package:atvos_agricola/app/screens/Home/controllers/home_controller.dart';
import 'package:atvos_agricola/app/screens/Home/models/filter_item.dart';
import 'package:atvos_agricola/app/viewmodel/notes_vm.dart';
import 'package:atvos_agricola/app/viewmodel/orders_vm.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'filters_vm.g.dart';

class FiltersVm = _FiltersVmBase with _$FiltersVm;

abstract class _FiltersVmBase with Store {
  final NotesVm notesVm = GetIt.I.get<NotesVm>();
  final OrdersVm ordersVm = GetIt.I.get<OrdersVm>();
  final HomeController homeController = GetIt.I.get<HomeController>();

  @observable
  List<FilterItem> switchList = [
    FilterItem(title: 'Insumo', active: false),
    FilterItem(title: 'Fertirrigação', active: false),
    FilterItem(title: 'Plantio', active: false),
    FilterItem(title: 'Produção', active: false),
  ];

  @action
  setList(List<FilterItem> list) => switchList = list;

  @action
  Future<List<FilterItem>> getFiltersStorage() async {
    final prefs = await SharedPreferences.getInstance();
    final Object? filters = prefs.get('filters');
    List<FilterItem> switchList = [];
    return switchList;
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
  List<String> getFiltersActive({required List<FilterItem> filterList}) {
    List<String> filtersActive = filterList
        .where((element) => element.active)
        .map((item) => item.title)
        .toList();

    return filtersActive;
  }

  @action
  filterNotesByType({required List<FilterItem> filterList}) {
    List<String> filtersActive = getFiltersActive(filterList: filterList);

    List<CardInfo> notesFiltered = notesVm.notes
        .where((element) => filtersActive.contains(element.title))
        .toList();

    return notesFiltered;
  }

  @action
  filterOrdersByType({required List<FilterItem> filterList}) {
    List<String> filtersActive = getFiltersActive(filterList: filterList);

    List<CardInfo> ordersFiltered = ordersVm.orders
        .where((element) => filtersActive.contains(element.title))
        .toList();

    return ordersFiltered;
  }

  @action
  setNotesFiltered({required List<CardInfo> notes}) {
    notes = notes;
  }

  @action
  setFiltersInStorage({required List<FilterItem> filterList}) async {
    final prefs = await SharedPreferences.getInstance();

    filterList.forEach((e) async => await prefs.setBool(e.title, e.active));
  }

  @action
  getFiltersInStorage({required List<FilterItem> filterList}) async {}

  @action
  filterNotes() {
    List<CardInfo> notesFiltered = filterNotesByType(filterList: switchList);

    notesVm.setNotesFiltered(newNotes: notesFiltered);
  }

  @action
  filterOrders() {
    List<CardInfo> ordersFiltered = filterNotesByType(filterList: switchList);

    ordersVm.setOrdersFiltered(newOrders: ordersFiltered);
  }

  @action
  onFilter() {
    homeController.pageIndex == 0 ? filterNotes() : filterOrders();
  }
}

import 'dart:convert';

import 'package:atvos_agricola/app/interfaces/local_storage_interface.dart';
import 'package:atvos_agricola/app/models/card_info.dart';
import 'package:atvos_agricola/app/screens/Home/models/filter_item.dart';
import 'package:atvos_agricola/app/services/shared_storage_service.dart';
import 'package:atvos_agricola/app/viewmodel/notes_vm.dart';
import 'package:atvos_agricola/app/viewmodel/orders_vm.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'filters_vm.g.dart';

class FiltersVm = _FiltersVmBase with _$FiltersVm;

abstract class _FiltersVmBase with Store {
  final NotesVm notesVm = GetIt.I.get<NotesVm>();
  final OrdersVm ordersVm = GetIt.I.get<OrdersVm>();

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

    if (filtersActive.isEmpty) {
      return notesVm.notes;
    } else {
      return notesFiltered;
    }
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
  setFiltersInStorage({required List<FilterItem> filterList}) async {
    final ILocalStorage localStorage = SharedStorage();
    final filtersToJson = jsonEncode(filterList);

    await localStorage.save(key: 'filters', value: filtersToJson);
  }

  @action
  getFiltersInStorage() async {
    final ILocalStorage localStorage = SharedStorage();
    final filtersInStorage = await localStorage.get(key: 'filters');

    if (filtersInStorage != null) {
      final List<dynamic> filtersFromJson = jsonDecode(filtersInStorage);
      List<FilterItem> filters = filtersFromJson
          .map((e) => FilterItem(active: e['active'], title: e['title']))
          .toList();

      switchList = filters;
    }
  }

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
}

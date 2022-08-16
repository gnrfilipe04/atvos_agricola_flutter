import 'package:atvos_agricola/models/card_info.dart';
import 'package:atvos_agricola/models/filter.dart';
import 'package:atvos_agricola/screens/Home/models/filter_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  static HomeController instance = HomeController();
  static FilterModel filterModelInstance = FilterModel();
  final pageIndex = ValueNotifier<int>(0);

  filterNotesByType({required Filter filters}) {
    return filterModelInstance.filterNotesByType(filters: filters);
  }

  setNotesFiltered({required List<CardInfo> notes}) {
    filterModelInstance.notesFiltered.value = notes;
  }

  initNotes({required Filter filters}) {}

  filterNotes({required Filter filters}) {
    return filterModelInstance.filterNotesByType(filters: filters);
  }

  setNotes({required List<CardInfo> notes}) {
    filterModelInstance.notes.value = notes;
  }

  getNotesFiltered() {
    return filterModelInstance.notesFiltered.value;
  }

  getFiltersInStorage() {
    return filterModelInstance.getFiltersStorage();
  }

  filtersActive({required Filter filters}) {
    return filterModelInstance.isFilterActive(filters: filters);
  }

  filterToogle({required ValueNotifier<bool> filter}) {
    filterModelInstance.toogleFilter(filter: filter);
  }

  onChangeSwitchFilter({required Filter filters}) {
    filterModelInstance.showSupply.value = filters.isSupply;
    filterModelInstance.showFertigation.value = filters.isFertigation;
    filterModelInstance.showPlanting.value = filters.isPlanting;
    filterModelInstance.showProduction.value = filters.isProduction;
  }

  void onTabBarTapped(int index) {
    pageIndex.value = index;
  }

  Future<void> setInitialNotesFiltered({
    required List<CardInfo> initNotes,
  }) async {
    final storageFilters = await getFiltersInStorage();

    var filters = Filter(
        isSupply: storageFilters.isSupply,
        isFertigation: storageFilters.isFertigation,
        isPlanting: storageFilters.isPlanting,
        isProduction: storageFilters.isProduction);

    var isFilterActive = await instance.filtersActive(filters: filters);

    if (isFilterActive) {
      var notesFiltered = filterNotesByType(filters: filters);
      setNotesFiltered(notes: notesFiltered);
    } else {
      setNotesFiltered(notes: initNotes);
    }
  }

  Future<void> storageToFilter() async {
    var filtersInStorage = await getFiltersInStorage();
    Filter filtersSwitchValue = Filter(
        isSupply: filtersInStorage.isSupply,
        isFertigation: filtersInStorage.isFertigation,
        isPlanting: filtersInStorage.isPlanting,
        isProduction: filtersInStorage.isProduction);

    onChangeSwitchFilter(filters: filtersSwitchValue);
  }
}

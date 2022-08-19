import 'package:atvos_agricola/models/card_info.dart';
import 'package:atvos_agricola/models/filter.dart';
import 'package:atvos_agricola/screens/Home/models/filter_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  @observable
  FilterModel filterModelInstance = FilterModel();

  @observable
  int pageIndex = 0;

  @action
  filterNotesByType({required Filter filters}) {
    return filterModelInstance.filterNotesByType(filters: filters);
  }

  @action
  setNotesFiltered({required List<CardInfo> notes}) {
    filterModelInstance.notesFiltered = notes;
  }

  @action
  initNotes({required Filter filters}) {}

  @action
  filterNotes({required Filter filters}) {
    return filterModelInstance.filterNotesByType(filters: filters);
  }

  @action
  setNotes({required List<CardInfo> notes}) {
    filterModelInstance.notes = notes;
  }

  @action
  getNotesFiltered() {
    return filterModelInstance.notesFiltered;
  }

  @action
  getFiltersInStorage() {
    return filterModelInstance.getFiltersStorage();
  }

  @action
  filtersActive({required Filter filters}) {
    return filterModelInstance.isFilterActive(filters: filters);
  }

  @action
  setSupply({required dynamic filter}) {
    filterModelInstance.showSupply = !filter;
  }

  @action
  setFertigation({required dynamic filter}) {
    filterModelInstance.showFertigation = !filter;
  }

  @action
  setPlanting({required dynamic filter}) {
    filterModelInstance.showPlanting = !filter;
  }

  @action
  setProduction({required dynamic filter}) {
    filterModelInstance.showProduction = !filter;
  }

  @action
  onChangeSwitchFilter({required Filter filters}) {
    filterModelInstance.showSupply = filters.isSupply;
    filterModelInstance.showFertigation = filters.isFertigation;
    filterModelInstance.showPlanting = filters.isPlanting;
    filterModelInstance.showProduction = filters.isProduction;
  }

  @action
  void onTabBarTapped(int index) {
    pageIndex = index;
  }

  @action
  Future<void> setInitialNotesFiltered({
    required List<CardInfo> initNotes,
  }) async {
    final storageFilters = await getFiltersInStorage();

    var filters = Filter(
        isSupply: storageFilters.isSupply,
        isFertigation: storageFilters.isFertigation,
        isPlanting: storageFilters.isPlanting,
        isProduction: storageFilters.isProduction);

    var isFilterActive = await filtersActive(filters: filters);

    if (isFilterActive) {
      var notesFiltered = filterNotesByType(filters: filters);
      setNotesFiltered(notes: notesFiltered);
    } else {
      setNotesFiltered(notes: initNotes);
    }
  }

  @action
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

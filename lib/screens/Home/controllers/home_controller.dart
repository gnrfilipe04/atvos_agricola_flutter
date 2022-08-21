import 'package:atvos_agricola/models/card_info.dart';
import 'package:atvos_agricola/models/filter.dart';
import 'package:atvos_agricola/screens/Home/models/filter_model.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final filterModel = GetIt.I.get<FilterModel>();

  @observable
  int pageIndex = 0;

  @action
  filterNotesByType({required Filter filters}) {
    return filterModel.filterNotesByType(filters: filters);
  }

  @action
  setNotesFiltered({required List<CardInfo> notes}) {
    filterModel.notesFiltered = notes;
  }

  @action
  initNotes({required Filter filters}) {}

  @action
  filterNotes({required Filter filters}) {
    return filterModel.filterNotesByType(filters: filters);
  }

  @action
  setNotes({required List<CardInfo> notes}) {
    filterModel.notes = notes;
  }

  @action
  getNotesFiltered() {
    return filterModel.notesFiltered;
  }

  @action
  getFiltersInStorage() {
    return filterModel.getFiltersStorage();
  }

  @action
  filtersActive({required Filter filters}) {
    return filterModel.isFilterActive(filters: filters);
  }

  @action
  setSupply({required dynamic filter}) {
    filterModel.showSupply = !filter;
  }

  @action
  setFertigation({required dynamic filter}) {
    filterModel.showFertigation = !filter;
  }

  @action
  setPlanting({required dynamic filter}) {
    filterModel.showPlanting = !filter;
  }

  @action
  setProduction({required dynamic filter}) {
    filterModel.showProduction = !filter;
  }

  @action
  onChangeSwitchFilter({required Filter filters}) {
    filterModel.showSupply = filters.isSupply;
    filterModel.showFertigation = filters.isFertigation;
    filterModel.showPlanting = filters.isPlanting;
    filterModel.showProduction = filters.isProduction;
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

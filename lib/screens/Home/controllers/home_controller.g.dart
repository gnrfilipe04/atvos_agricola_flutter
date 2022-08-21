// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$pageIndexAtom =
      Atom(name: 'HomeControllerBase.pageIndex', context: context);

  @override
  int get pageIndex {
    _$pageIndexAtom.reportRead();
    return super.pageIndex;
  }

  @override
  set pageIndex(int value) {
    _$pageIndexAtom.reportWrite(value, super.pageIndex, () {
      super.pageIndex = value;
    });
  }

  late final _$setInitialNotesFilteredAsyncAction = AsyncAction(
      'HomeControllerBase.setInitialNotesFiltered',
      context: context);

  @override
  Future<void> setInitialNotesFiltered({required List<CardInfo> initNotes}) {
    return _$setInitialNotesFilteredAsyncAction
        .run(() => super.setInitialNotesFiltered(initNotes: initNotes));
  }

  late final _$storageToFilterAsyncAction =
      AsyncAction('HomeControllerBase.storageToFilter', context: context);

  @override
  Future<void> storageToFilter() {
    return _$storageToFilterAsyncAction.run(() => super.storageToFilter());
  }

  late final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase', context: context);

  @override
  dynamic filterNotesByType({required Filter filters}) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.filterNotesByType');
    try {
      return super.filterNotesByType(filters: filters);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNotesFiltered({required List<CardInfo> notes}) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setNotesFiltered');
    try {
      return super.setNotesFiltered(notes: notes);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic initNotes({required Filter filters}) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.initNotes');
    try {
      return super.initNotes(filters: filters);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic filterNotes({required Filter filters}) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.filterNotes');
    try {
      return super.filterNotes(filters: filters);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNotes({required List<CardInfo> notes}) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setNotes');
    try {
      return super.setNotes(notes: notes);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getNotesFiltered() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.getNotesFiltered');
    try {
      return super.getNotesFiltered();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getFiltersInStorage() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.getFiltersInStorage');
    try {
      return super.getFiltersInStorage();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic filtersActive({required Filter filters}) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.filtersActive');
    try {
      return super.filtersActive(filters: filters);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSupply({required dynamic filter}) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setSupply');
    try {
      return super.setSupply(filter: filter);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFertigation({required dynamic filter}) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setFertigation');
    try {
      return super.setFertigation(filter: filter);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPlanting({required dynamic filter}) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setPlanting');
    try {
      return super.setPlanting(filter: filter);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setProduction({required dynamic filter}) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setProduction');
    try {
      return super.setProduction(filter: filter);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onChangeSwitchFilter({required Filter filters}) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.onChangeSwitchFilter');
    try {
      return super.onChangeSwitchFilter(filters: filters);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onTabBarTapped(int index) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.onTabBarTapped');
    try {
      return super.onTabBarTapped(index);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pageIndex: ${pageIndex}
    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filters_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FiltersVm on _FiltersVmBase, Store {
  late final _$switchListAtom =
      Atom(name: '_FiltersVmBase.switchList', context: context);

  @override
  List<FilterItem> get switchList {
    _$switchListAtom.reportRead();
    return super.switchList;
  }

  @override
  set switchList(List<FilterItem> value) {
    _$switchListAtom.reportWrite(value, super.switchList, () {
      super.switchList = value;
    });
  }

  late final _$setFiltersInStorageAsyncAction =
      AsyncAction('_FiltersVmBase.setFiltersInStorage', context: context);

  @override
  Future setFiltersInStorage({required List<FilterItem> filterList}) {
    return _$setFiltersInStorageAsyncAction
        .run(() => super.setFiltersInStorage(filterList: filterList));
  }

  late final _$getFiltersInStorageAsyncAction =
      AsyncAction('_FiltersVmBase.getFiltersInStorage', context: context);

  @override
  Future getFiltersInStorage() {
    return _$getFiltersInStorageAsyncAction
        .run(() => super.getFiltersInStorage());
  }

  late final _$_FiltersVmBaseActionController =
      ActionController(name: '_FiltersVmBase', context: context);

  @override
  dynamic setList(List<FilterItem> list) {
    final _$actionInfo = _$_FiltersVmBaseActionController.startAction(
        name: '_FiltersVmBase.setList');
    try {
      return super.setList(list);
    } finally {
      _$_FiltersVmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<String> getFiltersActive({required List<FilterItem> filterList}) {
    final _$actionInfo = _$_FiltersVmBaseActionController.startAction(
        name: '_FiltersVmBase.getFiltersActive');
    try {
      return super.getFiltersActive(filterList: filterList);
    } finally {
      _$_FiltersVmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic filterNotesByType({required List<FilterItem> filterList}) {
    final _$actionInfo = _$_FiltersVmBaseActionController.startAction(
        name: '_FiltersVmBase.filterNotesByType');
    try {
      return super.filterNotesByType(filterList: filterList);
    } finally {
      _$_FiltersVmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic searchNotes({required String value}) {
    final _$actionInfo = _$_FiltersVmBaseActionController.startAction(
        name: '_FiltersVmBase.searchNotes');
    try {
      return super.searchNotes(value: value);
    } finally {
      _$_FiltersVmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic filterOrdersByType({required List<FilterItem> filterList}) {
    final _$actionInfo = _$_FiltersVmBaseActionController.startAction(
        name: '_FiltersVmBase.filterOrdersByType');
    try {
      return super.filterOrdersByType(filterList: filterList);
    } finally {
      _$_FiltersVmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic filterNotes() {
    final _$actionInfo = _$_FiltersVmBaseActionController.startAction(
        name: '_FiltersVmBase.filterNotes');
    try {
      return super.filterNotes();
    } finally {
      _$_FiltersVmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic filterOrders() {
    final _$actionInfo = _$_FiltersVmBaseActionController.startAction(
        name: '_FiltersVmBase.filterOrders');
    try {
      return super.filterOrders();
    } finally {
      _$_FiltersVmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
switchList: ${switchList}
    ''';
  }
}

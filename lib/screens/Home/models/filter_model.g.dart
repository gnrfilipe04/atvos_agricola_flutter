// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FilterModel on FilterModelBase, Store {
  late final _$showSupplyAtom =
      Atom(name: 'FilterModelBase.showSupply', context: context);

  @override
  bool get showSupply {
    _$showSupplyAtom.reportRead();
    return super.showSupply;
  }

  @override
  set showSupply(bool value) {
    _$showSupplyAtom.reportWrite(value, super.showSupply, () {
      super.showSupply = value;
    });
  }

  late final _$showFertigationAtom =
      Atom(name: 'FilterModelBase.showFertigation', context: context);

  @override
  bool get showFertigation {
    _$showFertigationAtom.reportRead();
    return super.showFertigation;
  }

  @override
  set showFertigation(bool value) {
    _$showFertigationAtom.reportWrite(value, super.showFertigation, () {
      super.showFertigation = value;
    });
  }

  late final _$showPlantingAtom =
      Atom(name: 'FilterModelBase.showPlanting', context: context);

  @override
  bool get showPlanting {
    _$showPlantingAtom.reportRead();
    return super.showPlanting;
  }

  @override
  set showPlanting(bool value) {
    _$showPlantingAtom.reportWrite(value, super.showPlanting, () {
      super.showPlanting = value;
    });
  }

  late final _$showProductionAtom =
      Atom(name: 'FilterModelBase.showProduction', context: context);

  @override
  bool get showProduction {
    _$showProductionAtom.reportRead();
    return super.showProduction;
  }

  @override
  set showProduction(bool value) {
    _$showProductionAtom.reportWrite(value, super.showProduction, () {
      super.showProduction = value;
    });
  }

  late final _$notesAtom =
      Atom(name: 'FilterModelBase.notes', context: context);

  @override
  List<CardInfo> get notes {
    _$notesAtom.reportRead();
    return super.notes;
  }

  @override
  set notes(List<CardInfo> value) {
    _$notesAtom.reportWrite(value, super.notes, () {
      super.notes = value;
    });
  }

  late final _$ordersAtom =
      Atom(name: 'FilterModelBase.orders', context: context);

  @override
  List<CardInfo> get orders {
    _$ordersAtom.reportRead();
    return super.orders;
  }

  @override
  set orders(List<CardInfo> value) {
    _$ordersAtom.reportWrite(value, super.orders, () {
      super.orders = value;
    });
  }

  late final _$notesFilteredAtom =
      Atom(name: 'FilterModelBase.notesFiltered', context: context);

  @override
  List<CardInfo> get notesFiltered {
    _$notesFilteredAtom.reportRead();
    return super.notesFiltered;
  }

  @override
  set notesFiltered(List<CardInfo> value) {
    _$notesFilteredAtom.reportWrite(value, super.notesFiltered, () {
      super.notesFiltered = value;
    });
  }

  late final _$ordersFilteredAtom =
      Atom(name: 'FilterModelBase.ordersFiltered', context: context);

  @override
  List<CardInfo> get ordersFiltered {
    _$ordersFilteredAtom.reportRead();
    return super.ordersFiltered;
  }

  @override
  set ordersFiltered(List<CardInfo> value) {
    _$ordersFilteredAtom.reportWrite(value, super.ordersFiltered, () {
      super.ordersFiltered = value;
    });
  }

  late final _$getFiltersStorageAsyncAction =
      AsyncAction('FilterModelBase.getFiltersStorage', context: context);

  @override
  Future<Filter> getFiltersStorage() {
    return _$getFiltersStorageAsyncAction.run(() => super.getFiltersStorage());
  }

  late final _$isFilterActiveAsyncAction =
      AsyncAction('FilterModelBase.isFilterActive', context: context);

  @override
  Future<bool> isFilterActive({required Filter filters}) {
    return _$isFilterActiveAsyncAction
        .run(() => super.isFilterActive(filters: filters));
  }

  late final _$FilterModelBaseActionController =
      ActionController(name: 'FilterModelBase', context: context);

  @override
  dynamic setSupply({required dynamic filter}) {
    final _$actionInfo = _$FilterModelBaseActionController.startAction(
        name: 'FilterModelBase.setSupply');
    try {
      return super.setSupply(filter: filter);
    } finally {
      _$FilterModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFertigation({required dynamic filter}) {
    final _$actionInfo = _$FilterModelBaseActionController.startAction(
        name: 'FilterModelBase.setFertigation');
    try {
      return super.setFertigation(filter: filter);
    } finally {
      _$FilterModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPlanting({required dynamic filter}) {
    final _$actionInfo = _$FilterModelBaseActionController.startAction(
        name: 'FilterModelBase.setPlanting');
    try {
      return super.setPlanting(filter: filter);
    } finally {
      _$FilterModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setProduction({required dynamic filter}) {
    final _$actionInfo = _$FilterModelBaseActionController.startAction(
        name: 'FilterModelBase.setProduction');
    try {
      return super.setProduction(filter: filter);
    } finally {
      _$FilterModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic filterNotesByType({required Filter filters}) {
    final _$actionInfo = _$FilterModelBaseActionController.startAction(
        name: 'FilterModelBase.filterNotesByType');
    try {
      return super.filterNotesByType(filters: filters);
    } finally {
      _$FilterModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNotesFiltered({required List<CardInfo> notes}) {
    final _$actionInfo = _$FilterModelBaseActionController.startAction(
        name: 'FilterModelBase.setNotesFiltered');
    try {
      return super.setNotesFiltered(notes: notes);
    } finally {
      _$FilterModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showSupply: ${showSupply},
showFertigation: ${showFertigation},
showPlanting: ${showPlanting},
showProduction: ${showProduction},
notes: ${notes},
orders: ${orders},
notesFiltered: ${notesFiltered},
ordersFiltered: ${ordersFiltered}
    ''';
  }
}

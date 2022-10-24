// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkbox_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CheckboxItem on _CheckboxItemBase, Store {
  late final _$titleAtom =
      Atom(name: '_CheckboxItemBase.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$activeAtom =
      Atom(name: '_CheckboxItemBase.active', context: context);

  @override
  bool get active {
    _$activeAtom.reportRead();
    return super.active;
  }

  @override
  set active(bool value) {
    _$activeAtom.reportWrite(value, super.active, () {
      super.active = value;
    });
  }

  late final _$_CheckboxItemBaseActionController =
      ActionController(name: '_CheckboxItemBase', context: context);

  @override
  dynamic setActive(bool value) {
    final _$actionInfo = _$_CheckboxItemBaseActionController.startAction(
        name: '_CheckboxItemBase.setActive');
    try {
      return super.setActive(value);
    } finally {
      _$_CheckboxItemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
active: ${active}
    ''';
  }
}

mixin _$CheckboxListStore on _CheckboxListStoreBase, Store {
  late final _$listAtom =
      Atom(name: '_CheckboxListStoreBase.list', context: context);

  @override
  List<CheckboxItem> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(List<CheckboxItem> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  @override
  String toString() {
    return '''
list: ${list}
    ''';
  }
}

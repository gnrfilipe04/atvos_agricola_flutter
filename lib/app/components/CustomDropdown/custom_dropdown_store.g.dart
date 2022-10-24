// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_dropdown_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CustomDropdownStore on _CustomDropdownStoreBase, Store {
  late final _$dropdownListAtom =
      Atom(name: '_CustomDropdownStoreBase.dropdownList', context: context);

  @override
  List<String> get dropdownList {
    _$dropdownListAtom.reportRead();
    return super.dropdownList;
  }

  @override
  set dropdownList(List<String> value) {
    _$dropdownListAtom.reportWrite(value, super.dropdownList, () {
      super.dropdownList = value;
    });
  }

  late final _$dropdownValueAtom =
      Atom(name: '_CustomDropdownStoreBase.dropdownValue', context: context);

  @override
  String? get dropdownValue {
    _$dropdownValueAtom.reportRead();
    return super.dropdownValue;
  }

  @override
  set dropdownValue(String? value) {
    _$dropdownValueAtom.reportWrite(value, super.dropdownValue, () {
      super.dropdownValue = value;
    });
  }

  late final _$_CustomDropdownStoreBaseActionController =
      ActionController(name: '_CustomDropdownStoreBase', context: context);

  @override
  dynamic setDropdownValue({required String? value}) {
    final _$actionInfo = _$_CustomDropdownStoreBaseActionController.startAction(
        name: '_CustomDropdownStoreBase.setDropdownValue');
    try {
      return super.setDropdownValue(value: value);
    } finally {
      _$_CustomDropdownStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDropdownList({required List<String> list}) {
    final _$actionInfo = _$_CustomDropdownStoreBaseActionController.startAction(
        name: '_CustomDropdownStoreBase.setDropdownList');
    try {
      return super.setDropdownList(list: list);
    } finally {
      _$_CustomDropdownStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dropdownList: ${dropdownList},
dropdownValue: ${dropdownValue}
    ''';
  }
}

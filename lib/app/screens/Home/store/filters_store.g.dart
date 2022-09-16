// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filters_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FiltersStore on _FiltersStoreBase, Store {
  late final _$switchListAtom =
      Atom(name: '_FiltersStoreBase.switchList', context: context);

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

  late final _$_FiltersStoreBaseActionController =
      ActionController(name: '_FiltersStoreBase', context: context);

  @override
  dynamic setList(List<FilterItem> list) {
    final _$actionInfo = _$_FiltersStoreBaseActionController.startAction(
        name: '_FiltersStoreBase.setList');
    try {
      return super.setList(list);
    } finally {
      _$_FiltersStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
switchList: ${switchList}
    ''';
  }
}

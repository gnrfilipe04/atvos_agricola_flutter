// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchVm on _SearchVmBase, Store {
  late final _$_SearchVmBaseActionController =
      ActionController(name: '_SearchVmBase', context: context);

  @override
  dynamic searchNotes({required String value}) {
    final _$actionInfo = _$_SearchVmBaseActionController.startAction(
        name: '_SearchVmBase.searchNotes');
    try {
      return super.searchNotes(value: value);
    } finally {
      _$_SearchVmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic searchOrders({required String value}) {
    final _$actionInfo = _$_SearchVmBaseActionController.startAction(
        name: '_SearchVmBase.searchOrders');
    try {
      return super.searchOrders(value: value);
    } finally {
      _$_SearchVmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic searchCards(
      {required String value, required List<CardInfo> cardList}) {
    final _$actionInfo = _$_SearchVmBaseActionController.startAction(
        name: '_SearchVmBase.searchCards');
    try {
      return super.searchCards(value: value, cardList: cardList);
    } finally {
      _$_SearchVmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

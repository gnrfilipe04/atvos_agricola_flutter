// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Order on _OrderBase, Store {
  late final _$ordersAtom = Atom(name: '_OrderBase.orders', context: context);

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

  late final _$ordersFilteredAtom =
      Atom(name: '_OrderBase.ordersFiltered', context: context);

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

  late final _$_OrderBaseActionController =
      ActionController(name: '_OrderBase', context: context);

  @override
  dynamic setOrders({required List<CardInfo> newOrders}) {
    final _$actionInfo =
        _$_OrderBaseActionController.startAction(name: '_OrderBase.setOrders');
    try {
      return super.setOrders(newOrders: newOrders);
    } finally {
      _$_OrderBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setOrdersFiltered({required List<CardInfo> newOrders}) {
    final _$actionInfo = _$_OrderBaseActionController.startAction(
        name: '_OrderBase.setOrdersFiltered');
    try {
      return super.setOrdersFiltered(newOrders: newOrders);
    } finally {
      _$_OrderBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setInitialOrders({required List<CardInfo> newOrders}) {
    final _$actionInfo = _$_OrderBaseActionController.startAction(
        name: '_OrderBase.setInitialOrders');
    try {
      return super.setInitialOrders(newOrders: newOrders);
    } finally {
      _$_OrderBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<String> getFiltersActive({required List<FilterItem> filterList}) {
    final _$actionInfo = _$_OrderBaseActionController.startAction(
        name: '_OrderBase.getFiltersActive');
    try {
      return super.getFiltersActive(filterList: filterList);
    } finally {
      _$_OrderBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic filterOrdersByType({required List<FilterItem> filterList}) {
    final _$actionInfo = _$_OrderBaseActionController.startAction(
        name: '_OrderBase.filterOrdersByType');
    try {
      return super.filterOrdersByType(filterList: filterList);
    } finally {
      _$_OrderBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic filterOrders() {
    final _$actionInfo = _$_OrderBaseActionController.startAction(
        name: '_OrderBase.filterOrders');
    try {
      return super.filterOrders();
    } finally {
      _$_OrderBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic searchOrders({required String value}) {
    final _$actionInfo = _$_OrderBaseActionController.startAction(
        name: '_OrderBase.searchOrders');
    try {
      return super.searchOrders(value: value);
    } finally {
      _$_OrderBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic searchCards(
      {required String value, required List<CardInfo> cardList}) {
    final _$actionInfo = _$_OrderBaseActionController.startAction(
        name: '_OrderBase.searchCards');
    try {
      return super.searchCards(value: value, cardList: cardList);
    } finally {
      _$_OrderBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
orders: ${orders},
ordersFiltered: ${ordersFiltered}
    ''';
  }
}

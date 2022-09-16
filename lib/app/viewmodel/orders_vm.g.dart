// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OrdersVm on _OrdersVmBase, Store {
  late final _$ordersAtom =
      Atom(name: '_OrdersVmBase.orders', context: context);

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
      Atom(name: '_OrdersVmBase.ordersFiltered', context: context);

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

  late final _$_OrdersVmBaseActionController =
      ActionController(name: '_OrdersVmBase', context: context);

  @override
  dynamic setOrders({required List<CardInfo> newOrders}) {
    final _$actionInfo = _$_OrdersVmBaseActionController.startAction(
        name: '_OrdersVmBase.setOrders');
    try {
      return super.setOrders(newOrders: newOrders);
    } finally {
      _$_OrdersVmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setOrdersFiltered({required List<CardInfo> newOrders}) {
    final _$actionInfo = _$_OrdersVmBaseActionController.startAction(
        name: '_OrdersVmBase.setOrdersFiltered');
    try {
      return super.setOrdersFiltered(newOrders: newOrders);
    } finally {
      _$_OrdersVmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setInitialOrders({required List<CardInfo> newOrders}) {
    final _$actionInfo = _$_OrdersVmBaseActionController.startAction(
        name: '_OrdersVmBase.setInitialOrders');
    try {
      return super.setInitialOrders(newOrders: newOrders);
    } finally {
      _$_OrdersVmBaseActionController.endAction(_$actionInfo);
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

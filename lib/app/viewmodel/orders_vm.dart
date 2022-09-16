import 'package:atvos_agricola/app/models/card_info.dart';
import 'package:mobx/mobx.dart';
part 'orders_vm.g.dart';

class OrdersVm = _OrdersVmBase with _$OrdersVm;

abstract class _OrdersVmBase with Store {
  @observable
  List<CardInfo> orders = [];

  @observable
  List<CardInfo> ordersFiltered = [];

  @action
  setOrders({required List<CardInfo> newOrders}) {
    orders = newOrders;
  }

  @action
  setOrdersFiltered({required List<CardInfo> newOrders}) {
    ordersFiltered = newOrders;
  }

  @action
  setInitialOrders({required List<CardInfo> newOrders}) {
    orders = newOrders;
    ordersFiltered = newOrders;
  }
}

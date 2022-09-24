import 'package:atvos_agricola/app/models/card_info.dart';
import 'package:atvos_agricola/app/models/filter.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'order.g.dart';

class OrderItem extends CardInfo {
  String dateInit;
  String dateFinal;

  OrderItem(
      {required this.dateInit,
      required this.dateFinal,
      required int id,
      required int cardId,
      required String title,
      required String statusText,
      required bool isCompleted,
      required String date,
      required int centerCostCode,
      required String locationDescription,
      required int locationCode})
      : super(
            id: id,
            cardId: cardId,
            centerCostCode: centerCostCode,
            date: date,
            isCompleted: isCompleted,
            locationCode: locationCode,
            locationDescription: locationDescription,
            statusText: statusText,
            title: title);
}

class Order = _OrderBase with _$Order;

abstract class _OrderBase with Store {
  final Filter filter = GetIt.I.get<Filter>();

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

  @action
  List<String> getFiltersActive({required List<FilterItem> filterList}) {
    List<String> filtersActive = filterList
        .where((element) => element.active)
        .map((item) => item.title)
        .toList();

    return filtersActive;
  }

  @action
  filterOrdersByType({required List<FilterItem> filterList}) {
    List<String> filtersActive = getFiltersActive(filterList: filterList);

    List<CardInfo> ordersFiltered = orders
        .where((element) => filtersActive.contains(element.title))
        .toList();

    return ordersFiltered;
  }

  @action
  filterOrders() {
    List<CardInfo> ordersFiltered = filterOrdersByType(filterList: filter.list);

    setOrdersFiltered(newOrders: ordersFiltered);
  }

  @action
  searchOrders({required String value}) {
    final cardsFiltered = searchCards(value: value, cardList: orders);
    ordersFiltered = cardsFiltered;
  }

  @action
  searchCards({required String value, required List<CardInfo> cardList}) {
    List<CardInfo> cardsFiltered = cardList
        .where((element) =>
            element.centerCostCode.toString().contains(value) ||
            element.locationDescription.toLowerCase().contains(value) ||
            element.statusText.toLowerCase().contains(value) ||
            element.title.toLowerCase().contains(value))
        .toList();

    if (value.isEmpty) {
      return cardList;
    } else {
      return cardsFiltered;
    }
  }
}

import 'package:atvos_agricola/app/models/card_info.dart';
import 'package:atvos_agricola/app/models/filter.dart';
import 'package:atvos_agricola/app/models/note.dart';
import 'package:atvos_agricola/app/models/order.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final Order order = GetIt.I.get<Order>();
  final Note note = GetIt.I.get<Note>();
  final Filter filter = GetIt.I.get<Filter>();

  List<CardInfo> notes = [
    CardInfo(
        id: 1,
        cardId: 1,
        centerCostCode: 124455,
        date: '10/02/22',
        locationCode: 41,
        locationDescription: 'Morro vermelho',
        statusText: 'em andamento',
        isCompleted: false,
        title: 'Insumo'),
    CardInfo(
        id: 2,
        cardId: 2,
        centerCostCode: 124456,
        date: '10/02/22',
        locationCode: 41,
        locationDescription: 'Estância velha',
        statusText: 'pronto',
        isCompleted: true,
        title: 'Fertirrigação'),
    CardInfo(
        id: 3,
        cardId: 3,
        centerCostCode: 124457,
        date: '10/02/22',
        locationCode: 41,
        locationDescription: 'Morro vermelho',
        statusText: 'em andamento',
        isCompleted: false,
        title: 'Plantio'),
    CardInfo(
        id: 4,
        cardId: 4,
        centerCostCode: 124458,
        date: '10/02/22',
        locationCode: 41,
        locationDescription: 'Morro vermelho',
        statusText: 'em andamento',
        isCompleted: false,
        title: 'Produção'),
  ];

  List<CardInfo> orders = [
    CardInfo(
        id: 1,
        cardId: 1,
        centerCostCode: 124455,
        date: '10/02/22',
        locationCode: 41,
        locationDescription: 'Morro vermelho',
        statusText: 'Urgente',
        isCompleted: false,
        title: 'nº 455655'),
    CardInfo(
        id: 2,
        cardId: 2,
        centerCostCode: 124456,
        date: '10/02/22',
        locationCode: 41,
        locationDescription: 'Estância velha',
        statusText: 'Nova',
        isCompleted: true,
        title: 'nº 455655'),
    CardInfo(
        id: 3,
        cardId: 3,
        centerCostCode: 124457,
        date: '10/02/22',
        locationCode: 41,
        locationDescription: 'Morro vermelho',
        statusText: 'Urgente',
        isCompleted: false,
        title: 'nº 455655'),
    CardInfo(
        id: 4,
        cardId: 4,
        centerCostCode: 124458,
        date: '10/02/22',
        locationCode: 41,
        locationDescription: 'Morro vermelho',
        statusText: 'Urgente',
        isCompleted: false,
        title: 'nº 455655'),
  ];

  @observable
  int pageIndex = 0;

  @action
  init() {
    note.setInitialNotes(newNotes: notes);
    order.setInitialOrders(newOrders: orders);
  }

  @action
  void onTabBarTapped(int index) {
    pageIndex = index;
  }

  @action
  onSearch({required String value}) {
    if (pageIndex == 0) {
      note.searchNotes(value: value);
    } else {
      order.searchOrders(value: value);
    }
  }

  @action
  onFilter() {
    pageIndex == 0 ? note.filterNotes() : order.filterOrders();
  }
}

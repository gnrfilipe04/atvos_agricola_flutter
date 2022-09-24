import 'package:atvos_agricola/app/models/card_info.dart';
import 'package:atvos_agricola/app/viewmodel/notes_vm.dart';
import 'package:atvos_agricola/app/viewmodel/orders_vm.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'search_vm.g.dart';

class SearchVm = _SearchVmBase with _$SearchVm;

abstract class _SearchVmBase with Store {
  final NotesVm notesVm = GetIt.I.get<NotesVm>();
  final OrdersVm ordersVm = GetIt.I.get<OrdersVm>();

  @action
  searchNotes({required String value}) {
    final cardsFiltered = searchCards(value: value, cardList: notesVm.notes);
    notesVm.notesFiltered = cardsFiltered;
  }

  @action
  searchOrders({required String value}) {
    final cardsFiltered = searchCards(value: value, cardList: ordersVm.orders);
    ordersVm.ordersFiltered = cardsFiltered;
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

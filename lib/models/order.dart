import 'package:atvos_agricola/models/card_info.dart';

class Order extends CardInfo {
  String dateInit;
  String dateFinal; 

  Order({
    required this.dateInit,
    required this.dateFinal,
    required int id,
    required int cardId,
    required String title,
    required String statusText,
    required bool isCompleted,
    required String date,
    required int centerCostCode,
    required String locationDescription,
    required int locationCode
  }) : super(
        id: id, 
        cardId: cardId, 
        centerCostCode: centerCostCode, 
        date: date, 
        isCompleted: isCompleted, 
        locationCode: locationCode, 
        locationDescription: locationDescription,
        statusText: statusText,
        title: title
      );
}

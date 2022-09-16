class CardInfo {
  int id;
  int cardId;
  String title;
  String statusText;
  bool isCompleted;
  String date;
  int centerCostCode;
  String locationDescription;
  int locationCode;

  CardInfo({
    required this.id,
    required this.cardId,
    required this.title,
    required this.statusText,
    required this.isCompleted,
    required this.date,
    required this.centerCostCode,
    required this.locationDescription,
    required this.locationCode,
  });
}
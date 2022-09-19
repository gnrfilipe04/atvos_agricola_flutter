class Filter {
  bool isSupply;
  bool isFertigation;
  bool isPlanting;
  bool isProduction;

  Filter({
    required this.isSupply,
    required this.isFertigation,
    required this.isPlanting,
    required this.isProduction,
  });

  factory Filter.fromJson(Map<String, dynamic> json) {
    return Filter(
        isSupply: json["isSupply"],
        isFertigation: json["isFertigation"],
        isPlanting: json["isPlanting"],
        isProduction: json["isProduction"]);
  }

  factory Filter.fromMap(Map<String, dynamic> map) => Filter(
        isSupply: map["isSupply"] ?? false,
        isFertigation: map["isFertigation"] ?? false,
        isPlanting: map["isPlanting"] ?? false,
        isProduction: map["isProduction"] ?? false,
      );

  Map<String, dynamic> toJson() {
    return {
      'isSupply': isSupply,
      'isFertigation': isFertigation,
      'isPlanting': isPlanting,
      'isProduction': isProduction
    };
  }

  @override
  String toString() =>
      '{isSupply: $isSupply, isFertigation: $isFertigation, isPlanting: $isPlanting}, isProduction: $isProduction}';
}

class Currency {
  final String effectiveDate;
  final double mid;

  Currency({
    required this.effectiveDate,
    required this.mid,
  });

  factory Currency.fromJson(Map<String, dynamic> json) {
    return Currency(
      effectiveDate: json['effectiveDate'],
      mid: json['mid'],
    );
  }
}

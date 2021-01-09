class Referencie {
  bool success;
  Map currencies;

  Referencie({
    this.success,
    this.currencies,
  });

  Referencie.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    currencies = json['currencies'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['currencies'] = this.currencies;
    return data;
  }
}

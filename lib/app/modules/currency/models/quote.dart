class Quote {
  bool success;
  String terms;
  String privacy;
  int timestamp;
  String source;
  Map quotes;

  Quote({
    this.success,
    this.terms,
    this.privacy,
    this.timestamp,
    this.source,
    this.quotes,
  });

  Quote.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    quotes = json['quotes'];
    source = json['source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['source'] = this.source;
    data['quotes'] = this.quotes;
    return data;
  }
}

class Plans {
  String? table;
  String? name;

  Plans({required this.table, required this.name});

  Plans.fromJson(Map<String, dynamic> json) {
    table = json['Table'];
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Table'] = this.table;
    data['Name'] = this.name;
    return data;
  }
}

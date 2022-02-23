class Package {
  final int userId;
  final String name;
  final String status;

  Package(this.userId, this.name, this.status);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}


class ProductSearchModel{
  int id;
  String name;
  String lastName;
  String color;
  String userName;
  String userSurname;

  ProductSearchModel({
      this.id,
      this.name,
      this.lastName,
      this.color,
      this.userName,
      this.userSurname
  });

  ProductSearchModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lastName = json['last_name'];
    color = json['color'];
    userName = json['user_name'];
    userSurname = json['user_surname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['last_name'] = this.lastName;
    data['color'] = this.color;
    data['user_name'] = this.userName;
    data['user_surname'] = this.userSurname;
    return data;
  }
}
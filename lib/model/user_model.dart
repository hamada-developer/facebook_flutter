class UserModel {
  String? name;
  String? email;
  String? phone;
  String? uId;

  UserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.uId,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    this.name = json['name'];
    this.email = json['email'];
    this.phone = json['phone'];
    this.uId = json['uId'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'email': this.email,
      'phone': this.phone,
      'uId': this.uId,
    };
  }
}

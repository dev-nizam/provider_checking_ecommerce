/// jwt : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNjYyMDExMDA3LCJleHAiOjE2NjQ2MDMwMDd9.mUA1OaO7JsZXnNqjRGLXntWToXemTptG5qzkzJ3M-2s"
/// user : {"id":2,"username":"Flutter","email":"flutter@gmail.com","provider":"local","confirmed":true,"blocked":false,"createdAt":"2022-06-18T05:49:09.953Z","updatedAt":"2022-09-01T05:43:19.585Z"}

class LoginModel {
  LoginModel({
      String? jwt, 
      User? user,}){
    _jwt = jwt;
    _user = user;
}

  LoginModel.fromJson(dynamic json) {
    _jwt = json['jwt'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  String? _jwt;
  User? _user;
LoginModel copyWith({  String? jwt,
  User? user,
}) => LoginModel(  jwt: jwt ?? _jwt,
  user: user ?? _user,
);
  String? get jwt => _jwt;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['jwt'] = _jwt;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}

/// id : 2
/// username : "Flutter"
/// email : "flutter@gmail.com"
/// provider : "local"
/// confirmed : true
/// blocked : false
/// createdAt : "2022-06-18T05:49:09.953Z"
/// updatedAt : "2022-09-01T05:43:19.585Z"

class User {
  User({
      int? id, 
      String? username, 
      String? email, 
      String? provider, 
      bool? confirmed, 
      bool? blocked, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _username = username;
    _email = email;
    _provider = provider;
    _confirmed = confirmed;
    _blocked = blocked;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _username = json['username'];
    _email = json['email'];
    _provider = json['provider'];
    _confirmed = json['confirmed'];
    _blocked = json['blocked'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  int? _id;
  String? _username;
  String? _email;
  String? _provider;
  bool? _confirmed;
  bool? _blocked;
  String? _createdAt;
  String? _updatedAt;
User copyWith({  int? id,
  String? username,
  String? email,
  String? provider,
  bool? confirmed,
  bool? blocked,
  String? createdAt,
  String? updatedAt,
}) => User(  id: id ?? _id,
  username: username ?? _username,
  email: email ?? _email,
  provider: provider ?? _provider,
  confirmed: confirmed ?? _confirmed,
  blocked: blocked ?? _blocked,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  String? get username => _username;
  String? get email => _email;
  String? get provider => _provider;
  bool? get confirmed => _confirmed;
  bool? get blocked => _blocked;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['username'] = _username;
    map['email'] = _email;
    map['provider'] = _provider;
    map['confirmed'] = _confirmed;
    map['blocked'] = _blocked;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}
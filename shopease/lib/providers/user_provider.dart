import 'package:flutter/foundation.dart';

class UserProvider with ChangeNotifier {
  String? _userId;
  String? _email;
  String? _name;
  String? _profileImage;

  String? get userId => _userId;
  String? get email => _email;
  String? get name => _name;
  String? get profileImage => _profileImage;

  void setUser(String userId, String email, {String? name, String? profileImage}) {
    _userId = userId;
    _email = email;
    _name = name;
    _profileImage = profileImage;
    notifyListeners();
  }

  void clearUser() {
    _userId = null;
    _email = null;
    _name = null;
    _profileImage = null;
    notifyListeners();
  }
}
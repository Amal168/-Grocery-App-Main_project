import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Emailpassword extends ChangeNotifier {
  final List<emailpassclass> _emailpass = [];

  List<emailpassclass> get emailpassList => _emailpass;
  void addemailpass(emailpassclass email, password) {
    _emailpass.add(email);
    _emailpass.add(password);
    notifyListeners();
  }

  void updateemailpass(String id, String newemail, String newpassword) {
    for (var upemailpass in _emailpass) {
      if (upemailpass.id == id) {
        upemailpass.email = newemail;
        upemailpass.password = newpassword;
      }
    }
    notifyListeners();
  }

  void deleteemailpass(String id) {
    _emailpass.removeWhere((dlemail) => dlemail.id == id);
    _emailpass.removeWhere((dlpass) => dlpass.id == id);
    notifyListeners();
  }
}

class emailpassclass {
  String id;
  String email;
  String password;
  emailpassclass(
      {required this.email, required this.password, required this.id});
}

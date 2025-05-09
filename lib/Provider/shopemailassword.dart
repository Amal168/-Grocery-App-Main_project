import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shopemailassword extends ChangeNotifier {
  final List<shopemailpassclass> _shopemailpass = [];

  List<shopemailpassclass> get emailpassList => _shopemailpass;
  void addemailpass(shopemailpassclass email, password) {
    _shopemailpass.add(email);
    _shopemailpass.add(password);
    notifyListeners();
  }

  void updateemailpass(String id, String newemail, String newpassword) {
    for (var upemailpass in _shopemailpass) {
      if (upemailpass.id == id) {
        upemailpass.email = newemail;
        upemailpass.password = newpassword;
      }
    }
    notifyListeners();
  }

  void deleteemailpass(String id) {
    _shopemailpass.removeWhere((dlemail) => dlemail.id == id);
    _shopemailpass.removeWhere((dlpass) => dlpass.id == id);
    notifyListeners();
  }
}

class shopemailpassclass {
  String id;
  String email;
  String password;
  shopemailpassclass(
      {required this.email, required this.password, required this.id});
}

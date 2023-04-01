// ignore_for_file: non_constant_identifier_names
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/material.dart';

class PermissionData extends ChangeNotifier {
  bool _contact_permission = false;

  bool get isContactPermissionGranted => _contact_permission;

  void handleChangeContactPermission({status}) {
    _contact_permission = status;
    notifyListeners();
  }
}

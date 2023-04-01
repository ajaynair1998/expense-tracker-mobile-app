// ignore_for_file: non_constant_identifier_names
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/material.dart';

class StorageData extends ChangeNotifier {
  final FlutterSecureStorage _storage = new FlutterSecureStorage();
  FlutterSecureStorage get storage => _storage;
}

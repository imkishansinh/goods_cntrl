import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureSession extends AppSession {
  SecureSession() {
    _storage = FlutterSecureStorage(
      aOptions: const AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );
  }

  late FlutterSecureStorage _storage;

  @override
  Future<bool> get isUserRegistered async {
    final value = await _storage.read(key: 'isUserRegistered');
    return value == 'true';
  }

  @override
  Future setUserRegistered() {
    return _storage.write(key: 'isUserRegistered', value: 'true');
  }

  @override
  Future clearAllTheSession() {
    return _storage.deleteAll();
  }
}

abstract class AppSession {
  Future setUserRegistered();

  Future<bool> get isUserRegistered;

  Future clearAllTheSession();
}

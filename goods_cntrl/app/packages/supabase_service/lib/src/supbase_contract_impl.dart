import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_service/src/domain/supabase_contract.dart';

final _supabase = Supabase.instance.client;

@Singleton(as: SupabaseContract)
class SupabaseContractImpl implements SupabaseContract {
  SupabaseContractImpl();

  bool _isInit = false;
  bool get isInit => _isInit;

  @override
  Future init(String supabaseUrl, String supabaseAnonKey) {
    if (!_isInit) {
      _isInit = true;
      return Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);
    }

    return Future.value();
  }

  @override
  Future<void> signInWithEmailOTP(String email) async {
    return _supabase.auth.signInWithOtp(
      email: email,
      emailRedirectTo: kIsWeb ? null : 'com.goodscntrl.app://login-callback/',
    );
  }

  @override
  Future signout() async {
    return _supabase.auth.signOut();
  }

  @override
  bool get isAuthenticated => _supabase.auth.currentSession != null;

  @override
  User? get currentUser => _supabase.auth.currentUser;

  @override
  Stream<AuthState> get authStream => _supabase.auth.onAuthStateChange;

  @override
  Future registerNewUser(String email) {
    if (_supabase.auth.currentUser == null) {
      throw Exception('User not authenticated');
    }
    return Future.value(
      _supabase
          .from(SupabaseMapping.getTableName(SupabaseTables.userTable))
          .insert({
            SupabaseMapping.getColumnKeyName(
                  SupabaseTables.userTable,
                  SupabaseColumns.email,
                ):
                email,
          }),
    );
  }

  @override
  Future<Map<String, dynamic>> fetchProfile() async {
    final data =
        await _supabase
            .from(SupabaseMapping.getTableName(SupabaseTables.userTable))
            .select()
            .eq(
              SupabaseMapping.getColumnKeyName(
                SupabaseTables.userTable,
                SupabaseColumns.email,
              ),
              currentUser!.email!,
            )
            .single();
    return Future.value(data);
  }

  @override
  Future<Map<String, dynamic>> updateProfile(Map<String, dynamic> profile) {
    return _supabase
        .from(SupabaseMapping.getTableName(SupabaseTables.userTable))
        .update({
          SupabaseMapping.getColumnKeyName(
                SupabaseTables.userTable,
                SupabaseColumns.firstName,
              ):
              profile['first_name'],
          SupabaseMapping.getColumnKeyName(
                SupabaseTables.userTable,
                SupabaseColumns.lastName,
              ):
              profile['last_name'],
          SupabaseMapping.getColumnKeyName(
                SupabaseTables.userTable,
                SupabaseColumns.mobile,
              ):
              profile['mobile'],
        })
        .eq(
          SupabaseMapping.getColumnKeyName(
            SupabaseTables.userTable,
            SupabaseColumns.email,
          ),
          currentUser!.email!,
        )
        .select()
        .single()
        .then((value) => value);
  }

  @override
  Future<bool> isRegisterUser() async {
    if (currentUser?.email == null) {
      return false;
    }

    try {
      final data =
          await _supabase
              .from(SupabaseMapping.getTableName(SupabaseTables.userTable))
              .select(
                SupabaseMapping.getColumnKeyName(
                  SupabaseTables.userTable,
                  SupabaseColumns.email,
                ),
              )
              .eq(
                SupabaseMapping.getColumnKeyName(
                  SupabaseTables.userTable,
                  SupabaseColumns.email,
                ),
                currentUser!.email!,
              )
              .maybeSingle();

      return data != null;
    } catch (e) {
      return false;
    }
  }
}

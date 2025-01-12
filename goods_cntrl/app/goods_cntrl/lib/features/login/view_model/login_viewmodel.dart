import 'package:supabase_service/supabase_service.dart';

import '../../../utilities/command.dart';
import '../../../utilities/result.dart';

class LoginViewmodel {
  LoginViewmodel({
    required this.supaService,
  }) {
    sendOTPToEmail = Command1(_signInViaEmailOTP);
  }
  final SupabaseClass supaService;

  late final Command1<bool, String> sendOTPToEmail;

  Future<Result<bool>> _signInViaEmailOTP(String email) async {
    supaService.signInWithEmailOTP(email);
    return Future.value(Result.ok(true));
  }
}

import 'package:account_picker/account_picker.dart';
import 'package:goods_cntrl/utilities/command.dart';
import 'package:goods_cntrl/utilities/result.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_service/supabase_service.dart';

@injectable
class LoginViewmodel {
  LoginViewmodel({
    required this.supaService,
  }) {
    sendOTPToEmail = Command1(_signInViaEmailOTP);
    emailHintPrompt = Command0(_emailHintPrompt);
  }
  final SupabaseContract supaService;

  late final Command1<bool, String> sendOTPToEmail;

  late final Command0 emailHintPrompt;

  Future<Result<bool>> _signInViaEmailOTP(String email) async {
    supaService.signInWithEmailOTP(email);
    return Future.value(Result.ok(true));
  }

  Future<Result<String>> _emailHintPrompt() async {
    final EmailResult? emailResult = await AccountPicker.emailHint();
    if (emailResult == null) {
      return Result.error(Exception('Email not found'));
    }
    return Result.ok(emailResult.email);
  }
}

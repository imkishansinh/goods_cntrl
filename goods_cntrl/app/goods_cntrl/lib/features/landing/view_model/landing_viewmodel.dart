import 'dart:async';

import 'package:goods_cntrl/router/routes.dart';
import 'package:goods_cntrl/utilities/command.dart';
import 'package:goods_cntrl/utilities/result.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_service/supabase_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

@injectable
class LandingViewmodel {
  LandingViewmodel({required this.supaService}) {
    runLandingLogic = Command0(_performLandingLogic);
  }

  late final Command0 runLandingLogic;
  final SupabaseContract supaService;

  Future<Result<AppRoute>> _performLandingLogic() async {
    await dotenv.load(fileName: '.env');
    await supaService.init(
      dotenv.env['supabase_url'] as String,
      dotenv.env['supabase_anon_key'] as String,
    );
    return supaService.isAuthenticated
        ? Future.value(Result.ok(Routes.home))
        : Future.value(Result.ok(Routes.login));
  }
}

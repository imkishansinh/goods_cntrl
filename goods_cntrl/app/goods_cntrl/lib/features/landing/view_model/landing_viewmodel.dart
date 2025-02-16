import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:goods_cntrl/router/routes.dart';
import 'package:goods_cntrl/utilities/command.dart';
import 'package:goods_cntrl/utilities/result.dart';
import 'package:supabase_service/supabase_service.dart';

class LandingViewmodel {
  LandingViewmodel({
    required this.supaService,
  }) {
    runLandingLogic = Command0(_performLandingLogic);
  }

  late final Command0 runLandingLogic;
  final SupabaseContract supaService;

  Future<Result<AppRoute>> _performLandingLogic() async {
    if (supaService.isAuthenticated) {
      return Future.value(Result.ok(Routes.home));
    } else {
      return Future.value(Result.ok(Routes.login));
    }
  }

  void userLandedFirst() {
    supaService
        .init(
      dotenv.env['supabase_url'] ?? '',
      dotenv.env['supabase_anon_key'] ?? '',
    )
        .then((onVal) {
      // Run landing code
      runLandingLogic.execute();
    });
  }
}

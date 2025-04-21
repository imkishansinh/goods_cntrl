import 'dart:async';

import 'package:goods_cntrl/router/routes.dart';
import 'package:goods_cntrl/utilities/command.dart';
import 'package:goods_cntrl/utilities/result.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_service/supabase_service.dart';

@injectable
class LandingViewmodel {
  LandingViewmodel({
    required this.supaService,
  }) {
    runLandingLogic = Command0(_performLandingLogic);
  }

  late final Command0 runLandingLogic;
  final SupabaseContract supaService;

  Future<Result<AppRoute>> _performLandingLogic() async {
    await supaService.init(
      'https://nrtdzejvrccegqqwthng.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5ydGR6ZWp2cmNjZWdxcXd0aG5nIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzUwNDk4ODIsImV4cCI6MjA1MDYyNTg4Mn0.LmkAzHZLEwg1d44n0PZ_Fzkn-3RR8n8nI_yqOIFlJiM',
    );
    return supaService.isAuthenticated
        ? Future.value(Result.ok(Routes.home))
        : Future.value(Result.ok(Routes.login));
  }
}

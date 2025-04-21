// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_service/supabase_service.dart' as _i586;

import '../../features/landing/view_model/landing_viewmodel.dart' as _i630;
import '../../features/login/view_model/login_viewmodel.dart' as _i258;
import '../../features/profile/view_model/profile_viewmodel.dart' as _i786;
import '../../utilities/secure_storage/secure_session.dart' as _i511;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.factory<_i511.SecureSession>(() => _i511.SecureSession());
  gh.factory<_i630.LandingViewmodel>(
    () => _i630.LandingViewmodel(supaService: gh<_i586.SupabaseContract>()),
  );
  gh.factory<_i786.ProfileViewmodel>(
    () => _i786.ProfileViewmodel(supaService: gh<_i586.SupabaseContract>()),
  );
  gh.factory<_i258.LoginViewmodel>(
    () => _i258.LoginViewmodel(supaService: gh<_i586.SupabaseContract>()),
  );
  return getIt;
}

import 'package:supabase_service/src/di/di.config.dart';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(
  asExtension: false,
  preferRelativeImports: true,
)
void configureDependencies(GetIt instance) => init(instance);

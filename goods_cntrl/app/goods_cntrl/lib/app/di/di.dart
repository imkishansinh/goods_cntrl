import 'package:goods_cntrl/app/di/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_service/supabase_service.dart' as supbase_service;

final diInstance = GetIt.instance;

@InjectableInit(
  asExtension: false,
  preferRelativeImports: true,
)
void configureDependencies() {
  supbase_service.configureDependencies(diInstance);
  init(diInstance);
}

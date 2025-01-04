import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_service/supabase_service.dart';

final serviceLocator = GetIt.instance;

Future configureInjections() async {
  GetIt.I.registerSingleton(
    SupabaseClass(
      dotenv.env['supbase_redirect_url'] ?? '',
    ),
  );
}

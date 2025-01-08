import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:goods_cntrl/features/landing/view_model/landing_viewmodel.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:supabase_service/supabase_service.dart';

import '../features/login/view_model/login_viewmodel.dart';

var logger = Logger('GoodsCntrl');

List<SingleChildWidget> get thirdPartyServiceProviders => [
      Provider(
        create: (_) => SupabaseClassImpl(
          dotenv.env['supbase_redirect_url'] ?? '',
        ),
      ),
    ];

List<SingleChildWidget> get allTheProviders => [
      // ...thirdPartyServiceProviders,
      Provider.value(
        value: SupabaseClassImpl(
          dotenv.env['supbase_redirect_url'] ?? '',
        ) as SupabaseClass,
      ),
      Provider(
        create: (context) => LandingViewmodel(
          supaService: context.read<SupabaseClass>(),
        ),
      ),
      Provider(
        create: (context) => LoginViewmodel(
          supaService: context.read<SupabaseClass>(),
        ),
      ),
    ];

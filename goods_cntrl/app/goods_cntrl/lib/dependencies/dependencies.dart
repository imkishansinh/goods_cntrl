import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:goods_cntrl/features/landing/view_model/landing_viewmodel.dart';
import 'package:goods_cntrl/features/login/view_model/login_viewmodel.dart';
import 'package:goods_cntrl/features/profile/view_model/profile_viewmodel.dart';
import 'package:goods_cntrl/utilities/secure_storage/secure_session.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:supabase_service/supabase_service.dart';

var logger = Logger('Logger');

List<SingleChildWidget> get thirdPartyServiceProviders => [
      Provider(
        create: (_) => SupabaseContractImpl(
          dotenv.env['supbase_redirect_url'] ?? '',
        ),
      ),
    ];

List<SingleChildWidget> get allTheProviders => [
      // ...thirdPartyServiceProviders,
      Provider.value(
        value: SupabaseContractImpl(
          dotenv.env['supbase_redirect_url'] ?? '',
        ) as SupabaseContract,
      ),
      Provider(
        create: (context) => LandingViewmodel(
          supaService: context.read<SupabaseContract>(),
        ),
      ),
      Provider(
        create: (context) => LoginViewmodel(
          supaService: context.read<SupabaseContract>(),
        ),
      ),
      Provider(
        create: (context) => ProfileViewmodel(
          supaService: context.read<SupabaseContract>(),
        ),
      ),
      Provider(
        create: (_) => SecureSession(),
      ),
    ];

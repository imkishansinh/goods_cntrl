import 'package:goods_cntrl/domain/profile/model/profile_model.dart';
import 'package:goods_cntrl/utilities/command.dart';
import 'package:goods_cntrl/utilities/result.dart';
import 'package:supabase_service/supabase_service.dart';

class ProfileViewmodel {
  ProfileViewmodel({
    required this.supaService,
  }) {
    fetchProfile = Command0(_fetchProfile);
  }

  final SupabaseClass supaService;
  late final Command0 fetchProfile;

  Future<Result<ProfileModel>> _fetchProfile() async {
    final result = await supaService.fetchProfile();

    return Result.ok(
      ProfileModel.fromJson(result),
    );
  }
}

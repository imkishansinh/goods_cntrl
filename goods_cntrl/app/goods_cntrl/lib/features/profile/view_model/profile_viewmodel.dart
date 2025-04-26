import 'package:goods_cntrl/domain/model/profile_model.dart';
import 'package:goods_cntrl/utilities/command.dart';
import 'package:goods_cntrl/utilities/result.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_service/supabase_service.dart';

@injectable
class ProfileViewmodel {
  ProfileViewmodel({required this.supaService}) {
    fetchProfile = Command0(_fetchProfile);
    updateProfile = Command1(_updateProfile);
  }

  final SupabaseContract supaService;
  late final Command0 fetchProfile;
  late final Command1<ProfileModel, ProfileModel> updateProfile;

  Future<Result<ProfileModel>> _fetchProfile() async {
    final result = await supaService.fetchProfile();

    return Result.ok(ProfileModel.fromJson(result));
  }

  Future<Result<ProfileModel>> _updateProfile(ProfileModel profile) async {
    final result = await supaService.updateProfile(profile.toJson());

    return Result.ok(ProfileModel.fromJson(result));
  }
}

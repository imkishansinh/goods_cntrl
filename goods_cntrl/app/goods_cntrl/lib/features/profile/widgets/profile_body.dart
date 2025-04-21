import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_cntrl/core/dimens.dart';
import 'package:goods_cntrl/utilities/global_var.dart';
import 'package:goods_cntrl/domain/profile/model/profile_model.dart';
import 'package:goods_cntrl/features/profile/view_model/profile_viewmodel.dart';
import 'package:goods_cntrl/utilities/result.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  late ProfileViewmodel profileViewmodel;

  @override
  void initState() {
    super.initState();
    profileViewmodel = locator.get<ProfileViewmodel>();
    profileViewmodel.fetchProfile.execute();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return ListenableBuilder(
      listenable: Listenable.merge([
        profileViewmodel.fetchProfile,
        profileViewmodel.updateProfile,
      ]),
      builder: (context, _) {
        if (profileViewmodel.updateProfile.running) {
          return const Center(child: CircularProgressIndicator());
        }

        if (profileViewmodel.updateProfile.error) {
          return const Center(child: Text('Something went wrong'));
        }

        if (profileViewmodel.updateProfile.completed) {
          context.pop();
          return const SizedBox.shrink();
        }

        if (profileViewmodel.fetchProfile.running) {
          return const Center(child: CircularProgressIndicator());
        }
        if (profileViewmodel.fetchProfile.error) {
          return const Center(child: Text('Something went wrong'));
        }

        if (profileViewmodel.fetchProfile is Error) {
          return const Center(child: Text('Something went wrong'));
        }

        final profileData = (profileViewmodel.fetchProfile.result as Ok).value;

        _emailController.text = profileData.email;
        _firstNameController.text = profileData.firstName ?? '';
        _lastNameController.text = profileData.lastName ?? '';
        _phoneNumberController.text = profileData.mobile ?? '';

        return Form(
          child: Padding(
            padding: const EdgeInsets.all(SizeDimens.small),
            child: Column(
              spacing: SizeDimens.small,
              children: [
                TextFormField(
                  controller: _firstNameController,
                  decoration: InputDecoration(
                    hintText: l10n.firstName,
                    border: const OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  controller: _lastNameController,
                  decoration: InputDecoration(
                    hintText: l10n.lastName,
                    border: const OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                    hintText: l10n.email,
                    border: const OutlineInputBorder(),
                  ),
                  controller: _emailController,
                ),
                TextFormField(
                  controller: _phoneNumberController,
                  decoration: InputDecoration(
                    hintText: l10n.phoneNumber,
                    border: const OutlineInputBorder(),
                  ),
                ),
                Row(
                  spacing: SizeDimens.small,
                  children: [
                    OutlinedButton(onPressed: () {}, child: Text(l10n.cancel)),
                    FilledButton(
                      onPressed: () {
                        profileViewmodel.updateProfile.execute(
                          ProfileModel.updateProfile(
                            firstName: _firstNameController.text,
                            lastName: _lastNameController.text,
                            email: _emailController.text,
                            mobile: _phoneNumberController.text,
                          ),
                        );
                      },
                      child: Text(l10n.save),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

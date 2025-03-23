import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_cntrl/core/dimens.dart';
import 'package:goods_cntrl/domain/profile/model/profile_model.dart';
import 'package:goods_cntrl/features/profile/view_model/profile_viewmodel.dart';
import 'package:goods_cntrl/utilities/result.dart';
import 'package:provider/provider.dart';

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

  @override
  void initState() {
    super.initState();
    context.read<ProfileViewmodel>().fetchProfile.execute();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Listenable.merge([
        context.read<ProfileViewmodel>().fetchProfile,
        context.read<ProfileViewmodel>().updateProfile,
      ]),
      builder: (context, _) {
        if (context.read<ProfileViewmodel>().updateProfile.running) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (context.read<ProfileViewmodel>().updateProfile.error) {
          return Center(
            child: Text(
              'Something went wrong',
            ),
          );
        }

        if (context.read<ProfileViewmodel>().updateProfile.completed) {
          context.pop();
          return const SizedBox.shrink();
        }

        if (context.read<ProfileViewmodel>().fetchProfile.running) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (context.read<ProfileViewmodel>().fetchProfile.error) {
          return Center(
            child: Text(
              'Something went wrong',
            ),
          );
        }

        if (context.read<ProfileViewmodel>().fetchProfile is Error) {
          return Center(
            child: Text(
              'Something went wrong',
            ),
          );
        }

        final profileData =
            (context.read<ProfileViewmodel>().fetchProfile.result as Ok).value;

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
                    hintText: 'First Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  controller: _lastNameController,
                  decoration: InputDecoration(
                    hintText: 'Last Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  controller: _emailController,
                ),
                TextFormField(
                  controller: _phoneNumberController,
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    border: OutlineInputBorder(),
                  ),
                ),
                Row(
                  spacing: SizeDimens.small,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text('Cancel'),
                    ),
                    FilledButton(
                      onPressed: () {
                        context.read<ProfileViewmodel>().updateProfile.execute(
                              ProfileModel.updateProfile(
                                firstName: _firstNameController.text,
                                lastName: _lastNameController.text,
                                email: _emailController.text,
                                mobile: _phoneNumberController.text,
                              ),
                            );
                      },
                      child: Text('Save'),
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

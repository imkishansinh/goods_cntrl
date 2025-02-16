import 'package:flutter/material.dart';
import 'package:goods_cntrl/core/dimens.dart';
import 'package:goods_cntrl/features/profile/view_model/profile_viewmodel.dart';
import 'package:goods_cntrl/utilities/result.dart';
import 'package:provider/provider.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileViewmodel>().fetchProfile.execute();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: context.read<ProfileViewmodel>().fetchProfile,
      builder: (context, _) {
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

        return Form(
          child: Padding(
            padding: const EdgeInsets.all(SizeDimens.small),
            child: Column(
              spacing: SizeDimens.small,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'First Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
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
                  controller: TextEditingController(
                    text: profileData.email,
                  ),
                ),
                TextFormField(
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
                      onPressed: () {},
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

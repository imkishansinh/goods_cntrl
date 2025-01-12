import 'package:flutter/material.dart';
import 'view_model/profile_viewmodel.dart';
import 'widgets/profile_body.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.viewModel,
  });

  final ProfileViewmodel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
      ),
      body: ProfileBody(),
    );
  }
}

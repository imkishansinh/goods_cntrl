import 'package:flutter/material.dart';
import 'package:goods_cntrl/core/dimens.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
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
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
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
  }
}

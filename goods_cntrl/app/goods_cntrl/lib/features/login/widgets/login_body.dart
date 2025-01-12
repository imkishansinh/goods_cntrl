import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:goods_cntrl/core/dimens.dart';
import 'package:goods_cntrl/features/login/view_model/login_viewmodel.dart';
import 'package:goods_cntrl/utilities/result.dart';
import 'package:provider/provider.dart';

import '../../../core/widgets/common_widgets.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final TextEditingController _emailCntrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    context
        .read<LoginViewmodel>()
        .emailHintPrompt
        .addListener(_emailPromotListener);
  }

  void _emailPromotListener() {
    if (context.read<LoginViewmodel>().emailHintPrompt.completed &&
        !context.read<LoginViewmodel>().emailHintPrompt.error) {
      _emailCntrl.text =
          (context.read<LoginViewmodel>().emailHintPrompt.result as Ok).value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: SizeDimens.small,
              children: [
                AppIcon(
                  iconSize: SizeDimens.xxLarge,
                ),
                TextFormField(
                  controller: _emailCntrl,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    return null;
                  },
                ),
                if (!kIsWeb)
                  GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Choose email from the list',
                          textAlign: TextAlign.end,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                                decoration: TextDecoration.underline,
                              ),
                        ),
                      ],
                    ),
                    onTap: () {
                      context.read<LoginViewmodel>().emailHintPrompt.execute();
                    },
                  ),
                Row(
                  spacing: SizeDimens.small,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        _emailCntrl.clear();
                        FocusScope.of(context).requestFocus(FocusNode());
                      },
                      child: Text('Cancel'),
                    ),
                    ListenableBuilder(
                      listenable: context.read<LoginViewmodel>().sendOTPToEmail,
                      builder: (context, child) {
                        final isOTPSendingRunning = context
                            .read<LoginViewmodel>()
                            .sendOTPToEmail
                            .running;
                        return FilledButton(
                          onPressed: isOTPSendingRunning
                              ? null
                              : () async {
                                  context
                                      .read<LoginViewmodel>()
                                      .sendOTPToEmail
                                      .execute(_emailCntrl.text);
                                },
                          child: Text('Login'),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (!kIsWeb)
            Align(
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.qr_code_scanner_rounded,
                    size: SizeDimens.large,
                  ),
                  Text(
                    'Scan business QR code',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

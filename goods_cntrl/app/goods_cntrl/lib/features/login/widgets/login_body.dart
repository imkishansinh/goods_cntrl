import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:goods_cntrl/core/dimens.dart';
import 'package:goods_cntrl/core/widgets/common_widgets.dart';
import 'package:goods_cntrl/dependencies/dependencies.dart';
import 'package:goods_cntrl/features/login/view_model/login_viewmodel.dart';
import 'package:goods_cntrl/utilities/result.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final TextEditingController _emailCntrl = TextEditingController();
  late LoginViewmodel loginViewmodel;

  @override
  void initState() {
    super.initState();
    loginViewmodel = locator.get<LoginViewmodel>();
    loginViewmodel.emailHintPrompt.addListener(_emailPromotListener);
    loginViewmodel.sendOTPToEmail.addListener(_sendOTPToEmailListener);
  }

  void _emailPromotListener() {
    if (loginViewmodel.emailHintPrompt.completed &&
        !loginViewmodel.emailHintPrompt.error) {
      _emailCntrl.text = (loginViewmodel.emailHintPrompt.result as Ok).value;
    }
  }

  void _sendOTPToEmailListener() {
    final l10n = AppLocalizations.of(context)!;
    if (loginViewmodel.sendOTPToEmail.completed &&
        !loginViewmodel.sendOTPToEmail.error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.emailIsSentMsg),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

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
                Text(
                  l10n.welcomeMessage,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: SizeDimens.medium),
                TextFormField(
                  controller: _emailCntrl,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: l10n.email,
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
                          l10n.chooseEmailFromList,
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
                      loginViewmodel.emailHintPrompt.execute();
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
                      child: Text(l10n.cancel),
                    ),
                    ListenableBuilder(
                      listenable: loginViewmodel.sendOTPToEmail,
                      builder: (context, child) {
                        final isOTPSendingRunning =
                            loginViewmodel.sendOTPToEmail.running;
                        return FilledButton(
                          onPressed: isOTPSendingRunning
                              ? null
                              : () async {
                                  if (_emailCntrl.text.isEmpty) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          l10n.pleaseEnterEmailAddressOrChooseFromList,
                                        ),
                                      ),
                                    );
                                    return;
                                  }
                                  loginViewmodel.sendOTPToEmail
                                      .execute(_emailCntrl.text);
                                },
                          child: Text(l10n.login),
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
                    l10n.scanBusinessQRCode,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ListenableBuilder(
            listenable: loginViewmodel.emailHintPrompt,
            builder: (context, child) {
              final isEmailHintPromptRunning =
                  loginViewmodel.sendOTPToEmail.running;
              return isEmailHintPromptRunning
                  ? Container(
                      color: Colors.black.withAlpha(25),
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : const SizedBox();
            },
          ),
        ],
      ),
    );
  }
}

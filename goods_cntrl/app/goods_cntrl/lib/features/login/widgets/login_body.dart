import 'package:flutter/material.dart';
import 'package:goods_cntrl/core/dimens.dart';
import 'package:goods_cntrl/features/login/view_model/login_viewmodel.dart';
import 'package:provider/provider.dart';

class LoginBody extends StatelessWidget {
  LoginBody({super.key});

  final TextEditingController _emailCntrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: SizeDimens.small,
        children: [
          Icon(
            Icons.shopping_cart_outlined,
            size: SizeDimens.xxLarge,
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
                  final isOTPSendingRunning =
                      context.read<LoginViewmodel>().sendOTPToEmail.running;
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
    );
  }
}

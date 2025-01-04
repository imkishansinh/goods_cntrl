import 'package:flutter/material.dart';
import 'package:goods_cntrl/core/dimens.dart';
import 'package:goods_cntrl/features/login/cubit/cubit.dart';

class LoginBody extends StatelessWidget {
  LoginBody({super.key});

  final TextEditingController _emailCntrl = TextEditingController();
  final TextEditingController _passCntrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
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
                      _passCntrl.clear();
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child: Text('Cancel'),
                  ),
                  FilledButton(
                    onPressed: () async {
                      context.read<LoginCubit>().signUpWithEmailPw(
                            _emailCntrl.text.trim(),
                          );
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

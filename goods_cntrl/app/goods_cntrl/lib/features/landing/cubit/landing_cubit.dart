import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_cntrl/router/routes.dart';
import 'package:supabase_service/supabase_service.dart';

import '../../../injections/app_injections.dart';
part 'landing_state.dart';

class LandingCubit extends Cubit<LandingState> {
  LandingCubit() : super(const LandingInitial());

  FutureOr<void> landingOperation(BuildContext context) async {
    await Future.delayed(Duration(milliseconds: 700));
    if (serviceLocator.get<SupabaseClass>().isAuthenticated) {
      context.pushReplacementNamed(Routes.home.name.toString());
    } else {
      context.pushReplacementNamed(Routes.login.name.toString());
    }
  }
}

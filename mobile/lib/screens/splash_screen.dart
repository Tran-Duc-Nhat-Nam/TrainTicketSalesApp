import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:local_auth/local_auth.dart';
import 'package:mobile/bloc/app/auth_cubit.dart';
import 'package:mobile/core/auth/auth_helper.dart';
import 'package:mobile/widgets/app_loading_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (context) => AuthCubit()..init(),
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            loaded: (canBiometrics) async {
              if (canBiometrics) {
                LocalAuthentication()
                    .authenticate(
                        localizedReason: "Authenticate yourself",
                        options: AuthenticationOptions(biometricOnly: true))
                    .then(
                  (value) async {
                    if (!value) {
                      exit(0);
                    } else if ((await AuthHelper.getAuth()) == true &&
                        context.mounted) {
                      context.go("/");
                    } else if (context.mounted) {
                      context.go("/login");
                    }
                  },
                );
              } else if ((await AuthHelper.getAuth()) == true &&
                  context.mounted) {
                context.go("/");
              } else if (context.mounted) {
                context.go("/login");
              }
            },
          );
        },
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) => state.when(
            initial: () => Scaffold(
              body: Center(
                child: Column(
                  spacing: 60,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 100,
                      height: 100,
                    ),
                    AppLoadingWidget(),
                  ],
                ),
              ),
            ),
            loaded: (canBiometrics) => Scaffold(
              body: AppLoadingWidget(),
            ),
            authenticated: () => const SizedBox(),
          ),
        ),
      ),
    );
  }
}

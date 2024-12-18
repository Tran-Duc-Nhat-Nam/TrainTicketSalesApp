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
          state.when(
            initial: () {},
            loaded: (canBiometrics) async {
              if (canBiometrics) {
                LocalAuthentication()
                    .authenticate(
                        localizedReason: "Test",
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
            authenticated: () {},
          );
        },
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) => state.when(
            initial: () => Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 150,
                      height: 150,
                    ),
                    SizedBox(height: 20),
                    AppLoadingWidget(),
                  ],
                ),
              ),
            ),
            loaded: (canBiometrics) => Scaffold(
              body: AppLoadingWidget(),
            ),
            authenticated: () => Placeholder(),
          ),
        ),
      ),
    );
  }
}

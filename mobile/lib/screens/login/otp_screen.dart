import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/bloc/signup/otp/otp_cubit.dart';
import 'package:mobile/widgets/app_public_screen.dart';
import 'package:pinput/pinput.dart';

import '../../widgets/toast/toast.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OtpCubit>(
      create: (_) => OtpCubit()..loadData(context),
      child: BlocListener<OtpCubit, OtpState>(
        listener: (context, state) {
          state.whenOrNull(
            submitSucceed: (username) =>
                context.go("/createPassword", extra: username),
            submitFailed: (message) {
              AppToast.showFailureToast(
                context,
                text: context.tr("error"),
                description: message,
              );

            },
          );
        },
        child: BlocBuilder<OtpCubit, OtpState>(
          builder: (context, state) => AppPublicScreen(
            formChildren: [
              Pinput(
                length: 6,
                defaultPinTheme: PinTheme(
                  width: 56,
                  height: 56,
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                autofocus: true,
                onCompleted: (pin) => context.read<OtpCubit>().submit(pin),
              )
            ],
            onPressed: null,
            isNoButton: true,
            title: context.tr("title.otp"),
            subTitle: context.tr("subTitle.otp"),
          ),
        ),
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mobile/bloc/signup/otp/otp_cubit.dart';
import 'package:mobile/widgets/app_public_screen.dart';
import 'package:mobile/widgets/toast/dialog.dart';
import 'package:pinput/pinput.dart';

import '../../widgets/toast/toast.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OtpCubit>(
      create: (_) => OtpCubit()..loadData(context),
      child: BlocListener<OtpCubit, OtpState>(
        listener: (context, state) {
          state.whenOrNull(
            submitSucceed: (username) =>
                context.go("/addInfo", extra: username),
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
              state.maybeWhen(
                loaded: (username) => Pinput(
                  controller: controller,
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
                  obscureText: true,
                  onClipboardFound: (value) => controller.setText(value),
                  onCompleted: (pin) {
                    context.read<OtpCubit>().submit(pin).onError(
                      (error, stackTrace) {
                        controller.clear();
                      },
                    );
                  },
                ),
                loading: () => LoadingAnimationWidget.staggeredDotsWave(
                  color: Theme.of(context).colorScheme.primary,
                  size: 56,
                ),
                orElse: () => const SizedBox(),
              )
            ],
            onPressed: null,
            isNoButton: true,
            title: context.tr("title.otp"),
            subTitle: context.tr("subtitle.otp"),
          ),
        ),
      ),
    );
  }
}

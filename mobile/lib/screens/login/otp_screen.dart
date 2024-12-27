import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/bloc/signup/otp/otp_cubit.dart';
import 'package:mobile/widgets/app_loading_widget.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OtpCubit>(
      create: (_) => OtpCubit()..loadData(context),
      child: BlocListener<OtpCubit, OtpState>(
        listener: (context, state) {
          state.whenOrNull(
            submitSucceed: (username) => context.go("/createPassword", extra: username),
          );
        },
        child: BlocBuilder<OtpCubit, OtpState>(
          builder: (context, state) => Scaffold(
            body: state.when(
              initial: () => const SizedBox(),
              loading: () => AppLoadingWidget(),
              loaded: (username) => Pinput(
                length: 6,
                defaultPinTheme: PinTheme(decoration: BoxDecoration(color: Theme.of(context).colorScheme.onPrimary)),
                onCompleted: (pin) => context.read<OtpCubit>().submit(pin),
              ),
              failed: (message) => const SizedBox(),
              submit: () => const SizedBox(),
              submitSucceed: (username) => const SizedBox(),
              submitFailed: (message) => const SizedBox(),
            ),
          ),
        ),
      ),
    );
  }
}

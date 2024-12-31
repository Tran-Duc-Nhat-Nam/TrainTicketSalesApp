import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mobile/bloc/signup/sign_up_cubit.dart';
import 'package:mobile/request/signup/account_request.dart';
import 'package:mobile/widgets/toast/toast.dart';

import '../../common/styles/text_styles.dart';
import '../../widgets/app_public_screen.dart';
import '../../widgets/app_text_button.dart';
import '../../widgets/app_text_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocListener<SignUpCubit, SignUpState>(
        listener: (context, state) {
          state.whenOrNull(
            signupSucceed: (username) => context.go(
              "/otp",
              extra: username,
            ),
            signupFailed: (message) {
              AppToast.showFailureToast(
                context,
                text: context.tr("error"),
                description: message,
              );
            },
          );
        },
        child: BlocBuilder<SignUpCubit, SignUpState>(
          builder: (context, state) {
            return AppPublicScreen(
              formKey: _formKey,
              title: context.tr("title.signUp"),
              subTitle: context.tr("subtitle.signUp"),
              buttonText: state.maybeWhen(
                signup: () => null,
                orElse: () => context.tr("title.signUp"),
              ),
              button: state.whenOrNull(
                signup: () => LoadingAnimationWidget.beat(
                  color: Theme.of(context).colorScheme.primary,
                  size: 24,
                ),
              ),
              onPressed: () {
                _formKey.currentState?.saveAndValidate();
                if (_formKey.currentState?.validate() == true) {
                  context.read<SignUpCubit>().signUp(
                        _formKey.currentState!.value["username"],
                        _formKey.currentState!.value["password"],
                      );
                }
              },
              formChildren: [
                Text(
                  context.tr("userName"),
                  style: AppTextStyles.labelText,
                ),
                const SizedBox(height: 8),
                AppTextField(
                  name: 'username',
                  required: true,
                ),
                const SizedBox(height: 16),
                Text(
                  context.tr('password'),
                  style: AppTextStyles.labelText,
                ),
                const SizedBox(height: 8),
                AppTextField(
                  name: 'password',
                  required: true,
                ),
                const SizedBox(height: 16),
                Text(
                  context.tr('confirmPassword'),
                  style: AppTextStyles.labelText,
                ),
                const SizedBox(height: 8),
                AppTextField(
                  name: 'confirmPassword',
                  required: true,
                  validators: [
                    (value) {
                      return value ==
                              _formKey.currentState?.instantValue['password']
                          ? null
                          : context.tr("errorMessage.confirmPassword");
                    },
                  ],
                ),
                const SizedBox(height: 32),
              ],
              children: [
                const SizedBox(height: 20),
                AppTextButton(
                  text: context.tr("title.login"),
                  onPressed: () => context.go('/login'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

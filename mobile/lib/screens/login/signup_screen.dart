import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/bloc/signup/sign_up_cubit.dart';

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
              "/addInfo",
              extra: username,
            ),
          );
        },
        child: BlocBuilder<SignUpCubit, SignUpState>(
          builder: (context, state) {
            return AppPublicScreen(
              formKey: _formKey,
              title: context.tr("title.signUp"),
              subTitle: context.tr("subtitle.signUp"),
              buttonText: context.tr("title.signUp"),
              onPressed: () {
                _formKey.currentState?.saveAndValidate();
                if (_formKey.currentState?.validate() == true) {
                  context
                      .read<SignUpCubit>()
                      .signUp(_formKey.currentState?.value['username']);
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

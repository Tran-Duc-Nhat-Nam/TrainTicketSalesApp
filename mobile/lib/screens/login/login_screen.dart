import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mobile/bloc/login/login_cubit.dart';
import 'package:mobile/common/styles/text_styles.dart';
import 'package:mobile/widgets/app_checkbox.dart';
import 'package:mobile/widgets/app_public_screen.dart';
import 'package:mobile/widgets/app_text_button.dart';
import 'package:mobile/widgets/app_text_field.dart';
import 'package:mobile/widgets/toast/toast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          state.whenOrNull(
            loginSucceed: () {
              if (mounted) {
                AppToast.showSuccessToast(context,
                    text: context.tr("loginSucceed"));
                context.go("/");
              }
            },
            loginFailed: (message) {
              AppToast.showFailureToast(context, text: message);
            },
          );
        },
        child: BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            return AppPublicScreen(
              formKey: _formKey,
              title: context.tr("title.login"),
              subTitle: context.tr("subtitle.login"),
              buttonText: context.tr("title.login"),
              button: state.whenOrNull(
                loading: () => AppTextButton(
                  onPressed: () {},
                  child: LoadingAnimationWidget.waveDots(
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
              onPressed: state.whenOrNull(
                loaded: (isRemember) => () {
                  _formKey.currentState?.saveAndValidate();
                  if (_formKey.currentState?.validate() == true) {
                    String username = _formKey.currentState?.value['username'];
                    String password = _formKey.currentState?.value['password'];
                    context.read<LoginCubit>().login(username, password);
                  }
                },
              ),
              formChildren: [
                Text(
                  context.tr('userName'),
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
                  isPassword: true,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    AppCheckbox(
                      value: state.maybeWhen(loaded: (isRemember) => isRemember, orElse: () => false,),
                      onChanged: (value) {
                        context.read<LoginCubit>().setRemember(value ?? false);
                      },
                    ),
                    const SizedBox(width: 8),
                    Text(
                      context.tr('remember'),
                      style: AppTextStyles.labelText,
                    ),
                  ],
                ),
                const SizedBox(height: 32),
              ],
              children: [
                const SizedBox(height: 20),
                AppTextButton(
                  text: context.tr('forgetPassword'),
                  onPressed: () => context.push('/forgetPassword'),
                  underline: true,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 90),
                  child: AppTextButton(
                    text: context.tr('signUpNow'),
                    onPressed: () => context.go('/signup'),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

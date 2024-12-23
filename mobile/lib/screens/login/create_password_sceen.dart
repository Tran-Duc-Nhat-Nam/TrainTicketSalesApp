import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../bloc/signup/sign_up_cubit.dart';
import '../../common/styles/text_styles.dart';
import '../../widgets/app_public_screen.dart';
import '../../widgets/app_text_button.dart';
import '../../widgets/app_text_field.dart';
import '../../widgets/toast/toast.dart';

class CreatePasswordSceen extends StatefulWidget {
  const CreatePasswordSceen({super.key});

  @override
  State<CreatePasswordSceen> createState() => _CreatePasswordSceenState();
}

class _CreatePasswordSceenState extends State<CreatePasswordSceen> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  String? password;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocListener<SignUpCubit, SignUpState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            success: () {
              if (mounted) {
                AppToast.showSuccessToast(context,
                    text: context.tr("loginSucceed"));
                context.go("/");
              }
            },
            failure: (message) {
              AppToast.showFailureToast(context, text: message);
            },
          );
        },
        child: BlocBuilder<SignUpCubit, SignUpState>(
          builder: (context, state) {
            return AppPublicScreen(
              formKey: _formKey,
              title: context.tr('title.createPassword'),
              subTitle: context.tr('subtitle.createPassword'),
              buttonText: context.tr('complete'),
              button: state.when(
                initial: () => null,
                loading: () => AppTextButton(
                  onPressed: () {},
                  child: LoadingAnimationWidget.waveDots(
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                success: () => null,
                failure: (message) => null,
              ),
              onPressed: state.when(
                initial: () => () {
                  _formKey.currentState?.saveAndValidate();
                  if (_formKey.currentState?.validate() == true) {
                    String username =
                        GoRouterState.of(context).extra! as String;
                    String password = _formKey.currentState?.value['password'];
                    context.read<SignUpCubit>().signUp(username, password);
                  }
                },
                loading: () => null,
                success: () => null,
                failure: (message) => () {
                  _formKey.currentState?.saveAndValidate();
                  if (_formKey.currentState?.validate() == true) {
                    String username =
                        GoRouterState.of(context).extra! as String;
                    String password = _formKey.currentState?.value['password'];
                    context.read<SignUpCubit>().signUp(username, password);
                  }
                },
              ),
              formChildren: [
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
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';

import '../../common/styles/text_styles.dart';
import '../../widgets/app_public_screen.dart';
import '../../widgets/app_text_field.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return AppPublicScreen(
      formKey: _formKey,
      title: "Quên mật khẩu",
      subTitle: 'Vui lòng nhập email hoặc SĐT của bạn',
      buttonText: 'Đổi mật khẩu',
      onPressed: () {
        _formKey.currentState?.saveAndValidate();
        if (_formKey.currentState?.validate() == true) {
          context.go("/otp");
        }
      },
      formChildren: [
        Text(
          'Email, sdt',
          style: AppTextStyles.labelText,
        ),
        const SizedBox(height: 8),
        AppTextField(
          name: 'username',
          required: true,
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

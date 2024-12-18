import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';

import '../../common/styles/text_styles.dart';
import '../../widgets/app_public_screen.dart';
import '../../widgets/app_text_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return AppPublicScreen(
      formKey: _formKey,
      title: "OTP",
      subTitle: 'Vui lòng nhập mã OTP',
      buttonText: 'Tiếp tục',
      onPressed: () {
        _formKey.currentState?.saveAndValidate();
        if (_formKey.currentState?.validate() == true) {
          context.go("/createPassword");
        }
      },
      formChildren: [
        Text(
          'OTP',
          style: AppTextStyles.labelText,
        ),
        const SizedBox(height: 8),
        AppTextField(
          name: 'otp',
          required: true,
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

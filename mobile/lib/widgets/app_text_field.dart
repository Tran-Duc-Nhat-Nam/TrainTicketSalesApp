
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mobile/common/styles/text_styles.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.name,
    this.labelText,
    this.label,
    this.required = false,
    this.isPassword = false,
    this.isPasswordConfirm = false,
    this.onChanged,
    this.validators,
  });

  final String name;
  final String? labelText;
  final Widget? label;
  final bool required;
  final List<FormFieldValidator<String>>? validators;
  final void Function(String?)? onChanged;
  final bool isPassword;
  final bool isPasswordConfirm;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  List<FormFieldValidator<String>> validators = [];
  late bool isPasswordVisible;

  @override
  void initState() {
    isPasswordVisible = widget.isPassword || widget.isPasswordConfirm;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // validators = [];
    // if (widget.required) {
    //   validators.add(FormBuilderValidators.required(
    //       errorText: context.tr("errorMessage.required"),),);
    // }
    // if (widget.validators != null) {
    //   validators
    //       .addAll(widget.validators as Iterable<FormFieldValidator<String>>);
    // }

    return FormBuilderTextField(
      name: widget.name,
      // validator: FormBuilderValidators.compose(validators),
      obscureText: isPasswordVisible,
      style: AppTextStyles.placeHolderText,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        labelText: widget.label != null ? null : widget.labelText,
        label: widget.label,
        filled: true,
        fillColor: Theme.of(context).colorScheme.surfaceContainer,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintStyle: AppTextStyles.placeHolderText,
        prefix: const Padding(
          padding: EdgeInsets.only(left: 16.0),
        ),
        suffixIcon: widget.isPassword || widget.isPasswordConfirm
            ? IconButton(
                icon: Icon(
                  !isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              )
            : null,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 0,
        ),
      ),
    );
  }
}

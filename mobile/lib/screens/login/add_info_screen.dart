import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mobile/bloc/signup/add_info/add_info_cubit.dart';
import 'package:mobile/widgets/app_date_time_picker.dart';

import '../../common/styles/text_styles.dart';
import '../../widgets/app_public_screen.dart';
import '../../widgets/app_text_button.dart';
import '../../widgets/app_text_field.dart';
import '../../widgets/toast/toast.dart';

class AddInfoScreen extends StatefulWidget {
  const AddInfoScreen({super.key});

  @override
  State<AddInfoScreen> createState() => _AddInfoScreenState();
}

class _AddInfoScreenState extends State<AddInfoScreen> {

  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddInfoCubit>(
      create: (_) => AddInfoCubit()..loadData(context),
      child: BlocListener<AddInfoCubit, AddInfoState>(
        listener: (context, state) {
          state.whenOrNull(
            addSucceed: (username) {
              if (mounted) {
                AppToast.showSuccessToast(context,
                    text: context.tr("loginSucceed"));
                context.go("/");
              }
            },
            addFailed: (message) {
              AppToast.showFailureToast(context, text: message);
              context.read<AddInfoCubit>().loadData(context);
            },
            loginFailed: (message) {
              AppToast.showFailureToast(context, text: message);
              context.go("/login");
            },
          );
        },
        child: BlocBuilder<AddInfoCubit, AddInfoState>(
          builder: (context, state) {
            return AppPublicScreen(
              formKey: _formKey,
              title: context.tr('title.addInfo'),
              subTitle: context.tr('subtitle.addInfo'),
              buttonText: context.tr('complete'),
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
                loaded: (username) => () {
                  _formKey.currentState?.saveAndValidate();
                  if (_formKey.currentState?.validate() == true) {
                    context.read<AddInfoCubit>().addInfo(_formKey.currentState!.value);
                  }
                },
              ),
              formChildren: [
                Text(
                  context.tr('name'),
                  style: AppTextStyles.labelText,
                ),
                const SizedBox(height: 8),
                AppTextField(
                  name: 'name',
                  required: true,
                ),
                const SizedBox(height: 16),
                Text(
                  context.tr('idNumber.short'),
                  style: AppTextStyles.labelText,
                ),
                const SizedBox(height: 8),
                AppTextField(
                  name: 'idNumber',
                  required: true,
                ),
                const SizedBox(height: 16),
                Text(
                  context.tr('phone.short'),
                  style: AppTextStyles.labelText,
                ),
                const SizedBox(height: 8),
                AppTextField(
                  name: 'phoneNumber',
                  required: true,
                ),
                const SizedBox(height: 16),
                Text(
                  context.tr('isMale.short'),
                  style: AppTextStyles.labelText,
                ),
                const SizedBox(height: 8),
                FormBuilderRadioGroup(
                  name: "isMale",
                  options: [
                    FormBuilderFieldOption(value: true),
                    FormBuilderFieldOption(value: false),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  context.tr('dateOfBirth.short'),
                  style: AppTextStyles.labelText,
                ),
                const SizedBox(height: 8),
                AppDateTimePicker(
                  name: 'dateOfBirth',
                  required: true,
                ),
                const SizedBox(height: 32),
              ],
              children: [
                const SizedBox(height: 20),
                AppTextButton(
                  text: context.tr("skip"),
                  onPressed: () => context.go('/'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

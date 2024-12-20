import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:jiffy/jiffy.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';

class AppDateTimePicker extends StatelessWidget {
  const AppDateTimePicker({super.key, required this.name, this.required = false, this.customValidators, this.firstDate});

  final String name;
  final bool required;
  final DateTime? firstDate;
  final List<FormFieldValidator<String>>? customValidators;

  @override
  Widget build(BuildContext context) {
    List<FormFieldValidator<DateTime>> validators = [];
    // if (required) {
    //   validators.add(
    //     FormBuilderValidators.required(
    //       errorText: context.tr("errorMessage.required"),
    //     ),
    //   );
    // }
    // if (customValidators != null) {
    //   validators.addAll(customValidators as Iterable<FormFieldValidator<DateTime>>);
    // }
    return FormBuilderField<DateTime?>(
      initialValue: DateTime.now(),
      builder: (field) => Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                field.value != null
                    ? Jiffy.parseFromDateTime(field.value!)
                        .format(pattern: 'dd/MM/yyyy')
                    : '',
                maxLines: 1,
              ),
            ),
            InkWell(
              onTap: () async {
                DateTime? dt = await showOmniDateTimePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: firstDate,
                  type: OmniDateTimePickerType.date,
                );
                dt != null ? field.didChange(dt) : null;
              },
              child: Icon(Icons.date_range),
            )
          ],
        ),
      ),
      name: name,
      // validator: FormBuilderValidators.compose(validators),
    );
  }
}

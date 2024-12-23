import 'package:dropdown_search/dropdown_search.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AppDropDownMenu<T> extends StatefulWidget {
  const AppDropDownMenu({
    super.key,
    required this.name,
    required this.items,
    required this.itemAsString,
    this.required = false,
    this.customValidators,
  });

  final String name;
  final List<T> items;
  final String Function(T) itemAsString;
  final bool required;
  final List<FormFieldValidator<String>>? customValidators;

  @override
  State<AppDropDownMenu<T>> createState() => _AppDropDownMenuState<T>();
}

class _AppDropDownMenuState<T> extends State<AppDropDownMenu<T>> {
  @override
  Widget build(BuildContext context) {
    List<FormFieldValidator<T?>> validators = [];
    if (widget.required) {
      validators.add(
        FormBuilderValidators.required(
          errorText: context.tr("errorMessage.required"),
        ),
      );
    }
    if (widget.customValidators != null) {
      validators.addAll(widget.customValidators as Iterable<FormFieldValidator<T?>>);
    }
    return FormBuilderField<T?>(
      builder: (field) => DropdownSearch<T>(
        decoratorProps: DropDownDecoratorProps(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: field.errorText != null ? Colors.red : Theme.of(context).colorScheme.secondary),
              borderRadius: BorderRadius.circular(8),
            )
          ),
        ),
        compareFn: (item1, item2) => item1 == item2,
        onChanged: (value) {
          field.didChange(value);
        },
        items: (filter, loadProps) => widget.items,
        dropdownBuilder: (context, selectedItem) => Text(
          selectedItem != null ? widget.itemAsString(selectedItem) : "",
          style: TextStyle(overflow: TextOverflow.ellipsis),
        ),
        itemAsString: widget.itemAsString,
      ),
      name: widget.name,
      // validator: FormBuilderValidators.compose(validators),
    );
  }
}

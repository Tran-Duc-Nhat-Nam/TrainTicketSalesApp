import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  String convert(DateTime object) {
    // Customize the format as needed
    final DateFormat formatter = DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'Z");
    return formatter.format(object.toUtc());
  }

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json);
  }

  @override
  String toJson(DateTime object) {
    // Customize the format as needed
    return convert(object);
  }
}
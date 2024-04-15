import 'package:easy_localization/easy_localization.dart';

extension ConvertoPriceExtension on int {
  String get toPrice => '${NumberFormat('#,###').format(this)} €';
}

extension ConvertNullableIntToNullableStringExtension on int? {
  String? toNullableString() => this?.toString();
}

extension ConvertNullableStringoNullableIntExtension on String? {
  int? toNullableInt() => this == null ? null : int.parse(this!);
}

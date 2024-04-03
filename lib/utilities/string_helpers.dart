extension ConvertNullableStringoNullableIntExtension on String? {
  int? toNullableInt() => this == null ? null : int.parse(this!);
}

extension CheckFileExtensionExtension on String {
  bool get isSvg => substring(lastIndexOf('.')) == '.svg';
}

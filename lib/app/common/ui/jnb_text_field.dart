import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_jab_app/app/common/config/r.dart';

class JnbTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;

  final TextInputType keyboardType;
  final TextStyle? style;
  final TextAlign textAlign;

  final List<TextInputFormatter>? inputFormatters;

  final EdgeInsetsGeometry? contentPadding;
  final String? hintText;
  final TextStyle? hintTextStyle;

  final bool autofocus;
  final bool enabled;
  final int? maxLines;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final GestureTapCallback? onTap;
  final bool addWonUnit;

  const JnbTextField({
    Key? key,
    this.controller,
    this.focusNode,
    this.keyboardType = TextInputType.text,
    this.style,
    this.textAlign = TextAlign.start,
    this.inputFormatters,
    this.contentPadding,
    this.hintText,
    this.hintTextStyle,
    this.autofocus = false,
    this.enabled = true,
    this.maxLines,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.addWonUnit = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: keyboardType,
      style: style,
      cursorColor: R.color.black,
      textAlign: textAlign,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        hintText: hintText,
        hintStyle: hintTextStyle,
      ),
      autofocus: autofocus,
      enabled: enabled,
      onChanged: onChanged,
      maxLines: maxLines,
      onSubmitted: onSubmitted,
      onTap: onTap,
    );
  }
}

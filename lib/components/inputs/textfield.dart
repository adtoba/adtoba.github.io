import 'package:flutter/material.dart';
import 'package:portfolio/style/colors.dart';

class PTextField extends StatelessWidget {
  const PTextField(
      {this.hint,
      this.prefixIconData,
      this.onChanged,
      this.focusNode,
      this.hasFocus = false,
      this.suffixIcon,
      this.enabled = true,
      this.prefixIcon,
      this.obscureText = false,
      this.nextNode,
      this.keyboardType,
      this.inputFormatters,
      this.validator,
      this.maxLines,
      this.textAlign,
      @required this.controller});

  final String hint;
  final String prefixIconData;
  final Function(String) onChanged;
  final TextEditingController controller;
  final bool hasFocus;
  final bool enabled;
  final Widget suffixIcon;
  final bool obscureText;
  final Widget prefixIcon;
  final TextAlign textAlign;
  final FocusNode focusNode;
  final TextInputType keyboardType;
  final FocusNode nextNode;
  final Function(String) validator;
  final int maxLines;
  final inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      inputFormatters: inputFormatters,
      enabled: enabled,
      keyboardType: keyboardType,
      validator: validator,
      obscureText: obscureText,
      maxLines: maxLines ?? null,
      textAlign: textAlign ?? TextAlign.start,
      decoration: InputDecoration(
          fillColor: AppColors.textfieldColor,
          hintText: hint,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.all(20)),
    );
  }
}

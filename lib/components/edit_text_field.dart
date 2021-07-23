import 'package:flutter/material.dart';

class EditTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final Function validator;
  final String hintText;
  final IconButton suffixIcon;
  final IconButton prefixIcon;
  final bool obscureBool;

  const EditTextField(
      {Key key,
      this.controller,
      this.textInputType,
      this.validator,
      this.hintText,
      this.suffixIcon,
      this.obscureBool,
      this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obscureBool,
      keyboardType: textInputType,
      decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
    );
  }
}

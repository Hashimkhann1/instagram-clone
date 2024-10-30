
import 'package:flutter/services.dart';
import 'package:instagram_clone/res/files_paths/files_paths.dart';

class MyTextFormFeild extends StatelessWidget {
  final String? hintText;
  final TextInputType? keyboardType;
  final String? labelText;
  final TextStyle? labelStyle;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? enabled;
  final int? maxLines;
  final bool obscureText;
  final Color? fillColor;
  final BorderSide borderSide;
  final Color? focusedBorderColor;
  final double borderRadius;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final String? initialValue;

  const MyTextFormFeild(
      {super.key,
      required this.hintText,
        this.prefixIcon,
        this.labelText,
        this.labelStyle,
        this.keyboardType,
        this.inputFormatters,
        this.enabled = true,
      this.suffixIcon,
        this.maxLines = 1,
      this.obscureText = false,
      this.fillColor = Colors.white,
      this.borderSide = const BorderSide(
        color: Colors.black,
      ),
        this.focusedBorderColor = MyColors.greyColor,
      this.controller,
      this.borderRadius = 10,
      this.validator,
      this.onChanged,
      this.initialValue});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      maxLines: maxLines,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      onChanged: onChanged,
      enabled: enabled,
      initialValue: initialValue,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(fontSize: 17),
        prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          filled: true,
          fillColor: fillColor,
          border: OutlineInputBorder(
              borderSide: borderSide,
              borderRadius: BorderRadius.circular(borderRadius)
          ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: focusedBorderColor!),
            borderRadius: BorderRadius.circular(borderRadius)
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: borderSide,
            borderRadius: BorderRadius.circular(borderRadius)
        ),
      ),
      validator: validator,
    );
  }
}

import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final TextEditingController fieldController;
  final String? label;
  final bool isPassword;
  const CustomFormField({
    super.key,
    this.label,
    required this.fieldController,
    this.isPassword = false,
  });

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.fieldController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(12.0),
        labelText: widget.label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),

        fillColor: Colors.grey.withOpacity(0.3),
        filled: true,

        suffix:
            widget.isPassword
                ? GestureDetector(
                  child: Icon(Icons.visibility_off),
                  onTap: () => setState(() => showPassword = !showPassword),
                )
                : null,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Custometextfield extends StatelessWidget {
  String? hinttext;
  TextEditingController? textEditingController;
  String? Function(String?)? validate;
  int? length;
  final double? sides;
  TextInputType? keyboard;
  Custometextfield(
      {super.key,
      this.keyboard,
      required this.hinttext,
      required this.validate,
      required this.textEditingController,
       this.sides,
      this.length});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboard,
      maxLines: length,
      controller: textEditingController,
      validator: validate,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hinttext,
          hintStyle: TextStyle(color: Colors.black38, fontSize: 20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(sides ?? 30),
              borderSide: BorderSide(color: Colors.white70))),
    );
  }
}

import 'package:flutter/material.dart';

class Custometextfield extends StatelessWidget {
  String? hinttext;
  TextEditingController? textEditingController;
  String? Function(String?)? validate;
  int? length;
  final double? sides;
  TextInputType? keyboard;
  double? wid;
  double? hei;
  Widget? fronticn;
  Custometextfield(
      {super.key,
      this.keyboard,
      required this.hinttext,
      required this.validate,
      required this.textEditingController,
      this.sides,
      this.hei,
      this.wid,
      this.fronticn,
      this.length});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wid,
      height: hei,
      child: TextFormField(
        
        keyboardType: keyboard,
        maxLines: length,
        controller: textEditingController,
        validator: validate,
        decoration: InputDecoration(
          // suffix: Icon(Icons.search)/,
          prefixIcon: fronticn,
            fillColor: Colors.white,
            filled: true,
            hintText: hinttext,
            hintStyle: TextStyle(color: Colors.black38, fontSize: 20),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(sides ?? 30),
                borderSide: BorderSide(color: Colors.white70))),
      ),
    );
  }
}

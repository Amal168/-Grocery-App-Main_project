import 'package:flutter/material.dart';

class Snackstab extends StatelessWidget {
  const Snackstab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), border: Border.all()),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              return TextButton(onPressed: () {
                
              }, child: Text("data"));
            },
          )),
    );
  }
}

import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  List<bool> togle = [true, false];
  bool toggle1 = false;
  String dropdown = "Red";
  String radiobuttion = ' ';
  // int tigled=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[400],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ToggleButtons(
              borderRadius: BorderRadius.circular(20),
              borderWidth: 10,
              selectedBorderColor: Colors.black,
              fillColor: Colors.blue,
              isSelected: [toggle1, !toggle1],
              onPressed: (int index) {
                setState(() {
                  if (index == 0) {
                    toggle1 = !toggle1;
                  } else {
                    toggle1 = !toggle1;
                  }
                });
              },
              children: const [Text("On"), Text("Off")],
            ),
            const SizedBox(height: 20,),
            ToggleButtons(
              borderRadius: BorderRadius.circular(20),
              borderWidth: 10,
              selectedBorderColor: Colors.black,
              fillColor: Colors.blue,
              isSelected: togle,
              onPressed: (int index) {
                setState(() {
                  togle[index] = !togle[index];
                });
              },
              children: const [Text("On"), Text("Off")],
            ),

              const SizedBox(height: 20,),

            DropdownButton<String>(
              borderRadius: BorderRadius.circular(20),
              focusColor: Colors.amber,
              dropdownColor: Colors.white,
              iconEnabledColor: Colors.red,
              iconDisabledColor: Colors.orange,
                value: dropdown,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: const [
                  DropdownMenuItem<String>(value: "Red", child: Text("Red",selectionColor: Colors.red,)),
                  DropdownMenuItem<String>(
                      value: "Green", child: Text("Green",selectionColor: Colors.green,)),
                  DropdownMenuItem<String>(value: "Blue", child: Text("Blue"))
                ],
                onChanged: (String? newValue) {
                  setState(() {
                    dropdown = newValue!;
                  });
                }),


            RadioListTile<String>(
                title: const Text("option 1"),
                value: '1',
                groupValue: radiobuttion,
                onChanged: (newValue) {
                  setState(() {
                    radiobuttion = newValue!;
                  });
                }),
            RadioListTile<String>(
                title: const Text("option 2"),
                value: '2',
                groupValue: radiobuttion,
                onChanged: (newValue) {
                  setState(() {
                    radiobuttion = newValue!;
                  });
                }),
            RadioListTile<String>(
                title: const Text("option 3"),
                value: '3',
                groupValue: radiobuttion,
                onChanged: (newValue) {
                  setState(() {
                    radiobuttion = newValue!;
                  });
                })
          ],
        ),
      ),
    );
  }
}

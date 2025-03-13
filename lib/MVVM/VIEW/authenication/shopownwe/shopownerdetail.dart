import 'package:flutter/material.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/mainpage.dart';
import 'package:mainproject/MVVM/UTILS/color.dart';
import 'package:mainproject/MVVM/UTILS/custome/customebutton.dart';
import 'package:mainproject/MVVM/UTILS/custome/custometextfield.dart';

class Shopownerdetail extends StatefulWidget {
  const Shopownerdetail({super.key});

  @override
  State<Shopownerdetail> createState() => _ShopownerdetailState();
}

class _ShopownerdetailState extends State<Shopownerdetail> {
  final name = TextEditingController();
  final shopname = TextEditingController();
  final phone = TextEditingController();
  final email = TextEditingController();
  final shoptime = TextEditingController();
  final place = TextEditingController();
  final location = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/571332.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.darken))),
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.keyboard_return),
              iconSize: 35,
            ),
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          body: Center(
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 91,
                    child: Text(
                      "Details",
                      style: TextStyle(
                          fontSize: 46,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 54,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        Custometextfield(
                            hinttext: "Name",
                            validate: (p0) {},
                            textEditingController: name),
                        SizedBox(
                          height: 10,
                        ),
                        Custometextfield(
                            hinttext: "ShopName",
                            validate: (p0) {},
                            textEditingController: name),
                        SizedBox(
                          height: 10,
                        ),
                        Custometextfield(
                            keyboard: TextInputType.number,
                            hinttext: "Phone",
                            validate: (p0) {},
                            textEditingController: phone),
                        SizedBox(
                          height: 10,
                        ),
                        Custometextfield(
                            hinttext: "Email",
                            validate: (p0) {},
                            textEditingController: email),
                        SizedBox(
                          height: 10,
                        ),
                        Custometextfield(
                            keyboard: TextInputType.numberWithOptions(),
                            hinttext: "Shoptime",
                            validate: (p0) {},
                            textEditingController: name),
                        SizedBox(
                          height: 10,
                        ),
                        Custometextfield(
                            hinttext: "Place",
                            validate: (p0) {},
                            textEditingController: place),
                        SizedBox(
                          height: 10,
                        ),
                        Custometextfield(
                          hinttext: "Location",
                          validate: (p0) {},
                          textEditingController: location,
                          length: 5,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Customebutton(
                      textsize: 20,
                      textweight: FontWeight.bold,
                      textcolor: Colors.white,
                      width: 350,
                      hight: 60,
                      onPressed: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Mainpage()));
                        });
                      },
                      text: "Submit",
                      color: WidgetStatePropertyAll(redbutton))
                ],
              ),
            ),
          )),
    );
  }
}

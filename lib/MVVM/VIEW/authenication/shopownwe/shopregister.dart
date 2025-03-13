import 'package:flutter/material.dart';
import 'package:mainproject/MVVM/UTILS/color.dart';
import 'package:mainproject/MVVM/UTILS/custome/customebutton.dart';
import 'package:mainproject/MVVM/UTILS/custome/custometextfield.dart';
import 'package:mainproject/MVVM/VIEW/authenication/shopownwe/shopownerdetail.dart';

class Shopregister extends StatefulWidget {
  const Shopregister({super.key});

  @override
  State<Shopregister> createState() => _ShopregisterState();
}

class _ShopregisterState extends State<Shopregister> {
  final _Shop = TextEditingController();
  final _Email = TextEditingController();
  final _Password = TextEditingController();
  final _Conferm = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Custometextfield(
                  hinttext: "Shop Owner Name ",
                  validate: (p0) {},
                  textEditingController: _Shop),
              SizedBox(
                height: 10,
              ),
              Custometextfield(
                  hinttext: "Email",
                  validate: (p0) {},
                  textEditingController: _Email),
              SizedBox(
                height: 10,
              ),
              Custometextfield(
                  hinttext: "Password",
                  validate: (p0) {},
                  textEditingController: _Password),
              SizedBox(
                height: 10,
              ),
              Custometextfield(
                  hinttext: "Conferm Password",
                  validate: (p0) {},
                  textEditingController: _Conferm),
              SizedBox(
                height: 20,
              ),
              Customebutton(
                  textcolor: Colors.white,
                  textsize: 20,
                  textweight: FontWeight.bold,
                  width: 350,
                  hight: 60,
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Shopownerdetail()));
                    });
                  },
                  text: "Submit",
                  color: WidgetStatePropertyAll(redbutton))
            ],
          ),
        ),
      
    );
  }
}

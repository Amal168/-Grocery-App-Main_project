import 'package:flutter/material.dart';
import 'package:mainproject/MVVM/UTILS/color.dart';
import 'package:mainproject/MVVM/UTILS/custome/customebutton.dart';
import 'package:mainproject/MVVM/UTILS/custome/custometextfield.dart';
import 'package:mainproject/MVVM/VIEW/authenication/commonregister.dart';
import 'package:mainproject/MVVM/VIEW/authenication/forgotpassword.dart';

class Commonlogin extends StatefulWidget {
  const Commonlogin({super.key});

  @override
  State<Commonlogin> createState() => _CommonloginState();
}

class _CommonloginState extends State<Commonlogin> {
  final email = TextEditingController();
  final password = TextEditingController();
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
          backgroundColor: Colors.transparent,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 225,
                    height: 279,
                    child: Text(
                      "Welcome \n\n to \n\n List2Local",
                      style: TextStyle(
                          fontSize: 36,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 85,
                  ),
                  Custometextfield(
                      hinttext: "Email",
                      validate: (p0) {},
                      textEditingController: email),
                  SizedBox(
                    height: 10,
                  ),
                  Custometextfield(
                      hinttext: "password",
                      validate: (p0) {},
                      textEditingController: email),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Forgotpassword()));
                          });
                        },
                        child: Text(
                          "forgot password",
                          style: TextStyle(
                            color: bluetext,
                            fontSize: 20,
                          ),
                        )),
                  ),
                  Customebutton(
                      width: 350,
                      hight: 60,
                      textcolor: Colors.white,
                      textsize: 20,
                      textweight: FontWeight.bold,
                      onPressed: () {
                        //go to the page where email and password are registered


                        
                      },
                      text: "Login",
                      color: WidgetStatePropertyAll(redbutton)),
                  SizedBox(
                    height: 58,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: Image(
                        image: AssetImage(
                            "asset/google-icon-logo-symbol-free-png.webp")),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Don't have account ?",
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Commonregister()));
                            });
                          },
                          child: Text("Register now",
                              style: TextStyle(color: bluetext, fontSize: 15)))
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}

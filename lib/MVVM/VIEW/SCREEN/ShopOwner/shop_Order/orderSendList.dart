import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/circular_reveal_clipper.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_Order/Shop_Customer_Chat.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_Order/shop_customer_profile.dart';
import 'package:mainproject/MVVM/UTILS/color.dart';
import 'package:mainproject/MVVM/UTILS/custome/custometextfield.dart';

class Ordersendlist extends StatefulWidget {
  const Ordersendlist({super.key});

  @override
  State<Ordersendlist> createState() => _OrdersendlistState();
}

class _OrdersendlistState extends State<Ordersendlist> {
  List<String> selectedRadioValues = List.generate(
      10, (index) => ''); // List to store selected values per item
  String radiobuttion = " ";
  int selectIndex = 0;
  final _subtotal = TextEditingController();
  final _detiveryFee = TextEditingController();
  final _discount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_return),
            iconSize: 35,
          ),
          title: Text(
            "List",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "Inknut_Antiqua",
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ShopCustomerChat()));
              },
              icon: Icon(Icons.chat),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ShopCustomerProfile()));
              },
              icon: Icon(Icons.person),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      width: 118,
                      height: 121,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: Image(
                        image: AssetImage("asset/images (1).jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Product Name",style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Inria_Sans",
                                fontWeight: FontWeight.bold),),
                            Text("1 Peace",style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Inria_Sans",
                                fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 28,
                            ),
                            Text("20Rs",style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Inria_Sans",
                                fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 20,),
                                Radio<String>(
                                    value: '1',
                                    groupValue: radiobuttion,
                                    onChanged: (newValue) {
                                      setState(() {
                                          radiobuttion = newValue!;
                                        
                                      });
                                    }),
                                Text("Check")
                              ],
                            ),

                            // SizedBox(height: -10,),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Radio<String>(
                                    // title: const Text("Invisible"),
                                    value: '2',
                                    groupValue: radiobuttion,
                                    onChanged: (newValue) {
                                      setState(() {
                                        radiobuttion = newValue!;
                                      });
                                    }),
                                Text("Uncheck")
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    // trailing:
                  );
                },
              ))
            ],
          ),
        ),
        bottomSheet: Container(
          width: double.infinity,
          height: 258,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text("Subtotal",style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Inknut_Antiqua",
                                fontWeight: FontWeight.bold),),
                    Container(
                      width: 88,
                      height: 32,
                      child: TextFormField(
                        controller: _subtotal,
                        validator: (value) {},
                        decoration: InputDecoration(
                            hintText: "40.00Rs",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text("Delivery Fee",style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Inknut_Antiqua",
                                fontWeight: FontWeight.bold),),
                    Container(
                      width: 88,
                      height: 32,
                      child: TextFormField(
                        controller: _detiveryFee,
                        validator: (value) {},
                        decoration: InputDecoration(
                            hintText: "2.00Rs",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text("Discount",style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Inknut_Antiqua",
                                fontWeight: FontWeight.bold),),
                    Container(
                      width: 88,
                      height: 32,
                      child: TextFormField(
                        controller: _subtotal,
                        validator: (value) {},
                        decoration: InputDecoration(
                            hintText: "0.00Rs",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio<String>(
                        splashRadius: 50,
                        value: '1',
                        groupValue: radiobuttion,
                        onChanged: (newValue) {
                          setState(() {
                            radiobuttion = newValue!;
                          });
                        }),
                    Text("Check",style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Inria_Sans",
                                fontWeight: FontWeight.bold)),
                    Radio<String>(
                        // title: const Text("Invisible"),
                        value: '2',
                        groupValue: radiobuttion,
                        onChanged: (newValue) {
                          setState(() {
                            radiobuttion = newValue!;
                          });
                        }),
                    Text("Uncheck",style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Inria_Sans",
                                fontWeight: FontWeight.bold))
                  ],
                ),
                MaterialButton(
                  elevation: 10.0,
                    minWidth: 337,
                    height: 40,
                    color: greenbutton,
                    shape: Border.all(color: Colors.black26),
                    onPressed: () {
                      
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        
                        Text(
                          "Total: ",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Inknut_Antiqua",
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "40.00Rs",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Inria_Sans",
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 93,
                        ),
                        Text("Send",style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Inknut_Antiqua",
                              fontWeight: FontWeight.bold),),
                        Icon(Icons.check,size: 30,weight: 18,)
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}

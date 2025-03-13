import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_Order/orderReceavedList.dart';

class Orderreceved extends StatefulWidget {
  const Orderreceved({super.key});

  @override
  State<Orderreceved> createState() => _OrderrecevedState();
}

class _OrderrecevedState extends State<Orderreceved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => OrderReceavedList()));
                      },
                      child: Card(
                        color: Colors.white,
                        elevation: 10,
                        child: ListTile(
                          leading: CircleAvatar(),
                          title: Text("Customer Name"),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_Order/orderReceved.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_Order/orderSend.dart';
import 'package:mainproject/MVVM/VIEW/authenication/commonregister.dart';
import 'package:mainproject/MVVM/VIEW/authenication/Commonlogin.dart';
import 'package:mainproject/MVVM/VIEW/authenication/shopownwe/shopownerdetail.dart';

class Orderreceivedsend extends StatefulWidget {
  const Orderreceivedsend({super.key});

  @override
  State<Orderreceivedsend> createState() => _OrderreceivedsendState();
}

class _OrderreceivedsendState extends State<Orderreceivedsend> with TickerProviderStateMixin {
  late TabController tabcontrol;

  @override
  void initState() {
    super.initState();
    tabcontrol = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabcontrol.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color:Colors.green ,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              elevation: 5,
              child: Container(
                // width: 150,
                // height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange,  
                  ),
                  controller: tabcontrol,
                  
            
                  tabs: const [
                    Tab(child: Text("Event",style: TextStyle(color: Colors.white),)),
                    SizedBox(width: 1,), 
                  Tab(child: Text("Result",style: TextStyle(color: Colors.white)))],
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabcontrol,
              children: const [
                // page name here
               Orderreceved(),
                // Center(child: Text("data")),
               Ordersend()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

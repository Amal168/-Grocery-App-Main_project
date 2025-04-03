import 'package:flutter/material.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_item/addproduct.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_item/itemt_abs/Soap_tab.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_item/itemt_abs/all_tab.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_item/itemt_abs/cookingoil_tab.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_item/itemt_abs/rice_tab.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_item/itemt_abs/snacks_tab.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_item/itemt_abs/toothpaste_tab.dart';
import 'package:mainproject/MVVM/UTILS/color.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/customer/product/customer_cart.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/customer/product/itemt_abs/customer_Soap_tab.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/customer/product/itemt_abs/customer_cookingoil_tab.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/customer/product/itemt_abs/customer_rice_tab.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/customer/product/itemt_abs/customer_snacks_tab.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/customer/product/itemt_abs/customer_toothpaste_tab.dart';
import 'package:mainproject/MVVM/VIEW/authenication/shopownwe/shopregister.dart';

class ProductItems extends StatefulWidget {
  const ProductItems({super.key});

  @override
  State<ProductItems> createState() => _ProductItemsState();
}

class _ProductItemsState extends State<ProductItems>
    with SingleTickerProviderStateMixin {
  late TabController tabcontrol;

  @override
  void initState() {
    super.initState();
    tabcontrol = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    tabcontrol.dispose();
    super.dispose();
  }

  final search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: toggle2color,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 250,
            height: 35,
            child: TextFormField(
              validator: (value) {},
              controller: search,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 40,
              height: 40,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(100)),
              child: IconButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.white)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Addproduct()));
                  },
                  icon: Icon(
                    Icons.chat_sharp,
                    weight: 50,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 40,
              height: 40,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(100)),
              child: IconButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.white)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => CustomerCart()));
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    weight: 50,
                  )),
            ),
          )
        ],
        bottom: TabBar(isScrollable: true, controller: tabcontrol, tabs: [
          Tab(
            text: "all",
          ),
          Tab(
            text: "Rice",
          ),
          Tab(
            text: "Soap",
          ),
          Tab(
            text: "Snacks",
          ),
          Tab(
            text: "Toothpaste",
          ),
          Tab(
            text: "Cooking Oil",
          ),
        ]),
      ),
      body: Expanded(
        child: TabBarView(controller: tabcontrol, children: [
          //  AllTabPage(),
          Center(
            child: Text("All"),
          ),
          // Center(child: Text("Rice"),),
          CustomerRiceTab(),
          CustomerSoapTab(),
          CustomerSnacksTab(),
          CustomerToothpasteTab(),
          CustomerCookingoilTab()
        ]),
      ),
    );
  }
}

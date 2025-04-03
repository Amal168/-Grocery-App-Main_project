import 'package:flutter/material.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/customer/Customer_shop.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/customer/customer_order.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/customer/product/Product_items.dart';

class CustomerBottom extends StatefulWidget {
  const CustomerBottom({super.key});

  @override
  State<CustomerBottom> createState() => _CustomerBottomState();
}

class _CustomerBottomState extends State<CustomerBottom> {
  final List<Widget> _CustomerPage = [
    // Center(
    //   child: Text(
    //     "Products",
    //     style: TextStyle(fontSize: 20),
    //   ),
    // ),
    ProductItems(),
    // Center(
    //   child: Text(
    //     "Oredrs",
    //     style: TextStyle(fontSize: 20),
    //   ),
    // ),
    CustomerOrder(),
    // Center(
    //   child: Text(
    //     "Shop",
    //     style: TextStyle(fontSize: 20),
    //   ),
    // ),
    CustomerShop()
  ];
  int _selectedindex = 0;

  void _ontapMethod(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _CustomerPage[_selectedindex],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10,right: 20,left: 20),
        child: BottomNavigationBar(
          elevation: 50,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon:  SizedBox.shrink(),
                label: "Products"),
            BottomNavigationBarItem(
                icon: SizedBox.shrink(),
                label: "Orders"),
            BottomNavigationBarItem(
                icon: SizedBox.shrink(),
                label: "Shop"),
          ],
          currentIndex: _selectedindex,
          enableFeedback: true,
          onTap: _ontapMethod,
        ),
      ),
    );
  }
}

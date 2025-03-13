import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_Order/Shop_Customer_Chat.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/addoffers.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_item/addproduct.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_item/itemt_abs/rice_tab.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/mainpage.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_Order/orderReceavedList.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_item/shopitems.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_Order/orderSendList.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_profile/shopCommentRating.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_profile/shopEditPrfile.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_profile/shopprofile.dart';
import 'package:mainproject/MVVM/UTILS/custome/customebutton.dart';
import 'package:mainproject/MVVM/UTILS/custome/custometextfield.dart';
import 'package:mainproject/MVVM/VIEW/authenication/customerregister/customerRegister.dart';
import 'package:mainproject/MVVM/VIEW/authenication/shopownwe/shopregister.dart';
import 'package:mainproject/buttons.dart';
import 'package:mainproject/MVVM/VIEW/authenication/customerregister/customerdetails.dart';
import 'package:mainproject/dupe.dart';
import 'package:mainproject/MVVM/VIEW/authenication/forgotpassword.dart';
import 'package:mainproject/MVVM/VIEW/authenication/Commonlogin.dart';
import 'package:mainproject/MVVM/VIEW/authenication/commonregister.dart';
import 'package:mainproject/MVVM/VIEW/authenication/shopownwe/shopownerdetail.dart';
import 'package:mainproject/dupesendrecive.dart';

late Size mq;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Inria_Sans',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home:Shopownerdetail()
        // home:Addproduct()
        // home:Addoffers()
        // home:ShopCustomerChat()
        // home:OrderReceavedList()
        // home:Ordersendlist()
        // home:Shopcommentrating()
        // home:Shopeditprfile()
        // home:Shopprofile()
        // home:Forgotpassword()
        // home:Shopregister()
        // home:Customerdetails()
        // home:Eventorgbottum()
        // home:Mainpage()
        home:Commonlogin()
        // home:Dupe()
        // home: Dupesendrecive()
        // home: Orderreceivedsend()
        // home:CustomToggleButton()
        // home:Customerregister()
        // home:Customerregister()
        // home:Ricetab()
        // home:Shopitems()
        // home:Commonregister()
        // home:Buttons()
        );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mainproject/MVVM/UTILS/slider.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/mainpage.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_Order/orderReceavedList.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_Order/orderReceivedSend.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_Order/orderSendList.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_bottum_bar.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_item/shopitems.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/customer/Customer_Shop_Main_Page.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/customer/Profile/Customer_Profile.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/customer/Profile/edit_customer_profile.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/customer/customer_Bottom.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/customer/customer_order.dart';
import 'package:mainproject/MVVM/VIEW/authenication/Commonlogin.dart';
import 'package:mainproject/dummi_files/buttons.dart';
import 'package:mainproject/firebase_options.dart';

late Size mq;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
        // home:Orderreceavedlist()
        // home: Ordersendlist()
        // home:Shopcommentrating()
        // home:Shopeditprfile()
        // home:Shopprofile()
        // home:Forgotpassword()
        // home:Shopregister()
        // home:Customerdetails()
        
        // home:Mainpage()
        home:CustomerOrder()
        // home:CustomerBottom()
        // home:CustomerProfile()
        // home:EditCustomerProfile()
        // home:Commonlogin()
        // home:CustomerShopMainPage()
        // home:ShopBottumBar()
        // home:Dupe()
        // home: Dupesendrecive()
        // home: Orderreceivedsend()
        // home:CustomToggleButton()
        // home:Customerregister()
        // home:Customerregister()
        // home:Ricetab()
        // home:ShopMainPage()
        // home:Sliderpage()
        // home:ShopBottumBar()
        // home:Shopitems()
        // home:Commonregister()
        // home:Buttons()
        );
  }
}

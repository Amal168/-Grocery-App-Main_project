import 'package:flutter/material.dart';
import 'package:mainproject/MVVM/UTILS/color.dart';
import 'package:mainproject/MVVM/UTILS/custome/customebutton.dart';
import 'package:mainproject/MVVM/UTILS/custome/custometextfield.dart';
import 'package:mainproject/MVVM/VIEW/authenication/customerregister/customerRegister.dart';
import 'package:mainproject/MVVM/VIEW/authenication/customerregister/customerdetails.dart';
import 'package:mainproject/MVVM/VIEW/authenication/shopownwe/shopownerdetail.dart';
import 'package:mainproject/MVVM/VIEW/authenication/shopownwe/shopregister.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Dupe extends StatefulWidget {
  const Dupe({super.key});

  @override
  State<Dupe> createState() => _DupeState();
}

class _DupeState extends State<Dupe> with TickerProviderStateMixin{
  final email = TextEditingController();
  final password = TextEditingController();
  // final List<String> _label = ['Customer', 'ShopOwner'];
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround
                ,
                children: [
                  Container(
                    width: 310,
                    height: 60,
                    child: Text(
                      "Register\nNow",
                      style: TextStyle(
                          fontSize: 46,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 403,
                    height: 615,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                         Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Card(
                                color:Colors.green ,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                elevation: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: toggle2color,  
                  ),
                  controller: tabcontrol,
                  
                              
                  tabs: const [
                    Tab(child: Text("Customer",style: TextStyle(color: Colors.white),)), 
                  Tab(child: Text("ShopOwner",style: TextStyle(color: Colors.white)))],
                                  ),
                                ),
                              ),
                            ),
                            // Expanded(
                            //   child: TabBarView(
                            //     controller: tabcontrol,
                            //     children: const [
                            //       // page name here
                            //      Customerregister(),
                            //       // Center(child: Text("data")),
                            //      Shopregister()
                            //     ],))
                      ]
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:mainproject/MVVM/VIEW/UTILS/color.dart';
// import 'package:mainproject/MVVM/VIEW/authenication/customerregister/customerRegister.dart';

// import 'package:toggle_switch/toggle_switch.dart';
// class CustomToggleButton extends StatefulWidget {
//   const CustomToggleButton({super.key});

//   @override
//   State<CustomToggleButton> createState() => _CustomToggleButtonState();
// }

// class _CustomToggleButtonState extends State<CustomToggleButton> {
//   int selectedIndex = 0; 
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Material(
//           elevation: 15,
//           borderRadius: BorderRadius.circular(30),
//           child: ToggleSwitch(
//             borderColor: [
//               const Color.fromARGB(255, 248, 246, 246)
//             ],
//             minWidth: 120.0,
//             minHeight: 45,
//             cornerRadius: 30.0,
//             activeBgColors: [
//               [Color.fromARGB(255, 56, 122, 2)],
//               [Color.fromARGB(255, 56, 122, 2)],
//               ],
//               activeFgColor: toggle2color,
//               inactiveBgColor: Colors.white,
//               inactiveFgColor: Colors.white,
//               initialLabelIndex: selectedIndex, 
//               totalSwitches: 2,
//               labels: ['User','Worker'],
//               fontSize: 18,
//               radiusStyle: true,
//               onToggle: (index) {
//                 setState(() {
//                   selectedIndex = index!;
//                 });
//                 if (index == 0){
//                   Navigator.push(
//                     context, MaterialPageRoute(
//                       builder: (context)=>Customerregister()));
//                 }
//               },
//           ),
//         ),
//     );
//   }
// }

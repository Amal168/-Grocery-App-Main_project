import 'package:flutter/material.dart';


class SnacksTab extends StatefulWidget {
  SnacksTab({super.key});

  @override
  State<SnacksTab> createState() => _SnacksTabState();
}

class _SnacksTabState extends State<SnacksTab> {
  String radiobuttion = " ";
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            elevation: 10,
            child: Container(
                height: 40,
                decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
                child: ListView.builder(
                  
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return TextButton(
                        onPressed: () {
                          setState(() {
                            selectIndex = index;
                          });
                        },
                        child: Text(
                          "data",
                        ));
                  },
                )),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 5,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 3,
                  mainAxisExtent: 370),
              itemBuilder: (context, index) {
                switch (selectIndex) {
                  case 0:
                    return Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),

                          Container(
                            width: 118,
                            height: 121,
                            // child: Image.asset("asset/images (1).jpg",fit: BoxFit.cover,),
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Product Name",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Only 4 Left", style: TextStyle(fontSize: 15,color: Colors.red)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("100g 20Rs", style: TextStyle(fontSize: 15)),
                          SizedBox(
                            height: 10,
                          ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                          Text("Check",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Inria_Sans",
                                  fontWeight: FontWeight.bold)),
                          ],
                         ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Radio<String>(
                              value: '2',
                              groupValue: radiobuttion,
                              onChanged: (newValue) {
                                setState(() {
                                  radiobuttion = newValue!;
                                });
                              }),
                          Text("Uncheck",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Inria_Sans",
                                  fontWeight: FontWeight.bold))
                          ],
                         )
                        ],
                      ),
                    );
                  case 1:
                    return Center(
                      child: Text("No data"),
                    );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:homework13/platform_aware_asset_image.dart';

import 'fooddetail.dart';


class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  var _selectedBottomNavIndex = 0;
  var foodList = <FoodList>[
    FoodList(imgName: "kao_kai_jeaw.jpg", priceFood: 30, nameFood : "ข้าวไข่เจียว"),
    FoodList(imgName: "kao_moo_dang.jpg", priceFood: 40, nameFood : "ข้าวหมูแดง"),
    FoodList(imgName: "kao_mun_kai.jpg", priceFood: 40, nameFood : "ข้าวมันไก่"),
    FoodList(imgName: "kao_na_ped.jpg", priceFood: 50, nameFood : "ข้าวหน้าเป็ด"),
    FoodList(imgName: "kao_pad.jpg", priceFood: 40, nameFood : "ข้าวผัด"),
    FoodList(imgName: "pad_sie_eew.jpg", priceFood: 35, nameFood : "ผัดซีอิ๊ว"),
    FoodList(imgName: "pad_thai.jpg", priceFood: 35, nameFood : "ผัดไทย"),
    FoodList(imgName: "rad_na.jpg", priceFood: 30, nameFood : "ราดหน้า"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Your Order',
          ),
        ],
        currentIndex: _selectedBottomNavIndex,
        onTap: (index) {
          setState(() {
            _selectedBottomNavIndex = index;
          });
        },
      ),
      body: _selectedBottomNavIndex == 0
          ? Container(
              child: Center(
              child: ListView.builder(
                  itemCount: foodList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return
                      AnimatedContainer(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      duration: const Duration(seconds: 2),
                      curve: Curves.easeIn,
                      child: Material(

                        color: Color.fromRGBO(217, 255, 251, 0.4),
                        child: InkWell(

                          onTap: () {
                            Navigator.pushNamed(context, FoodDetail.routeName,arguments: foodList[index]);

                          },
                          child: Padding(
                              padding: EdgeInsets.all(6.0),
                              child:
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              margin:
                                              EdgeInsets.symmetric(horizontal: 9),
                                              child: SizedBox(
                                                width: 85,
                                                height: 85,
                                                child: PlatformAwareAssetImage(
                                                  assetPath: 'assets/images/${foodList[index].imgName}',
                                                ),
                                              )
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            children: [
                                          Container(margin : EdgeInsets.fromLTRB(20, 0, 0, 0),child: Text("${foodList[index].nameFood}"),),
                                            Container(margin : EdgeInsets.fromLTRB(20, 0, 0, 0),child: Text("ราคา ${foodList[index].priceFood} บาท",),)
                                          ],)
                                        ],
                                      ),

                                    ],
                                  )

                                ],
                              )

                          ),
                        ),
                      ),
                    );
                  }),
            ))
          : Container(
              child: Center(
                child: Text('YOUR ORDER', style: TextStyle(fontSize: 20)),
              ),
            ),
    );
  }
}
class FoodList {
  String? imgName;
  int? priceFood;
  String? nameFood;
  FoodList({var imgName,required int priceFood,var nameFood}) {
    this.imgName = imgName;
    this.priceFood = priceFood;
    this.nameFood = nameFood;
  }
}
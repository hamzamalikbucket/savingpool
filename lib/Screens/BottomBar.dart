import 'package:flutter/material.dart';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:savingpool/MyColors.dart';
import 'package:savingpool/Screens/HomeScreen.dart';
import 'package:savingpool/Screens/LoginScreen.dart';
import 'package:savingpool/widgets/TextWidget.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int sum = 0;
  bool login=false;
  int _selectedIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    const Login(),
    const Login(),


  ];
  Widget _intInitialWidget = HomeScreen();


  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      containerHeight: 55.00,
      selectedIndex: _selectedIndex,
      showElevation: true, // use this to remove appBar's elevation
      onItemSelected:_onItemTapped,


      itemCornerRadius: 24,
      curve: Curves.easeIn,
      backgroundColor: MyColors.whiteColor,
      items:[
        BottomNavyBarItem(
            icon: const ImageIcon(
              AssetImage("assets/images/ic_label_home.png",),

              size: 32,
            ),
            title:TextWidget(input: "Home", fontsize:14, fontWeight: FontWeight.w700, textcolor:MyColors.blue),


            activeColor: MyColors.darkblueColor,
            inactiveColor: MyColors.gray

        ),
        /*      BottomNavyBarItem(
              icon: const ImageIcon(
                AssetImage("assets/images/reward.png"),
                size: 22,
              ),
              title:TextWidget(input: "Rewards", fontsize:12, fontWeight: FontWeight.w700, textcolor:MyColors.blue),
              activeColor: MyColors.darkblueColor,
              inactiveColor: MyColors.gray,
          ),
          BottomNavyBarItem(
              icon: const ImageIcon(
                AssetImage("assets/images/delivery.png"),
                size: 22,
              ),
              title:TextWidget(input: "Delivery", fontsize:12, fontWeight: FontWeight.w700, textcolor:MyColors.blue),
              activeColor: MyColors.darkblueColor,
              inactiveColor: MyColors.gray,
          ),*/
        BottomNavyBarItem(
          icon: const ImageIcon(
            AssetImage("assets/images/ic_account_address.png",),
            size: 22,


          ),

          activeColor: MyColors.darkblueColor,
          inactiveColor: MyColors.gray,
          title:TextWidget(input: "Restaurant", fontsize:12, fontWeight: FontWeight.w700, textcolor:MyColors.blue),


        ),
        BottomNavyBarItem(
          icon: const ImageIcon(
            AssetImage("assets/images/more.png",),
            size: 22,


          ),

          activeColor: MyColors.darkblueColor,
          inactiveColor: MyColors.gray,
          title:TextWidget(input: "More", fontsize:12, fontWeight: FontWeight.w700, textcolor:MyColors.blue),


        ),
      ],



    );
  }
  void _onItemTapped(int index) {
    setState((){
      _selectedIndex = index;
      switch(index){
        case 0:
          _intInitialWidget = _children[0];
          break;
        case 1:
          _intInitialWidget = _children[1];

          break;

        case 2:
          _intInitialWidget = _children[2];

          break;
        case 3:
          _intInitialWidget = _children[3];

          break;



      }
    });
  }
}

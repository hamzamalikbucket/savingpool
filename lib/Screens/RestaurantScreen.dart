
import 'package:flutter/material.dart';
import 'package:savingpool/widgets/TextWidget.dart';


import '../Constants.dart';
import '../MyColors.dart';
import '../Utils.dart';
import 'package:savingpool/widgets/Toolbar.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LocationState();
  }
}

class LocationState extends State<RestaurantScreen> {
  final GlobalKey<ScaffoldState> scaffoldLocationKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      key: scaffoldLocationKey,
      appBar: ToolbarBack(appBar: AppBar(), title: "Restaurants",),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Divider(
                    thickness: 1,
                    color: MyColors.blackColor12,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

}

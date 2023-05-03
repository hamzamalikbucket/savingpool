import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:savingpool/Models/RestaurantModel.dart';
import 'package:savingpool/MyColors.dart';
import 'package:savingpool/Screens/DealsScreenMain.dart';
import 'package:savingpool/widgets/CardHomeWidget.dart';
import 'package:savingpool/widgets/TextWidget.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }

}

class HomeState extends State<HomeScreen>{
  List<RestaurantModel> rModel=[
    RestaurantModel("1", "Kfc", "assets/images/kfc.png"),
    RestaurantModel("2", "Saving Pool", "assets/images/logo.png"),
    RestaurantModel("3", "MacDonalds", "assets/images/mac.png"),
    RestaurantModel("4", "KFC", "assets/images/kfc.png"),
    RestaurantModel("5", "MacDonalds", "assets/images/logo.png"),

  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     body: SafeArea(
       child: SingleChildScrollView(
         child: Column(
           children: [
             Image.asset('assets/images/logo.png',height: 250,fit: BoxFit.fitWidth,),

             TextWidget(
                 input:"Choose Your Restaurant",
                 fontsize: 25,
                 fontWeight: FontWeight.w700,
                 textcolor: MyColors.blue),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GridView.builder(
           itemCount: rModel.length,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
             shrinkWrap: true,
                  itemBuilder: (context, index) {
             RestaurantModel restModel=rModel[index];

             return GestureDetector(
               onTap: (){
                 Navigator.push(context,
                   MaterialPageRoute(
                     builder: (context) => DealsScreenMain(),
                     settings: RouteSettings(
                       arguments: rModel[index],
                     ),
                   ),);

               },

               child: Card(
                   color: MyColors.whiteColor,
                   elevation: 2,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10.0),
                       side: BorderSide(color: MyColors.blackColor24, width: 1.0)),
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Image.asset(

                           restModel.image,
                           height: 150,
                           fit: BoxFit.fill,
                         ),
                       ),

                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: TextWidget(
                             input:restModel.restaurantName,
                             fontsize: 18,
                             fontWeight: FontWeight.w700,
                             textcolor: MyColors.blue),
                       ),



                     ],
                   ),
               ),
             );
             },   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                ),),
              )

           ],
         ),
       ),
     ),

     );
  }
}

/*
           SliverGrid(

                 gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                   maxCrossAxisExtent: 250.0,
                   mainAxisExtent: 260,
                   childAspectRatio: 0.6),
             delegate: SliverChildBuilderDelegate(
               childCount: rModel.length,
             (BuildContext context, int index) {
               RestaurantModel restModel=rModel[index];
               return Card(
                 color: MyColors.whiteColor,
                 elevation: 30,
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10.0),
                     side: BorderSide(color: MyColors.blackColor24, width: 1.0)),
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Image.asset(
                         restModel.image!,
                       ),
                     ),
                     Divider(
                       thickness: 1,
                       color: MyColors.blackColor48,
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextWidget(
                           input:restModel.restaurantName!,
                           fontsize: 18,
                           fontWeight: FontWeight.w900,
                           textcolor: MyColors.blue),
                     ),



                   ],
                 ),
               );
             }),

               )*/
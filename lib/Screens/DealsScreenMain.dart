import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:savingpool/Models/DealsModel.dart';
import 'package:savingpool/Models/RestaurantModel.dart';
import 'package:savingpool/MyColors.dart';
import 'package:savingpool/widgets/BtnNullHeightWidth.dart';
import 'package:savingpool/widgets/CardHomeWidget.dart';
import 'package:savingpool/widgets/TextWidget.dart';
import 'package:savingpool/widgets/Toolbar.dart';

class DealsScreenMain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DealsState();
  }

}

class DealsState extends State<DealsScreenMain>{
  List<DealsModel> dealModel=[
    DealsModel("assets/images/bgg.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Burgers","1"),
    DealsModel("assets/images/burgerdeal.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Zinger Burgers","2"),
    DealsModel("assets/images/bgg.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Burgers","1"),

    DealsModel("assets/images/burgerdeal.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Zinger Burgers","2"),
    DealsModel("assets/images/bgg.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Burgers","1"),

    DealsModel("assets/images/burgerdeal.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Zinger Burgers","2"),
    DealsModel("assets/images/bgg.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Burgers","1"),

    DealsModel("assets/images/bgg.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Burgers","1"),

    DealsModel("assets/images/burgerdeal.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Zinger Burgers","2"),
    DealsModel("assets/images/bgg.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Burgers","1"),

   ];
  late RestaurantModel restaurantModel;
  bool daily=true;
  bool yearly=false;
  bool menu=false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    restaurantModel= ModalRoute.of(context)!.settings.arguments as RestaurantModel;
    print(restaurantModel.restaurantId);
    return Scaffold(
      appBar: ToolbarBack(appBar: AppBar(), title: "Deals",),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BtnNullHeightWidth(
                      title: "Daily Deals",
                      bgcolour: (daily)?MyColors.blue:MyColors.whiteColor,
                      disablecolor: MyColors.yellowColor,
                      textcolour: (daily)?MyColors.whiteColor:MyColors.black,
                      onPress: () {
                        setState(() {
                          daily=true;
                          yearly=false;
                          menu=false;
                        });


                      },
                      width: 125,
                      height: 48,
                    ),
                    BtnNullHeightWidth(
                      title: "Yearly Deals",
                      bgcolour: (yearly)?MyColors.blue:MyColors.whiteColor,
                      disablecolor: MyColors.yellowColor,
                      textcolour: (yearly)?MyColors.whiteColor:MyColors.black,
                      onPress: () {
                        setState(() {
                          daily=false;
                          yearly=true;
                          menu=false;
                        });


                      },
                      width: 130,
                      height: 48,
                    ),
                    BtnNullHeightWidth(
                      title: "Menu",
                      bgcolour: (menu)?MyColors.blue:MyColors.whiteColor,
                      disablecolor: MyColors.yellowColor,
                      textcolour: (menu)?MyColors.whiteColor:MyColors.black,
                      onPress: () {
                        setState(() {
                          daily=false;
                          yearly=false;
                          menu=true;
                        });


                      },
                      width: 80,
                      height: 48,
                    ),
                  ],
                ),
              ),



              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GridView.builder(
                  itemCount: dealModel.length,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    DealsModel restModel=dealModel[index];

                    return GestureDetector(
                      child:
                      Card(
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

                                restModel.dealImg,
                                height: 150,
                                fit: BoxFit.fill,
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextWidget(
                                  input:restModel.dealName,
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
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

  late RestaurantModel restaurantModel;
  bool daily=true;
  DealsModel? _selectedProduct;
  bool yearly=false;
  bool menu=false;
  String qrURL="";

  bool _showPopup = false;
  double _popupHeight = 0;

  void _showProductPopup(DealsModel product) {
    setState(() {
      _showPopup = true;
      _selectedProduct = product;
      _popupHeight = MediaQuery.of(context).size.height * 0.8;

    });
    showDialog(
      context: context,
      builder: (context){
        return GestureDetector(
          onVerticalDragUpdate: _handleDrag,
          onVerticalDragEnd: _handleDragEnd,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: AlertDialog(
              title: Center(child:  TextWidget(
                  input:_selectedProduct!.dealName,
                  fontsize: 18,
                  fontWeight: FontWeight.w700,
                  textcolor: MyColors.blue),),
            content: _selectedProduct!=null?
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: _popupHeight,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Image.asset(
                          _selectedProduct!.dealImg,
                          height: 160,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextWidget(
                          input:_selectedProduct!.dealDetail,
                          fontsize: 14,
                          fontWeight: FontWeight.w700,
                          textcolor: MyColors.blue),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextWidget(
                          input:"Quantity:${_selectedProduct!.dealQty}",
                          fontsize: 14,
                          fontWeight: FontWeight.w700,
                          textcolor: MyColors.blue),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextWidget(
                          input:"Price:"+_selectedProduct!.dealPrice,
                          fontsize: 14,
                          fontWeight: FontWeight.w700,
                          textcolor: MyColors.blue),
                    ),
                    BtnNullHeightWidth(
                      title: "Redeem",
                      bgcolour: (daily)?MyColors.blue:MyColors.whiteColor,
                      disablecolor: MyColors.yellowColor,
                      textcolour: (daily)?MyColors.whiteColor:MyColors.black,
                      onPress: () {



                      },
                      width: MediaQuery.of(context).size.width,
                      height: 48,
                    ),

                  ],
                ),
              ),
            ):TextWidget(
                input:"cnt show",
                fontsize: 18,
                fontWeight: FontWeight.w700,
                textcolor: MyColors.blue),

      ),
          ),
        );},
    );

  }

  void _handleDrag(DragUpdateDetails details) {
    setState(() {
      _popupHeight -= details.delta.dy;
      if (_popupHeight < 0) {
        _popupHeight = 0;
      }
    });
  }

  void _handleDragEnd(DragEndDetails details) {
    if (_popupHeight < MediaQuery.of(context).size.height * 0.5) {
      setState(() {
        Navigator.pop(context);
        _popupHeight = 0;
        _selectedProduct = null;
      });
    } else {
      setState(() {
        _popupHeight = MediaQuery.of(context).size.height * 0.8;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<DealsModel> dealModel=[
      DealsModel("assets/images/bgg.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Burgers","1","120"),
      DealsModel("assets/images/burgerdeal.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Zinger","2","120"),
      DealsModel("assets/images/bgg.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Burgers","3","120"),

      DealsModel("assets/images/burgerdeal.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Zinger","4","120"),
      DealsModel("assets/images/bgg.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Burgers","5","120"),

      DealsModel("assets/images/burgerdeal.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Zinger","6","120"),
      DealsModel("assets/images/bgg.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Burgers","7","120"),

      DealsModel("assets/images/bgg.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Burgers","8","120"),

      DealsModel("assets/images/burgerdeal.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Zinger","9","120"),
      DealsModel("assets/images/bgg.png", "lorem ipsum detai is coming from backend of product this product is use for mutiple xyxz you can redeem this deal using your qr etx asadsadsad", "5", "Free Burgers","10","120"),

    ];
    // TODO: implement build
    restaurantModel= ModalRoute.of(context)!.settings.arguments as RestaurantModel;
    print(restaurantModel.restaurantId);
    return Scaffold(
      appBar: ToolbarBack(appBar: AppBar(), title: restaurantModel.restaurantName,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: MyColors.whiteColor,
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: MyColors.blackColor24, width: 1.0)),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: 150,
                      fit: BoxFit.fill,
                    ),
                    QrImage(
                      size: 80,
                      data: qrURL,
                      version: QrVersions.auto,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      errorCorrectionLevel: QrErrorCorrectLevel.Q,
                    ),
                  ],
                ),
              ),
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
                    final restModel=dealModel[index];
                    return GestureDetector(
                      onTap:(){
                        _showProductPopup(restModel);
                        },
                      child:
                      Card(
                        color: MyColors.whiteColor,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: MyColors.blackColor24, width: 1.0)),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                restModel.dealImg,
                                height: 130,
                                fit: BoxFit.fill,
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextWidget(
                                  input:restModel.dealName,
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                  textcolor: MyColors.blue),
                            ),
                          ],
                        ),
                      ),
                    );
                  },   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                ),),
              ),



            ],
          ),
        ),
      ),

    );
  }
}

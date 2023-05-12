import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:savingpool/Models/DealsModel.dart';
import 'package:savingpool/Models/RestaurantModel.dart';
import 'package:savingpool/MyColors.dart';
import 'package:savingpool/widgets/BtnNullHeightWidth.dart';
import 'package:savingpool/widgets/CardHomeWidget.dart';
import 'package:savingpool/widgets/TextWidget.dart';
import 'package:savingpool/widgets/Toolbar.dart';
class ProductDetailsPopup extends StatefulWidget {
  @override
  _ProductDetailsPopupState createState() => _ProductDetailsPopupState();
}

class _ProductDetailsPopupState extends State<ProductDetailsPopup> {
  double _containerHeight = 600.0; // initial height of the container

  void _handleVerticalDragUpdate(DragUpdateDetails details) {
    setState(() {
      _containerHeight -= details.delta.dy; // update the height based on drag distance
    });
  }

  void _handleVerticalDragEnd(DragEndDetails details) {
    if (_containerHeight < MediaQuery.of(context).size.height / 2) {
      setState(() {
        _containerHeight = 0; // animate container to fully closed state
      });
    } else {
      setState(() {
        _containerHeight = MediaQuery.of(context).size.height; // animate container to fully open state
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: _handleVerticalDragUpdate,
      onVerticalDragEnd: _handleVerticalDragEnd,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: _containerHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            // your product details widgets go here
          ],
        ),
      ),
    );
  }
}

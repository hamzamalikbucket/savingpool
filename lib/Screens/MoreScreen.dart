
import 'package:flutter/material.dart';
import 'package:savingpool/widgets/TextWidget.dart';


import '../Constants.dart';
import '../MyColors.dart';
import '../Utils.dart';
import 'package:savingpool/widgets/Toolbar.dart';

class MoreScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyaccountState();
  }
}

class _MyaccountState extends State<MoreScreen> {
  final GlobalKey<ScaffoldState> _ScaffoldAccountKey =
  new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      key: _ScaffoldAccountKey,
      appBar: ToolbarBack(appBar: AppBar(), title: "More",),

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
                  padding: const EdgeInsets.only(right:8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(
                              Icons.fastfood_outlined,
                              size: 25.0,
                              color: MyColors.blue,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextWidget(
                                  input:"Food",
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                  textcolor: MyColors.blue),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15.0,
                        color: MyColors.blue,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Divider(
                    thickness: 1,
                    color: MyColors.blackColor12,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right:8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(
                              Icons.rate_review_outlined,
                              size: 25.0,
                              color: MyColors.blue,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextWidget(
                                  input:"Rate Your Visit",
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                  textcolor: MyColors.blue),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15.0,
                        color: MyColors.blue,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Divider(
                    thickness: 1,
                    color: MyColors.blackColor12,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right:8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(
                              Icons.contact_support_outlined,
                              size: 25.0,
                              color: MyColors.blue,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextWidget(
                                  input:"COntact Us",
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                  textcolor: MyColors.blue),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15.0,
                        color: MyColors.blue,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Divider(
                    thickness: 1,
                    color: MyColors.blackColor12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(
                              Icons.question_answer_outlined,
                              size: 25.0,
                              color: MyColors.blue,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextWidget(
                                  input:"FAQ",
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                  textcolor: MyColors.blue),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15.0,
                        color: MyColors.blue,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Divider(
                    thickness: 1,
                    color: MyColors.blackColor12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(
                              Icons.privacy_tip_outlined,
                              size: 25.0,
                              color: MyColors.blue,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextWidget(
                                  input:"Terms & Conditions",
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                  textcolor: MyColors.blue),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15.0,
                        color: MyColors.blue,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Divider(
                    thickness: 1,
                    color: MyColors.blackColor12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(
                              Icons.support_agent,
                              size: 25.0,
                              color: MyColors.blue,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextWidget(
                                  input:"Help & Suport",
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                  textcolor: MyColors.blue),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15.0,
                        color: MyColors.blue,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Divider(
                    thickness: 1,
                    color: MyColors.blackColor12,
                  ),
                ),
                Padding(
                   padding: const EdgeInsets.only(right:8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(
                              Icons.login_outlined,
                              size: 25.0,
                              color: MyColors.blue,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextWidget(
                                  input:"LogOut",
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                  textcolor: MyColors.blue),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
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
  showAlertDialog(BuildContext context) {

    // set up the buttons
    Widget cancelButton = ElevatedButton(
      child: Text("Cancel"),
      onPressed:  () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = ElevatedButton(
      child: Text("Continue"),
      onPressed:  () {
        Navigator.pop(context,true);


      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title:Image.asset(
        'assets/images/logo.png',
        height: 100.0,
      ),
      content: Text("Are you sure you want to logout?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

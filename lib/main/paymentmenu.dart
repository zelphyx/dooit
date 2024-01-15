import 'package:flutter/material.dart';
import 'package:dooit/main/reusedonly.dart';

class paymentmenu extends StatelessWidget {
  const paymentmenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
    child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: paymentMenuItems.map((menuItem) {
    return Column(
    children: [
      Expanded(
        child: CustomButton(
          onPressed: () {},
          buttonColor: Color(0xFFC9E7FF),
          iconData: menuItem.iconData,
          iconColor: Color(0xFF0053B4),
        ),
      ),
      SizedBox(height: MediaQuery.of(context).size.height * 0.02),
      Expanded(
        child: customtext(
          text: menuItem.text,
          color: Colors.black,
          fontSize: 10.0,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          height: 0,
          letterSpacing: 0.2,
        ),
      ),
    ],
    );
    }).toList(),
    ),
    ),
      )
    );
  }
}

class PaymentMenuItem {
  final IconData iconData;
  final String text;

  PaymentMenuItem({required this.iconData, required this.text});
}


List<PaymentMenuItem> paymentMenuItems = [
  PaymentMenuItem(iconData: Icons.electric_bolt, text: 'PLN'),
  PaymentMenuItem(iconData: Icons.wifi, text: 'WiFi'),
  PaymentMenuItem(iconData: Icons.wordpress, text: 'Web'),
  PaymentMenuItem(iconData: Icons.auto_graph, text: 'Invest'),
  PaymentMenuItem(iconData: Icons.videogame_asset, text: 'Game'),
  PaymentMenuItem(iconData: Icons.water_drop_rounded, text: 'PDAM'),
  PaymentMenuItem(iconData: Icons.phone_android, text: 'Phone'),
  PaymentMenuItem(iconData: Icons.monitor_heart_outlined, text: 'BPJS'),
];
const Color buttonColor = Color(0xFFC9E7FF);
const Color iconColor = Color(0xFF0053B4);
const double buttonSize = 50.0;
const double fontSize = 12.0;
const String fontFamily = 'Poppins';
const double textHeight = 1.0;
const double spacingBetweenTextAndButton = 8.0;


Widget buildPaymentMenu(BuildContext context) {
  final int numColumns = 4;
  final int numRows = (paymentMenuItems.length / numColumns).ceil();


  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: SingleChildScrollView(
      child: Column(
        children: List<Widget>.generate(numRows, (rowIndex) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(numColumns, (colIndex) {
                  final index = rowIndex * numColumns + colIndex;
                  if (index >= paymentMenuItems.length) {
                    return SizedBox();
                  }
                  final menuItem = paymentMenuItems[index];
                  return Expanded(
                    child: Column(
                      children: [
                        CustomButton(
                          onPressed: () {},
                          buttonColor: buttonColor,
                          iconData: menuItem.iconData,
                          iconColor: iconColor,
                          buttonsize: buttonSize,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        customtext(
                          text: menuItem.text,
                          color: Colors.black,
                          fontSize: fontSize,
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.w400,
                          height: textHeight,
                          letterSpacing: 0.2,
                        ),
                      ],
                    ),
                  );
                }),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            ],
          );
        }),
      ),
    ),
  );
}





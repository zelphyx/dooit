import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dooit/controller/controllertext.dart';

class Constants {
  static const double cardElevation = 1.0;
  static const double cardBorderRadius = 15.0;
  static const double buttonBorderRadius = 10.0;
  static const Color buttonColor = Colors.blue;
  static const Color buttonColor2 = Colors.white;
  static const Color iconColor = Color(0xFF0053B4);
}

class reusedonly extends GetView<textcontroller> {
  const reusedonly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class customtext extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final String fontFamily;
  final FontWeight fontWeight;
  final double height;
  final double? letterSpacing;

  customtext({
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontFamily,
    required this.fontWeight,
    required this.height,
    this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        height: height,
        letterSpacing: letterSpacing,
      ),
    );
  }
}

class cardcustom extends GetView<textcontroller> {
  final double width;
  final double height;

  cardcustom({required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: Constants.cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.cardBorderRadius),
      ),
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.94, 0.35),
            end: Alignment(-0.94, -0.35),
            colors: [Color(0xFF6D70EA), Color(0xFF6BAFF4)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Constants.cardBorderRadius),
          ),
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: customtext(
                  text: 'Balance',
                  color: Colors.white,
                  fontSize: 16.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                ),
              ),
              customtext(
                text: (controller.saldo.value.toString()),
                color: Colors.white,
                fontSize: 40.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: Column(
                      children: [
                        CustomButton(
                          onPressed: () {},
                          buttonColor: Constants.buttonColor2,
                          iconData: Icons.account_balance_wallet_sharp,
                          iconColor: Constants.iconColor,
                        ),
                        SizedBox(height: 8.0),
                        customtext(
                            text: 'Pay',
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: Column(
                      children: [
                        CustomButton(
                          onPressed: () {},
                          buttonColor: Constants.buttonColor2,
                          iconData: Icons.input_rounded,
                          iconColor: Constants.iconColor,
                        ),
                        SizedBox(height: 8.0),
                        customtext(
                            text: 'Topup',
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: Column(
                      children: [
                        CustomButton(
                          onPressed: () {},
                          buttonColor: Constants.buttonColor2,
                          iconData: Icons.qr_code_scanner,
                          iconColor: Constants.iconColor,
                        ),
                        SizedBox(height: 8.0),
                        customtext(
                            text: 'Scan',
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0)
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color buttonColor;
  final IconData? iconData;
  final Color iconColor;
  final double buttonsize;

  CustomButton({
    required this.onPressed,
    this.buttonColor = Constants.buttonColor,
    this.iconData,
    this.iconColor = Constants.iconColor,
    this.buttonsize = 55.0
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: Constants.cardElevation,
      borderRadius: BorderRadius.circular(Constants.buttonBorderRadius),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Constants.buttonBorderRadius),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(Constants.buttonBorderRadius),
          child: Container(
            height: buttonsize,
            width: buttonsize,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(Constants.buttonBorderRadius),
            ),
            child: Center(
              child: Icon(
                iconData,
                color: iconColor,
                size: 30.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PurchaseHistoryItem extends StatelessWidget {
  final String productName;
  final double price;
  final String date;
  final IconData? iconData;

  PurchaseHistoryItem({
    required this.iconData,
    required this.productName,
    required this.price,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        leading: Icon(iconData),
        title: Text(
          productName,
          style: TextStyle(
            fontFamily: 'Poppins',
            letterSpacing: 0.4,
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          date,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 10,
          ),
        ),
        trailing: Text(
          '\$${price.toStringAsFixed(2)}',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15,
          ),
        ),
      ),
    );

  }
}

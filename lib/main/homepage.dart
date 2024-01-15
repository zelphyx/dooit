import 'package:dooit/main/paymentmenu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dooit/controller/controllertext.dart';
import 'package:dooit/main/reusedonly.dart';


class homepage extends GetView<textcontroller> {
  const homepage({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                        customtext(text: controller.name.value.toString(), color: Colors.blue,fontSize: 20.0, fontFamily: 'Poppins', fontWeight: FontWeight.w600, height: 1.5,
                        ),
                        customtext(text: 'Welcome!', color: Colors.grey, fontSize: 12.0, fontFamily: 'Poppins', fontWeight: FontWeight.w500, height: 1,
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.03)
                      ],
                    ),
                  ),
                ),
                Align(alignment: Alignment.topRight,
                  child: Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 20,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: cardcustom(width: MediaQuery.of(context).size.width * 0.9, height: 292.5,),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Align(
            alignment: Alignment.center,
            child: customtext(text: 'Payment Menu', color: Colors.black, fontSize: 20.0, fontFamily: 'Poppins', fontWeight: FontWeight.w700, height: 1.5, letterSpacing: 0.2,),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          buildPaymentMenu(context),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Row(
          children: [
            Expanded(
            child: Align(
            alignment: Alignment.center,
            child: customtext(text: 'History Pembayaran', color: Colors.black, fontSize: 20.0, fontFamily: 'Poppins', fontWeight: FontWeight.w600, height: 1.5, letterSpacing: 0.2,
                ),
              ),
    ),
          ],
        ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          PurchaseHistoryItem(iconData: Icons.fastfood, productName: 'Ayamku', price: 125, date: '12-05-2022',),
          PurchaseHistoryItem(iconData: Icons.shopping_bag, productName: 'Baju Batik', price: 1500, date: '12-09-2021'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.09),
                  ],
      ),
    );
  }
}











import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dooit/controller/controllertext.dart';
import 'package:dooit/main/reusedonly.dart';



class history extends GetView<textcontroller> {
  const history({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
            children: [
              Expanded(
                  child: Align(
                      alignment: Alignment.center,
                      child: customtext(
                        text: 'History Pembayaran',
                        color: Colors.black,
                        fontSize: 18.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        letterSpacing: 0.2,
                      )
                  )
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              PurchaseHistoryItem(
                iconData: Icons.fastfood,
                productName: 'Ayamku',
                price: 125,
                date: '12-05-2022',
              ),
              PurchaseHistoryItem(iconData: Icons.shopping_bag, productName: 'Baju Batik', price: 1500, date: '12-09-2021'),
              SizedBox(height: MediaQuery.of(context).size.height * 0.09),
            ]

        )

    );
  }
  }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dooit/controller/controllertext.dart';
import 'package:dooit/main/reusedonly.dart';


class username extends GetView<textcontroller> {
  const username({Key? key}) : super(key: key);


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
                            customtext(
                              text: controller.name.value.toString(),
                              color: Colors.blue,
                              fontSize: 20.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 1.5,
                            ),
                            customtext(
                              text: 'Welcome!',
                              color: Colors.grey,
                              fontSize: 12.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 1,
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.03)
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
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
            ]
        )
    );
  }
}
import 'package:aindriya_machinetest2/invoicedetail.dart';
import 'package:flutter/material.dart';
import 'notification.dart';
import 'addbill.dart';
import 'invoice.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title : "invoice",


      home : Invoicepage(),           //change to view pages
      //home: Addbill(),
      //home : NotificationScreen(),
      //home: Invoicedetails(),



    );
  }
}

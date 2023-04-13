import 'package:flutter/material.dart';

import 'addbill.dart';
import 'invoicedetail.dart';

class NotificationScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();

  NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color.fromARGB(255, 212, 160, 177),
              Color.fromARGB(255, 195, 230, 247)
            ],
            radius: 1,
            center: Alignment.topLeft,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          colors: [Colors.white70, Colors.transparent],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: IconButton(
                        onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Addbill()));},
                        icon: const Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Notifications',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              bottom: 0,
              child: Stack(
                children: [
                  GestureDetector(onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Invoicedetails()));
                  },
                    child: Container(
                      height: 90,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(18)
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              maxRadius: 25,
                              //backgroundColor: Colors.blue,
                              backgroundImage: AssetImage('lib/images/noti1.png'),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                text: "MyG ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Kakkanad",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " has approved your invoice of ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.blueGrey,
                                      fontSize: 20,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "128",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Points ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.blueGrey,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 200,
              left: 0,
              right: 0,
              bottom: 0,
              child: Stack(
                children: [
                  Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(18)
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              maxRadius: 25,
                              backgroundColor: Colors.blue,
                              backgroundImage: AssetImage('lib/images/noti2.png'),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                text: "Ayur ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Pharma",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " has approved your invoice of ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.blueGrey,
                                      fontSize: 20,
                                    ),
                                  ),
                                  TextSpan(
                                text: "600 ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                                  ),
                                  TextSpan(
                                    text: " Points",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.blueGrey,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),


            Positioned(
              top: 300,
              left: 0,
              right: 0,
              bottom: 0,
              child: Stack(
                children: [
                  Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(18)
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              maxRadius: 25,
                              backgroundColor: Colors.blue,
                              backgroundImage: AssetImage('lib/images/noti3.png'),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                text: "You successfully added ",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.blueGrey,
                                  fontSize: 20,
                                ),
                                children: [
                                  TextSpan(
                                    text: "500",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " wonder points to your wallet",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.blueGrey,
                                      fontSize: 20,
                                    ),
                                  ),

                                ],
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 400,
              left: 0,
              right: 0,
              bottom: 0,
              child: Stack(
                children: [
                  Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(18)
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start, //
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              maxRadius: 25,
                              backgroundColor: Colors.blue,
                              backgroundImage: AssetImage('lib/images/noti4.png'),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                text: "Puma ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Idappilly",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " has declined your invoice of ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.blueGrey,
                                      fontSize: 20,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "725",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Points ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.blueGrey,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),//
                ],
        )   )      );
  }
}

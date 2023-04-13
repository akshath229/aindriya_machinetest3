import 'package:flutter/material.dart';

import 'addbill.dart';

class Invoicepage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();

  Invoicepage({Key? key}) : super(key: key);

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
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8),
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
                    onPressed: () {
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: const EdgeInsets.only(top: 80, left: 20),


                child: Column(
                  children: [
                    MyTextField(
                      controller: usernameController,
                      hintText: 'Eg: 6846546546',
                      obscureText: false,
                      labelText: 'Enter the invoice number',
                    ),
                    const SizedBox(height: 10),



                    SizedBox(
                      height: 400,
                      child: Center(
                        child: Image.network(
                          'lib/images/image 4.png',
                          width: 300, //
                          height: 300, //
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {

                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            minimumSize: const Size(150, 50),
                        ),
                          child: const Text('< Back',
                            style: TextStyle(
                              color: Colors.deepPurple,
                            ),
                          ),),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Addbill()));
                            //
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple,
                            minimumSize: const Size(150, 50),
                        ),
                          child: const Text('Next >',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                        ),
                        ),],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final bool obscureText;

  MyTextField({
    required this.controller,
    required this.hintText,
    required this.labelText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: const TextStyle(color: Colors.deepPurple),
          ),
          const SizedBox(height: 5),
          TextField(
            controller: controller,
            obscureText: obscureText,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: hintText,
              filled: true,
              fillColor: Colors.white,
              border: const OutlineInputBorder(

              ),
          ),
        ),
          ],
        ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
import 'notification.dart';

class Invoicedetails extends StatelessWidget {
  const Invoicedetails({super.key});

  @override
  Widget build(BuildContext context) {
    RangeValues _currentRangeValues = const RangeValues(20, 60);
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 212, 160, 177),
                  Color.fromARGB(255, 195, 230, 247)
                ],
              ),
            ),
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => NotificationScreen()));
                              },
                              child: Container(
                                width: 50,
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.arrow_back_ios,
                                        color:
                                        Color.fromARGB(255, 12, 87, 148)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Invoice Approval Request',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  '28 Dec 2022,19:30',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 250,
                        decoration: BoxDecoration(
                            color: Color(0x99ffffff),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Invoice  Amount of',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                    Container(
                                      width: 90,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 181, 180, 180),
                                          borderRadius:
                                          BorderRadius.circular(8)),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Text('RS 1850',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 11, 103, 178),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  width: 1,
                                  height: 30,
                                  color: Colors.white,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Invoice Number',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                    Text(
                                      '45656564131',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Invoice Date',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                    Text(
                                      '26,Dec,2022',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(
                              color: Colors.white,
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                            ),
                            Column(children: [
                              Row(
                                children: [
                                  Text(
                                    ' Requested To',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 48,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      color: Colors.white,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('lib/images/myg.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            'MyG Kakkanad',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              height: 1.375,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '+91 946666465658',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                            height: 1.5714285714,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 160,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'lib/images/phonecall.png',
                                          width: 15,
                                          height: 15,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ]),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(28, 17, 21, 17),
                        width: double.infinity,
                        height: 104,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border(),
                          gradient: LinearGradient(
                            begin: Alignment(-0.76, -1.224),
                            end: Alignment(1, 1.271),
                            colors: <Color>[
                              Color(0xbfffffff),
                              Color(0x51ffffff)
                            ],
                            stops: <double>[0, 1],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text(
                                'Request Status',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  height: 1.1725,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 7),
                              width: 342,
                              height: 21,
                            ),
                            Container(
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 89, 0),
                                    child: Text(
                                      'Requested',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        height: 1.1725,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 103, 0),
                                    child: Text(
                                      'Pending',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        height: 1.1725,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Approved',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      height: 1.1725,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                        Text('Invoice Copy',style: TextStyle(color: Colors.black),)
                      ],),
                      Container(
                        width: double.infinity,
                        height: 450,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'lib/images/detailsphoto.png',
                                ),
                                fit: BoxFit.fill)),
                      )
                    ]))));
  }
}

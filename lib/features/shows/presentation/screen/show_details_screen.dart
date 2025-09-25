import 'dart:ui';
import 'package:flutter/material.dart';

class ShowDetailsScreen extends StatelessWidget {
  const ShowDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset('assets/images/ds.png', fit: BoxFit.fill),
              ),
              Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Color(0xff2C1E51)),
                    ),
                    ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                      child: _transparentContainer(context),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 75),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xffD9D9D9).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xffD9D9D9).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xffD9D9D9).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.visibility_sharp,
                                  color: Colors.white,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(fontSize: 18),
                                    children: [
                                      TextSpan(
                                        text: "2.3M",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " views",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.handshake_outlined,
                                  color: Colors.white,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(fontSize: 18),
                                    children: [
                                      TextSpan(
                                        text: "2K",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " clap",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.medical_information_outlined,
                                  color: Colors.white,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(fontSize: 18),
                                    children: [
                                      TextSpan(
                                        text: "4",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " seasons",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 170,
            left: 30,
            right: 30,
            child: Image.asset('assets/images/ds_logo.png'),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff16103C),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 170,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9).withOpacity(0.2),
                borderRadius: BorderRadius.circular(37),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 170,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xff6758FE),
                borderRadius: BorderRadius.circular(37),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _transparentContainer(BuildContext context) {
    return Stack(
      children: [
        // Top-right ellipse
        Positioned(
          top: -40,
          right: 0,
          child: Image.asset('assets/images/Ellipse_1.png'),
        ),

        // Bottom-left ellipse
        Align(
          alignment: Alignment.bottomLeft,
          child: Image.asset('assets/images/Ellipse_2.png'),
        ),
      ],
    );
  }
}
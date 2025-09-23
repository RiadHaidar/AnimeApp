import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Raleway"),
      home: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              //0xffDDE2FF
              //#D3D6FF
              gradient: LinearGradient(
                colors: [Color(0xffD3D6FF), Colors.white],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 0.7),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ), //#DDE
            ),
            child: Scaffold(
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                title: Text(
                  'Upgrade Plan',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    letterSpacing: 1.5,
                  ),
                ),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                ],
              ),
              backgroundColor: Colors.transparent,
              body: Stack(
                children: [
                  Positioned(
                    left: -140,
                    top: -100,
                    child: Image.asset(
                      'assets/images/Star_2.png',
                      fit: BoxFit.fill,
                    ),
                  ),

                  Positioned(
                    top: 100,
                    left: 100,
                    right: 100,

                    child: Container(
                      height: 250,
                      width: 250,
                      child: Image.asset('assets/images/payment_logo.png',
                      fit: BoxFit.cover,
                      
                      ),
                    ),
                  ),

                  Positioned(
                    right: -145,
                    top: 200,
                    child: Image.asset(
                      'assets/images/Star_1.png',
                      fit: BoxFit.fill,
                    ),
                  ),

                  Positioned(
                    top: 350,
                    right: 50,
                    left: 50,
                    child: Text(
                      textAlign: TextAlign.center,
                      'Seamless Anime \nExperiencem Ad-Free.',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff18153F),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 420,
                    right: 50,
                    child: Container(
                      width: 300,
                      child: Text(
                        textAlign: TextAlign.center,
                        'Enjoy unlimited anime streaming without interruptions.',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffAEADB5),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 200,
                    right: 30,
                    left: 30,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 5
                      ),
                      margin: EdgeInsets.only(bottom: 20),
                      width: 342,
                      height: 102,
                      decoration: BoxDecoration(
                        color: Color(0xff18153F),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/files_folders.png'),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Monthly',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '\$5 USD ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '/Month',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,

                                        color: Color(0xffA49AD8),
                                      ), //#A49AD8
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                'Include Family Sharing',
                                style: TextStyle(
                                  color: Color(0xffA49AD8),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          IconButton(disabledColor:Colors.white ,
                            
                            
                            onPressed: (){}, icon: Icon(
                            
                            Icons.close_rounded,
                          ))
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 100,
                    right: 50,
                    left: 50,
                    child: Container(
                      width: 342,
                      height: 102,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff18153F).withValues(alpha: 0.2),
                            blurRadius: 0.5,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/drawer_content.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/mobile_header.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/profile_photo.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/web_header.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/welcome_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        endDrawer: const Drawer(
            backgroundColor: Color.fromARGB(255, 2, 58, 49),
            child: DrawerContent()),
        body: ListView(
          children: [
            Container(
              height: 500,
              color: Colors.black,
              child: Column(
                children: [
                  if (constraints.maxWidth >= 670)
                    const WebHeader()
                  else
                    MobileHeader(
                      onTapDrawer: () {
                        scaffoldKey.currentState?.openEndDrawer();
                      },
                    ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WelcomeText(),
                      //const SizedBox(width: 100,),
                      SlideInCircleImage()
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 500,
              color: const Color.fromARGB(255, 114, 106, 106),
              child: Column(
                children: [
                  const Text(
                    "What I Can Do",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.amber,
                          height: 300,
                          child: Wrap(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                width: 200,
                                height: 100,
                                color: Colors.amberAccent,
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.android,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Android Dev",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                width: 200,
                                height: 100,
                                color: Colors.amberAccent,
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.apple,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Web Dev",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                width: 200,
                                height: 100,
                                color: Colors.amberAccent,
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.apple,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Desktop Dev",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                width: 200,
                                height: 100,
                                color: Colors.amberAccent,
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.apple,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "IOS Dev",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // child: Column(
                          //   spacing: 20,
                          //   children: [
                          //   Row(children: [
                          //     Container(
                          //       padding: EdgeInsets.symmetric(horizontal: 20),
                          //    //   width: 200,
                          //       height: 100,
                          //       color: Colors.amberAccent,
                          //      child: Row(children: [
                          //       Icon(Icons.apple,color:Colors.white,),
                          //       SizedBox(width: 10,),
                          //       Text("IOS Dev",style:  TextStyle(color: Colors.white),)
                          //      ],),
                          //     ),
                          //     SizedBox(width: 20,),
                          //       Container(
                          //       padding: EdgeInsets.symmetric(horizontal: 20),
                          //     //  width: 200,
                          //       height: 100,
                          //       color: Colors.amberAccent,
                          //      child: Row(children: [
                          //       Icon(Icons.apple,color:Colors.white,),
                          //       SizedBox(width: 10,),
                          //       Text("IOS Dev",style:  TextStyle(color: Colors.white),)
                          //      ],),
                          //     ),

                          //   ],),
                          //     Row(
                          //       children: [
                          //         Container(
                          //           padding: EdgeInsets.symmetric(horizontal: 20),
                          //                                      //   width: 200,
                          //           height: 100,
                          //           color: Colors.amberAccent,
                          //          child: Row(children: [
                          //           Icon(Icons.apple,color:Colors.white,),
                          //           SizedBox(width: 10,),
                          //           Text("IOS Dev",style:  TextStyle(color: Colors.white),)
                          //          ],),
                          //         ),
                          //          SizedBox(width: 20,),
                          //       Container(
                          //       padding: EdgeInsets.symmetric(horizontal: 20),
                          //     //  width: 200,
                          //       height: 100,
                          //       color: Colors.amberAccent,
                          //      child: Row(children: [
                          //       Icon(Icons.apple,color:Colors.white,),
                          //       SizedBox(width: 10,),
                          //       Text("IOS Dev",style:  TextStyle(color: Colors.white),)
                          //      ],),
                          //     ),
                          //       ],
                          //     ),

                          // ],),
                          // width: MediaQuery.of(context).size.width * .4,
                          // constraints: BoxConstraints(
                          //     maxWidth: MediaQuery.of(context).size.width * .6,
                          //     minWidth: MediaQuery.of(context).size.width * .5),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.amber,
                          height: 300,
                          // width: MediaQuery.of(context).size.width * .4,
                          // constraints: BoxConstraints(
                          //     maxWidth: MediaQuery.of(context).size.width * .6,
                          //     minWidth: MediaQuery.of(context).size.width * .5),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 500,
              color: const Color.fromARGB(255, 202, 65, 65),
            ),
            Container(
              height: 500,
              color: const Color.fromARGB(255, 21, 163, 28),
            )
          ],
        ),
      );
    });
  }
}

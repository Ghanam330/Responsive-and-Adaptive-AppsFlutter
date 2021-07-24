import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_pps/desktob.dart';
import 'package:responsive_and_adaptive_pps/desktopScreen.dart';
import 'package:responsive_and_adaptive_pps/mobile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        home:




        //  Handling responsive


        Builder(
        builder: (BuildContext context){
          if( MediaQuery.of(context).size.width.toInt()
              <= 560 ){
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 0.5
            ),
            child:MobileScreen() );
          }
          return DesktopScreen();
        },
       ),



      // طريق  تانيه

      // Builder(
       //   builder: (BuildContext context){
       //     return MediaQuery.of(context).size.width.toInt()
       //         <= 560 ? MobileScreen() : DesktopScreen();
       //
       //   },
       // ),



       // طريق  تانيه


      // LayoutBuilder(
      //   builder: (BuildContext context, BoxConstraints constraints) {
      //     print(constraints.maxWidth.toInt());
      //
      //     return constraints.minWidth.toInt() <= 560 ? MobileScreen() : DesktopScreen();
      //   },
      // ),



    );
  }
}

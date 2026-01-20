import 'package:flutter/material.dart';
import 'package:flutter_iot_second_app/views/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    //เรียกใช้งานคลาสที่เรียกใช้ widget หลักของแอป
    FlutterIoTSecondApp(),
  );
}

//--------------------------------------------
class FlutterIoTSecondApp extends StatefulWidget {
  const FlutterIoTSecondApp({super.key});

  @override
  State<FlutterIoTSecondApp> createState() => _FlutterIoTSecondAppState();
}

class _FlutterIoTSecondAppState extends State<FlutterIoTSecondApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //ซ่อนป้าย dabag คาดสีแดง
      debugShowCheckedModeBanner: false,
      //กำหนดหน้าจอแรก เปลี่ยนสีแอป
      home: HomeUi(),
      //กำหนด ทีม โดยเฉพาะ font หลักของแอป
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
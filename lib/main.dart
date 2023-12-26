import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'Screen/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(ABC());
}

class ABC extends StatefulWidget {
  const ABC({super.key});

  @override
  State<ABC> createState() => _ABCState();
}

class _ABCState extends State<ABC> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}


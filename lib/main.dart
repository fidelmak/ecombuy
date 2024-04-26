import 'package:ecombuy/1aaaa/provider/counter_model.dart';
import 'package:ecombuy/const/colors.dart';
import 'package:ecombuy/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '1aaaa/provider/demo_app.dart';
import '1aaaa/sim.dart';
import 'unlogged_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: MaterialApp(
        //home: DemoPag(),
        debugShowCheckedModeBanner: false,
        title: 'ecombuy',
        initialRoute: UnloggedScreen.id,
        routes: {
          UnloggedScreen.id: (context) => Scaffold(
              backgroundColor: textWhite,
              body: const SafeArea(child: UnloggedScreen())),
          SignIn.id: (context) => const SignIn(),
        },
      ),
    );
  }
}

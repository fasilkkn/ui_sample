
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_sample/controller/register_controller.dart';
import 'package:ui_sample/screen/spalsh_screen.dart';
import 'package:ui_sample/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => RegisterController()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: 'Poppins',
            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.buttonColor),
            useMaterial3: true,
          ),
          home: const SplashScreen(),
        ));
  }
}

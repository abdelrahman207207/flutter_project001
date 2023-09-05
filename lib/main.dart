
import 'package:Food_Station/Orders.dart';
import 'package:flutter/material.dart';
import 'package:Food_Station/SplashScreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'HomeScreen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'Login_screen/cubit/login_cubit.dart';
import 'Register/cubit/signup_cubit.dart';
import 'category.dart';
import 'helper/DioHelper.dart';
import 'helper/hive_helper.dart';

void main()async {
  await Hive.initFlutter();
  await Hive.openBox(HiveHelper.myToken);
  DioHelper.init();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
        BlocProvider(
        create: (context) => LoginCubit(),
    ),
        BlocProvider(create: (context)=>SignupCubit())
    ],

    child: GetMaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,

      home: orders() ,

      debugShowCheckedModeBanner: false,
    )
    );
  }
}

import 'package:flutter/material.dart';
import "package:easy_localization/easy_localization.dart";
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shimmer/main.dart';

import 'package:firebase_core/firebase_core.dart';
import 'core/constants/app_colors.dart';
import 'core/utils/di.dart';
import 'firebase_options.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:elaro_app/core/app/main_app.dart';
import 'package:elaro_app/core/utils/di.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await serviceLocator();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale("en"), Locale("ru"), Locale("uz")],
      path: "assets/translations",
      fallbackLocale: Locale("en"),
      child: const MainApp(),
    ),
  );
}




// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   try{
//     await Firebase.initializeApp(
//         options: DefaultFirebaseOptions.currentPlatform
//     );
//   }catch(e){}
//   await EasyLocalization.ensureInitialized();
//   await serviceLocator();
//   // await cache.init();
//   // Bloc.observer = const AppBlocObserver();
//   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//     systemNavigationBarColor: AppColor.primary, // navigation bar color
//     statusBarColor: AppColor.primary, // status bar color
//   ));
//   runApp(
//     EasyLocalization(
//       supportedLocales: const <Locale>[
//         Locale('uz'),
//         Locale('en'),
//         Locale('ru'),
//       ],
//       path: 'assets/translations',
//       fallbackLocale: const Locale("uz"),
//       child:  const MainApp(),
//     ),
//   );
// }

extension SpaceExtension on num {
  SizedBox get height => SizedBox(height: toDouble());
  SizedBox get width => SizedBox(width: toDouble());
}
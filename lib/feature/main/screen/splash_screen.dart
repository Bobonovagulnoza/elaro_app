// import 'package:elaro_app/core/constants/app_colors.dart';
// import 'package:elaro_app/core/constants/app_images.dart';
// import 'package:elaro_app/core/network/network_service.dart';
// import 'package:elaro_app/core/routes/app_routes.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:go_router/go_router.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       goToHome(context);
//     });
//   }
//
//   void goToHome(BuildContext context) async {
//     bool hasInternet = await NetworkService.hasConnection();
//     if (!hasInternet && context.mounted) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text("Internet mavjud emas!"),
//           duration: Duration(seconds: 3),
//         ),
//       );
//     }
//     await Future.delayed(Duration(seconds: 3));
//
//     if (context.mounted) {
//       context.go(AppRouter.home);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColor.primary,
//       body: Center(
//         child: SvgPicture.asset(
//           AppImages.logo,
//           color: Colors.white,
//           height: 50,
//         ),
//       ),
//     );
//   }
// }

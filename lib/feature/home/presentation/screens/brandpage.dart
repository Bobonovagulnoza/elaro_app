// import 'package:elaro_app/core/utils/di.dart';
// import 'package:elaro_app/feature/home/data/model/brand_constructr_model.dart';
// import 'package:elaro_app/feature/home/presentation/widget/brands_body.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class BrandPage extends StatelessWidget {
//   final BrandConstructorModel data;
//   const BrandPage({super.key, required this.data});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(data.title)),
//       body: BlocProvider(
//         create:
//             (context) =>
//         sl<BrandBloc>()..add(BrandEvent.fetchData(id: data.brandId)),
//         child: BrandsBody(),
//       ),
//     );
//   }
// }

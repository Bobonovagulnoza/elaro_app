// import 'package:elaro_app/core/constants/app_colors.dart';
// import 'package:elaro_app/core/mapper/brand_to_product_model.dart';
// import 'package:elaro_app/core/widgets/empty_widget.dart';
// import 'package:elaro_app/core/widgets/product_item_widget.dart';
// import 'package:elaro_app/feature/home/data/model/product_model.dart';
// import 'package:elaro_app/feature/home/presentation/blocs/brand/bloc/brand_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class BrandsBody extends StatelessWidget {
//   const BrandsBody({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<BrandBloc, BrandState>(
//       builder: (context, state) {
//         return state.when(
//           loading:
//               () => Center(
//                 child: CircularProgressIndicator(color: AppColor.primary),
//               ),
//           success: (data) {
//             if (data.data?.products?.isEmpty ?? true) {
//               return EmptyWidget();
//             }
//             return GridView.builder(
//               itemCount: data.data?.products?.length ?? 0,
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 childAspectRatio: 1 / 1.6,
//               ),
//               itemBuilder: (context, index) {
//                 return ProductItemWidget(
//                   ontap: () {},
//                   productData:
//                       data.data?.products?[index].toProduct() ?? ProductModel(),
//                 );
//               },
//             );
//           },
//           failure: (failure) => Text(failure.toString()),
//         );
//       },
//     );
//   }
// }

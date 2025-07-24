// import 'package:elaro_app/core/constants/app_colors.dart';
// import 'package:elaro_app/core/widgets/product_item_widget.dart';
// import 'package:elaro_app/core/widgets/shimmer_box.dart';
// import 'package:elaro_app/feature/home/presentation/blocs/new_products/bloc/new_products_bloc.dart';
// import 'package:elaro_app/main.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shimmer/shimmer.dart';
//
// class NewProducts extends StatefulWidget {
//   const NewProducts({super.key});
//
//   @override
//   State<NewProducts> createState() => _NewProductsState();
// }
//
// class _NewProductsState extends State<NewProducts> {
//   @override
//   void initState() {
//     context.read<NewProductsBloc>().add(NewProductsEvent.fetchData());
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<NewProductsBloc, NewProductsState>(
//       builder: (context, state) {
//         return state.when(
//           loading:
//               () => Container(
//             clipBehavior: Clip.none,
//             height: 320,
//             child: ListView.builder(
//               padding: const EdgeInsets.symmetric(
//                 vertical: 10,
//                 horizontal: 10,
//               ),
//               scrollDirection: Axis.horizontal,
//               itemCount: 5,
//               itemBuilder: (context, index) {
//                 return Container(
//                   width: 200,
//                   margin: const EdgeInsets.symmetric(horizontal: 5),
//                   child: Column(
//                     children: [
//                       AspectRatio(
//                         aspectRatio: 1,
//                         child: ShimmerBox(),
//                         // child: Shimmer.fromColors(
//                         //   baseColor: AppColor.lightGray400,
//                         //   highlightColor: AppColor.lightGray500,
//                         //   child: Container(
//                         //     alignment: Alignment.center,
//                         //     margin: EdgeInsets.all(10),
//                         //     padding: EdgeInsets.all(16),
//                         //     decoration: BoxDecoration(
//                         //       borderRadius: BorderRadius.circular(
//                         //         16,
//                         //       ),
//                         //       color: Colors.white,
//                         //     ),
//                         //   ),
//                         // ),
//                       ),
//                       Expanded(
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 12,
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.stretch,
//                             children: [
//                               ShimmerBox(),
//                               8.height,
//                               Shimmer.fromColors(
//                                 baseColor: AppColor.lightGray400,
//                                 highlightColor: AppColor.lightGray500,
//                                 child: Container(
//                                   height: 16,
//                                   decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(16),
//                                   ),
//                                 ),
//                               ),
//                               Spacer(),
//                               Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceBetween,
//                                 children: [ShimmerBox(), ShimmerBox()],
//                               ),
//                               8.height,
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           success:
//               (data) => SizedBox(
//             height: 350,
//             child: ListView.builder(
//               clipBehavior: Clip.none,
//               padding: const EdgeInsets.symmetric(vertical: 10),
//               scrollDirection: Axis.horizontal,
//               itemCount: data.data?.length ?? 0,
//               itemBuilder: (context, index) {
//                 final product = data.data![index].toProductModel();
//                 return ProductItemWidget(
//                   ontap: () {},
//                   productData: product,
//                 );
//               },
//             ),
//           ),
//           failure: (failure) => Text("xatolik: $failure"),
//         );
//       },
//     );
//   }
// }

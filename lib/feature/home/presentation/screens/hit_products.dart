// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:elaro_app/core/constants/app_colors.dart';
// import 'package:elaro_app/core/routes/app_routes.dart';
// import 'package:elaro_app/core/widgets/shimmer_box.dart';
// import 'package:elaro_app/feature/home/presentation/blocs/hit_products/bloc/hit_products_bloc.dart';
// import 'package:elaro_app/main.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
// import 'package:shimmer/shimmer.dart';
// import 'package:zoom_tap_animation/zoom_tap_animation.dart';
//
// class HitProducts extends StatefulWidget {
//   const HitProducts({super.key});
//
//   @override
//   State<HitProducts> createState() => _HitProductsState();
// }
//
// class _HitProductsState extends State<HitProducts> {
//   @override
//   void initState() {
//     context.read<HitProductsBloc>().add(HitProductsEvent.fetchData());
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<HitProductsBloc, HitProductsState>(
//       builder: (context, state) {
//         return state.when(
//           loading:
//               () => Container(
//                 clipBehavior: Clip.none,
//                 height: 320,
//                 child: ListView.builder(
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 10,
//                     horizontal: 10,
//                   ),
//                   scrollDirection: Axis.horizontal,
//                   itemCount: 5,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       width: 200,
//                       margin: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Column(
//                         children: [
//                           AspectRatio(
//                             aspectRatio: 1,
//                             child: ShimmerBox(),
//                             // child: Shimmer.fromColors(
//                             //   baseColor: AppColor.lightGray400,
//                             //   highlightColor: AppColor.lightGray500,
//                             //   child: Container(
//                             //     alignment: Alignment.center,
//                             //     margin: EdgeInsets.all(10),
//                             //     padding: EdgeInsets.all(16),
//                             //     decoration: BoxDecoration(
//                             //       borderRadius: BorderRadius.circular(
//                             //         16,
//                             //       ),
//                             //       color: Colors.white,
//                             //     ),
//                             //   ),
//                             // ),
//                           ),
//                           Expanded(
//                             child: Padding(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 12,
//                               ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                                 children: [
//                                   ShimmerBox(),
//                                   8.height,
//                                   Shimmer.fromColors(
//                                     baseColor: AppColor.lightGray400,
//                                     highlightColor: AppColor.lightGray500,
//                                     child: Container(
//                                       height: 16,
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius: BorderRadius.circular(16),
//                                       ),
//                                     ),
//                                   ),
//                                   Spacer(),
//                                   Row(
//                                     mainAxisSize: MainAxisSize.min,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [ShimmerBox(), ShimmerBox()],
//                                   ),
//                                   8.height,
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//               ),
//           success:
//               (data) => SizedBox(
//                 height: 350,
//                 child: ListView.builder(
//                   clipBehavior: Clip.none,
//                   padding: const EdgeInsets.symmetric(vertical: 10),
//                   scrollDirection: Axis.horizontal,
//                   itemCount: data.data?.length ?? 0,
//                   itemBuilder: (context, index) {
//                     final product = data.data![index];
//                     return ZoomTapAnimation(
//                       onTap: (){context.push(AppRouter.praductdetail);},
//                       child: SizedBox(
//                         width: 200,
//                         child: Column(
//                           children: [
//                             AspectRatio(
//                               aspectRatio: 1,
//                               child: Stack(
//                                 children: [
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       color: Colors.grey[100],
//                                       borderRadius: BorderRadius.circular(16),
//                                     ),
//                                     clipBehavior: Clip.hardEdge,
//                                     child:
//                                         (product.images ?? []).isNotEmpty
//                                             ? Center(
//                                               child: Padding(
//                                                 padding: const EdgeInsets.all(
//                                                   16,
//                                                 ),
//                                                 child: CachedNetworkImage(
//                                                   fit: BoxFit.fitWidth,
//                                                   imageUrl:
//                                                       product
//                                                           .images
//                                                           ?.firstOrNull
//                                                           ?.image ??
//                                                       "",
//                                                   progressIndicatorBuilder:
//                                                       (
//                                                         context,
//                                                         url,
//                                                         progress,
//                                                       ) =>
//                                                           CircularProgressIndicator(),
//                                                 ),
//                                               ),
//                                             )
//                                             : SizedBox(),
//                                   ),
//                                   Positioned(
//                                     top: 6,
//                                     right: 6,
//                                     child: IconButton(
//                                       onPressed: () {},
//                                       icon: Icon(Icons.favorite_outline),
//                                     ),
//                                   ),
//                                   if ((product.discountType ?? "").isNotEmpty)
//                                     Positioned(
//                                       top: 10,
//                                       left: 10,
//                                       child: Container(
//                                         padding: const EdgeInsets.symmetric(
//                                           horizontal: 20,
//                                           vertical: 5,
//                                         ),
//                                         decoration: BoxDecoration(
//                                           color: AppColor.lightGreen,
//                                           borderRadius: BorderRadius.circular(
//                                             8,
//                                           ),
//                                         ),
//                                         child: Text("discount"),
//                                       ),
//                                     ),
//                                 ],
//                               ),
//                             ),
//                             Expanded(
//                               child: Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                   horizontal: 12,
//                                 ),
//                                 child: Column(
//                                   children: [
//                                     Text(
//                                       product.nameUz.toString(),
//                                       maxLines: 2,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             Text("${product.price} sum"),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//           failure: (failure) => Text("xatolik: $failure"),
//         );
//       },
//     );
//   }
// }

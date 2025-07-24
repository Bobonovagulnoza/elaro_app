import 'package:cached_network_image/cached_network_image.dart';
import 'package:elaro_app/core/widgets/shimmer_box.dart';
import 'package:elaro_app/feature/home/presentation/blocs/banner/bloc/banner_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerBloc, BannerState>(
      builder: (context, state) {
        return state.when(
          loading:
              () => Container(
            child: CarouselSlider(
              options: CarouselOptions(
                clipBehavior: Clip.none,
                aspectRatio: 16 / 7,
                viewportFraction: 0.9,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                scrollDirection: Axis.horizontal,
              ),
              items: List.generate(3, (index) {
                return Container(child: ShimmerBox());
              }),
            ),
          ),
          success: (data) {
            return CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                clipBehavior: Clip.none,
                aspectRatio: 16 / 7,
                viewportFraction: 0.9,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                scrollDirection: Axis.horizontal,
              ),
              items: List.generate(data.data?.length ?? 0, (index) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: data.data?[index].imageUzUrl ?? "",
                    ),
                  ),
                );
              }),
            );
          },
          failure: (failure) => Text("Xatolik: $failure"),
        );
      },
    );
  }
}

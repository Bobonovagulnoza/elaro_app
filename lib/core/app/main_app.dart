import 'package:elaro_app/core/bloc/favourite/bloc/favourite_bloc.dart';
import 'package:elaro_app/core/interceptor/interceptor.dart';
import 'package:elaro_app/core/routes/app_routes.dart';
import 'package:elaro_app/core/utils/di.dart';
import 'package:elaro_app/feature/home/data/repository/products_repository_impl.dart';
import 'package:elaro_app/feature/home/presentation/blocs/banner/bloc/banner_bloc.dart';
import 'package:elaro_app/feature/home/presentation/blocs/hit_products/bloc/hit_products_bloc.dart';
import 'package:elaro_app/feature/home/presentation/blocs/new_products/bloc/new_products_bloc.dart';
import 'package:elaro_app/feature/home/presentation/blocs/products/bloc/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ProductsRepositoryImpl>(
          create: (_) => ProductsRepositoryImpl(DioClient()),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl<BannerBloc>()..add(BannerEvent.fetchData()),
          ),
          BlocProvider(create: (context) => sl<ProductsBloc>()),
          BlocProvider(create: (context) => sl<NewProductsBloc>()),
          BlocProvider(create: (context) => sl<HitProductsBloc>()),
          BlocProvider(
            create:
                (context) =>
            sl<FavouriteBloc>()..add(FavouriteEvent.fetchData()),
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
          title: 'Elaro',
        ),
      ),
    );
  }
}

import 'package:elaro_app/feature/profile/presentation/widgets/favourite_body.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Istaklar")),
      body: FavouriteBody(),
    );
  }
}

import 'package:elaro_app/core/constants/app_colors.dart';
import 'package:elaro_app/core/routes/app_routes.dart';
import 'package:elaro_app/core/widgets/custom_button.dart';
import 'package:elaro_app/feature/profile/presentation/widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 15,
        children: [
          Text(
            "Xarid qilish, buyurtmalarni kuzatish va bo'lib bo'lib to'lash uchun tizimga kiring",
            textAlign: TextAlign.center,
          ),
          CustomButton(
            text: "Kirish",
            onPressed: () {},
            color: AppColor.primary,
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ProfileWidget(
                  onTap: () {
                    context.push(AppRouter.favourite);
                  },
                  actionIcon: Icon(Icons.navigate_next_outlined),
                  icon: Icon(Icons.favorite_border),
                  title: "favorites",
                ),
                ProfileWidget(
                  actionIcon: Icon(Icons.navigate_next_outlined),
                  icon: Icon(Icons.public_outlined),
                  title: "language",
                ),
                ProfileWidget(
                  onTap: () => context.push(AppRouter.location),
                  actionIcon: Icon(Icons.navigate_next_outlined),
                  icon: Icon(Icons.location_on_outlined),
                  title: "location",
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ProfileWidget(
                  actionIcon: Icon(Icons.navigate_next_outlined),
                  icon: Icon(Icons.question_answer_outlined),
                  title: "support",
                ),
                ProfileWidget(
                  actionIcon: Icon(Icons.navigate_next_outlined),
                  icon: Icon(Icons.error_outline),
                  title: "info",
                ),
                ProfileWidget(
                  actionIcon: Icon(Icons.navigate_next_outlined),
                  icon: Icon(Icons.logout),
                  title: "exit",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

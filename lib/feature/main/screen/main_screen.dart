import 'package:elaro_app/core/constants/app_images.dart';
import 'package:elaro_app/core/source/main_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const MainScreen({super.key, required this.navigationShell});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: ListenableBuilder(
        listenable: MainSources.currentPage,
        builder: (context, child) {
          return BottomNavigationBar(
            currentIndex: MainSources.currentPage.value,
            onTap: (index) async {
              MainSources.currentPage.value = index;
              widget.navigationShell.goBranch(index);
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  AppImages.home,
                  height: 24,
                  color:
                  MainSources.currentPage.value == 0
                      ? Colors.black
                      : Colors.grey,
                ),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppImages.category,
                  height: 24,
                  color:
                  MainSources.currentPage.value == 1
                      ? Colors.black
                      : Colors.grey,
                ),
                label: "category",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppImages.card,
                  height: 24,
                  color:
                  MainSources.currentPage.value == 2
                      ? Colors.black
                      : Colors.grey,
                ),
                label: "card",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark_border_outlined,
                  size: 24,
                  color:
                  MainSources.currentPage.value == 3
                      ? Colors.black
                      : Colors.grey,
                ),
                label: "orders",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppImages.profile,
                  height: 24,
                  color:
                  MainSources.currentPage.value == 4
                      ? Colors.black
                      : Colors.grey,
                ),
                label: "profile",
              ),
            ],
          );
        },
      ),
    );
  }
}

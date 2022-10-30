import 'package:flutter/material.dart';
import 'package:flutter_jab_app/app/favorites/ui/favorites_page.dart';
import 'package:flutter_jab_app/app/home/ui/home_page.dart';
import 'package:flutter_jab_app/app/root/controller/root_page_controller.dart';

class RootTabView extends StatelessWidget {
  final RootTab rootTab;
  const RootTabView(this.rootTab, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch(rootTab) {
      case RootTab.home:
        return const HomePage();
      case RootTab.favorites:
        return const FavoritesPage();
    }
  }
}

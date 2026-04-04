import 'package:bookia_app/features/wishList/ui/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: Column(
          children: [
            HomeAppBar(),
        ],
        ),
      );
  }
}

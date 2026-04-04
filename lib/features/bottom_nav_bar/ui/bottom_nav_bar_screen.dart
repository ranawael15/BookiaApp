import 'package:bookia_app/core/routes/routes.dart';
import 'package:bookia_app/core/theme/app_colors.dart';
import 'package:bookia_app/features/cart/ui/cart_screen.dart';
import 'package:bookia_app/features/homeFeature/ui/home_screen.dart';
import 'package:bookia_app/features/profile/ui/profile_screen.dart';
import 'package:bookia_app/features/wishList/ui/wish_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../gen/assets.gen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int activeIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    WishListScreen(),
    CartScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
       currentIndex: activeIndex,
     onTap: (index){
         activeIndex= index;
     },
         selectedItemColor: AppColors.primaryColor,
     type: BottomNavigationBarType.fixed,
     items: [
       BottomNavigationBarItem(icon: SvgPicture.asset(Assets.images.home,
       colorFilter: ColorFilter.mode(activeIndex==0?AppColors.primaryColor:Colors.grey, BlendMode.srcIn),
       ),label: "Home"),
       BottomNavigationBarItem(icon: SvgPicture.asset(Assets.images.bookmark,
         colorFilter: ColorFilter.mode(activeIndex==0?AppColors.primaryColor:Colors.grey, BlendMode.srcIn),
       ),label: "WishList"),
       BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
       BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
     ]),
      body:screens[activeIndex],
    );
  }
}

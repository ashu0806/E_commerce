import 'package:e_commerce/core/utils/app_constant.dart';
import 'package:e_commerce/dashboard/presentation/pages/cart/presentation/cart_page.dart';
import 'package:e_commerce/dashboard/presentation/pages/favorite/presentation/favorite_page.dart';
import 'package:e_commerce/dashboard/presentation/pages/home/presentation/home_page.dart';
import 'package:e_commerce/dashboard/presentation/pages/profile/presentation/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DashboardPage extends HookConsumerWidget {
  const DashboardPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedItem = useState<int>(0);
    List<Widget> pages = [
      const HomePage(),
      const FavoritePage(),
      const CartPage(),
      const ProfilePage(),
    ];
    return Scaffold(
      body: pages.elementAt(
        selectedItem.value,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedItem.value,
        onTap: (index) {
          selectedItem.value = index;
        },
        selectedItemColor: AppConstant.primaryColor,
        unselectedItemColor: AppConstant.titleColor,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: "Favorites",
            icon: Icon(
              Icons.favorite,
            ),
          ),
          BottomNavigationBarItem(
            label: "Cart",
            icon: Icon(
              CupertinoIcons.cart,
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(
              CupertinoIcons.profile_circled,
            ),
          ),
        ],
      ),
    );
  }
}

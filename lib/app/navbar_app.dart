import 'package:flutter/material.dart';
import 'package:lalafo_flutter/ui/page/chats_page.dart';
import 'package:lalafo_flutter/ui/page/creat_page.dart';
import 'package:lalafo_flutter/ui/page/favorites_page.dart';
import 'package:lalafo_flutter/ui/page/home_page.dart';
import 'package:lalafo_flutter/ui/page/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const HomePage(),
      const FavoritesPage(),
      const CreatPage(),
      const ChatsPage(),
      const ProfilePage(),
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Stack(
        children: [
          BottomAppBar(
            elevation: 1,
            height: 65,
            color: Theme.of(context).colorScheme.onPrimary,
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  icon: Icon(
                    currentIndex == 0 ? Icons.home : Icons.home_outlined,
                    size: 30,
                    color: currentIndex == 0 ? Colors.green.shade600 : null,
                  ),
                ),
                const SizedBox(width: 5),
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  icon: Icon(
                    currentIndex == 1
                        ? Icons.favorite
                        : Icons.favorite_border_outlined,
                    size: 30,
                    color: currentIndex == 1 ? Colors.green.shade600 : null,
                  ),
                ),
                const SizedBox(width: 60), // Adding spacing for the middle icon
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 3;
                    });
                  },
                  icon: Icon(
                    currentIndex == 3 ? Icons.email : Icons.email_sharp,
                    size: 30,
                    color: currentIndex == 3 ? Colors.green.shade600 : null,
                  ),
                ),
                const SizedBox(width: 5),
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 4;
                    });
                  },
                  icon: Icon(
                    currentIndex == 4 ? Icons.person : Icons.person_outlined,
                    size: 30,
                    color: currentIndex == 4 ? Colors.green.shade600 : null,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 22, // This should make half of the CircleAvatar overlap
            left: MediaQuery.of(context).size.width / 2 -
                37.5, // Center the icon horizontally
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 2;
                });
              },
              child: CircleAvatar(
                radius: 37.5, // Adjust radius to match your design
                backgroundColor:
                    Colors.white, // Set the background color of CircleAvatar
                child: Icon(
                  currentIndex == 2 ? Icons.add : Icons.add_outlined,
                  size: 55,
                  color: currentIndex == 2 ? Colors.green.shade600 : null,
                ),
              ),
            ),
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}

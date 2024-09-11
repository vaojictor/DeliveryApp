import 'package:delivery_app/components/my_drawer_tile.dart';
import 'package:flutter/material.dart';
import '../pages/settings_page.dart';
import '../pages/login_page.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // app logo
          Padding(
            padding: const EdgeInsets.all(50),
            child: Icon(
              Icons.lock_open_rounded,
              size: 40,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          // home list tile
          MyDrawerTile(
            text: 'H O M E',
            icon: Icons.home_outlined,
            onTap: () => Navigator.pop(context),
          ),

          // setting list tile
          MyDrawerTile(
            text: 'C O N F I G U R A Ç Õ E S',
            icon: Icons.settings_outlined,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),

          const Spacer(),

          // logout list tile
          MyDrawerTile(
            text: 'L O G O U T',
            icon: Icons.logout_outlined,
            onTap: () {},
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }
}

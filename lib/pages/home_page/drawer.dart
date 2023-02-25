import 'package:flutter/material.dart';
import 'package:task_it/pages/notifications_page/page.dart';

import '../profile_page/page.dart';
import '../settings_page/page.dart';
import 'page.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [buildHeader(context), buildMenuItems(context)],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ProfilePage()));
          },
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(
                top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 52,
                  backgroundImage: NetworkImage(
                      "https://t4.ftcdn.net/jpg/02/17/34/67/240_F_217346782_7XpCTt8bLNJqvVAaDZJwvZjm0epQmj6j.jpg"),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Lucas Zick',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                Text('lucasalexandrezick@gmail.com',
                    style: TextStyle(fontSize: 15, color: Colors.white))
              ],
            ),
          ),
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text("Home"),
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const HomePage(title: "Task It"),
                ),
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.person_outlined),
              title: const Text("Profile"),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ProfilePage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications_outlined),
              title: const Text("Notifications"),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const NotificationsPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text("Settings"),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SettingsPage()));
              },
            ),
          ],
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:zoom_clone/screens/HomeScreen.dart';
import 'package:zoom_clone/screens/Login_Screen.dart';
import 'package:zoom_clone/utils/colors.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: buttonColor,
      ),
      backgroundColor: backgroundColor,
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text('Profile', style: TextStyle(color: Colors.white)),
            leading: Icon(Icons.person, color: Colors.white),
            onTap: () {
              // Navigate to profile settings screen
            },
          ),
          ListTile(
            title: Text('Notifications', style: TextStyle(color: Colors.white)),
            leading: Icon(Icons.notifications, color: Colors.white),
            onTap: () {
              // Navigate to notification settings screen
            },
          ),
          ListTile(
            title: Text('Privacy', style: TextStyle(color: Colors.white)),
            leading: Icon(Icons.lock, color: Colors.white),
            onTap: () {
              // Navigate to privacy settings screen
            },
          ),
          ListTile(
            title: Text('About', style: TextStyle(color: Colors.white)),
            leading: Icon(Icons.info, color: Colors.white),
            onTap: () {
              // Navigate to about screen
            },
          ),
          ListTile(
            title: Text('Log Out', style: TextStyle(color: Colors.white)),
            leading: Icon(Icons.exit_to_app, color: Colors.white),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => Login_Screen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

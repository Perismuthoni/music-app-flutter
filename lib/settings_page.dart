import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'General Settings',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ListTile(
          title: Text('Dark Mode'),
          subtitle: Text('Enable or disable dark mode'),
          trailing: Switch(
            value: false, // Replace with your logic to get the current state
            onChanged: (value) {
              // Replace with your logic to toggle dark mode
            },
          ),
        ),
        Divider(),
        Text(
          'Notification Settings',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        ListTile(
          title: Text('Push Notifications'),
          subtitle: Text('Enable or disable push notifications'),
          trailing: Switch(
            value: true, // Replace with your logic to get the current state
            onChanged: (value) {
              // Replace with your logic to toggle push notifications
            },
          ),
        ),
        const Divider(),
        // Add more settings here as needed
      ],
    );
  }
}

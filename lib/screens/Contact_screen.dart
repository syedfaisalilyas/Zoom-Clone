import 'dart:math';
import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

class Contact {
  final String name;
  final String email;

  Contact({required this.name, required this.email});
}

class ContactsScreen extends StatelessWidget {
  final List<Contact> contacts =
      generateRandomContacts(20); // Generate 20 random contacts

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contacts',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: buttonColor, // Change app bar color
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(contact.name[0]),
              backgroundColor: Colors.blue, // Change avatar background color
            ),
            title: Text(
              contact.name,
              style: TextStyle(color: Colors.white), // Change text color
            ),
            subtitle: Text(
              contact.email,
              style: TextStyle(color: Colors.grey), // Change text color
            ),
            onTap: () {
              // Add onTap functionality here
            },
          );
        },
      ),
    );
  }
}

List<Contact> generateRandomContacts(int count) {
  List<Contact> contacts = [];
  final random = Random();
  for (int i = 0; i < count; i++) {
    String name = generateRandomMuslimName(random);
    String email = 'contact${i + 1}@example.com';
    contacts.add(Contact(name: name, email: email));
  }
  return contacts;
}

String generateRandomMuslimName(Random random) {
  List<String> prefixes = [
    'Muhammad',
    'Ahmed',
    'Ali',
    'Hassan',
    'Hussein',
    'Omar',
    'Fatima',
    'Aisha',
    'Khadija',
    'Zainab',
    'Maryam',
  ];

  List<String> suffixes = [
    'Abdullah',
    'Ahmed',
    'Ali',
    'Hassan',
    'Hussein',
    'Omar',
    'Fatima',
    'Aisha',
    'Khadija',
    'Zainab',
    'Maryam',
  ];

  String prefix = prefixes[random.nextInt(prefixes.length)];
  String suffix = suffixes[random.nextInt(suffixes.length)];
  return '$prefix $suffix';
}

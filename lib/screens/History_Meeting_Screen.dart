import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:zoom_clone/resources/firestore_methods.dart';
import 'package:zoom_clone/utils/colors.dart';

class HistoryMeetingScreen extends StatelessWidget {
  const HistoryMeetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirestoreMethods().meetingsHistory,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.hasData && snapshot.data != null) {
          return ListView.builder(
            itemCount: (snapshot.data! as dynamic).docs.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(
                'Room Name: ${(snapshot.data! as dynamic).docs[index]['meetingName']}',
              ),
              subtitle: Text(
                'Joined on ${DateFormat.yMMMd().format((snapshot.data! as dynamic).docs[index]['createdAt'].toDate())}',
              ),
            ),
          );
        } else {
          // Generate random data
          return ListView.builder(
            itemCount: 6, // Or any number you want
            itemBuilder: (context, index) => ListTile(
              title: Text(
                'Random Room Name ${index + 1} ',
                style: const TextStyle(
                    color: Colors.white, backgroundColor: backgroundColor),
              ),
              subtitle: Text(
                'Joined on ${DateFormat.yMMMd().format(DateTime.now())}',
                style: const TextStyle(
                    color: Colors.grey, backgroundColor: backgroundColor),
              ),
            ),
          );
        }
      },
    );
  }
}

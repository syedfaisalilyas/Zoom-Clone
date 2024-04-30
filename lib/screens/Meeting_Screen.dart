import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/jitsi_meet_methods.dart';
import 'package:zoom_clone/widgets/meeting_button.dart';

class MeetingScreen extends StatelessWidget {
  MeetingScreen({super.key});
  // final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();
  createNewMeeting() async {
    var random = Random();
    String roomname = (random.nextInt(100000000) + 10000000).toString();
    // _jitsiMeetMethods.createMeeting(
    //     roomName: roomname, isAudioMuted: true, isVideoMuted: true);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MeetingButton(
              onpressed: createNewMeeting,
              icon: Icons.videocam,
              text: 'New Meeting',
            ),
            MeetingButton(
                onpressed: () {},
                icon: Icons.add_box_rounded,
                text: 'Join Meeting'),
            MeetingButton(
                onpressed: () {}, icon: Icons.calendar_today, text: 'Schedule'),
            MeetingButton(
                onpressed: () {},
                icon: Icons.arrow_upward_rounded,
                text: 'Share Screen'),
          ],
        ),
        const Expanded(
            child: Center(
          child: Text(
            'Create/Join meetings with just a click!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ))
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:url_launcher/url_launcher.dart';

import 'my_page_view.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => MyPageState();
}

class MyPageState extends State<MyPage> {
  double width = 0;

  double height = 0;

  bool isHovering = false;

  // store the position where your mouse pointer left the widget
  Offset exitFrom = Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    return MyPageView(this);
  }

  void onEnter(PointerEnterEvent event) {
    // callback when your mouse pointer enters the underlying
    // widget
    // here you have to use 'PointerEvent'
    setState(() {
      isHovering = true;
    });
  }

  void onExit(PointerExitEvent event) {
    // callback when your mouse pointer leaves the underlying
    // widget
    setState(() {
      isHovering = false;
      // storing the exit position
      exitFrom = event.localPosition;
      // You can use details.position if you are interested in the global
      // position of your pointer.
    });
  }

  Future<void> openUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
    }
  }

  void onPressedEmail() {
    openUrl('mailto:khrsantiago@gmail.com');
  }

  void onPressedLinkedin() {
    openUrl('https://www.linkedin.com/in/khrsantiago/');
  }

  void onPressedGithub() {
    openUrl('https://github.com/khrsantiago/');
  }
}

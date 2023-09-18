// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MapsPage extends StatelessWidget {
  const MapsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class NotifPage extends StatelessWidget {
  static const String routeName = '/notif-page';
  const NotifPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            height: 700,
            child: MapsPage(),
          )
        ],
      ),
    );
  }
}

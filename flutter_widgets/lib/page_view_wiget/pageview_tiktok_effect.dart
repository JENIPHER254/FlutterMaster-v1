import 'package:flutter/material.dart';

class PageviewTiktokEffect extends StatefulWidget {
  const PageviewTiktokEffect({super.key});

  @override
  State<PageviewTiktokEffect> createState() => _PageviewTiktokEffectState();
}

class _PageviewTiktokEffectState extends State<PageviewTiktokEffect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'This is the TikTok Effect Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

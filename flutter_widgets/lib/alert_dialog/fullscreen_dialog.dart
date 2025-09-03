import 'package:flutter/material.dart';

class FullScreenWidget extends StatefulWidget {
  const FullScreenWidget({super.key});

  @override
  State<FullScreenWidget> createState() => _FullScreenWidgetState();
}

class _FullScreenWidgetState extends State<FullScreenWidget> {
  bool fullScreenDialogBox = false;

  void _fullScreenDialog(BuildContext context) {
    fullScreenDialogBox = true;
    Navigator.of(context).push(
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (context) => _buildFullScreenDialog(context),
      ),
    );
  }

  Widget _buildFullScreenDialog(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text('Full Screen Dialog',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          onPressed: () => _fullScreenDialog(context),
          child: Text('Show Full Screen Dialog'),
        ),
      ),
    );
  }
}

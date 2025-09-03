import 'package:flutter/material.dart';

class AboutDialogWidget extends StatelessWidget {
  const AboutDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.05,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        dialogBackgroundColor: Colors.white,
                        dialogTheme: DialogThemeData(
                          titleTextStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          contentTextStyle: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      child: AboutDialog(
                        applicationName: 'Flutter Widgets Demo',
                        applicationVersion: '1.0.0',
                        applicationIcon: Icon(
                          Icons.flutter_dash,
                          size: 50,
                          color: Colors.blue,
                        ),
                        applicationLegalese: '© 2024 Flutter Widgets',
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                                'This is a simple demo of the About Dialog widget in Flutter.'),
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: Text('Show About Dialog'),
          ),
        ),
      ),
    );
  }
}

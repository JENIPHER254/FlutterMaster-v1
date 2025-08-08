import 'package:flutter/material.dart';

class HorizontalAutomatic extends StatelessWidget {
  const HorizontalAutomatic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Colors.red,
            child: Center(
                child: Text('Page 1',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))),
          ),
          Container(
            color: Colors.green,
            child: Center(
                child: Text('Page 2',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))),
          ),
          Container(
            color: Colors.blue,
            child: Center(
                child: Text('Page 3',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))),
          ),
          Container(
            color: Colors.orange,
            child: Center(
                child: Text('Page 4',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))),
          ),
          Container(
            color: Colors.purple,
            child: Center(
                child: Text('Page 5',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        child: Icon(Icons.home, color: Colors.red),
        backgroundColor: Colors.white,
      ),
    );
  }
}

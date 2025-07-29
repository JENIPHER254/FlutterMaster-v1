import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.toggleTheme});
  final VoidCallback toggleTheme;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> widget_items = [
    {
      'title': 'Layout',
      'route': '/layout',
      'icon': Icons.grid_view,
      'content':
          'This is the layout page where you can find various layout widgets.',
    },
    {
      'title': 'Widgets',
      'route': '/widgets',
      'icon': Icons.widgets,
      'content': 'This page contains various Flutter widgets for building UI.',
    },
    {
      'title': 'Animations',
      'route': '/animations',
      'icon': Icons.animation,
      'content': 'Explore different animations available in Flutter.',
    },
    {
      'title': 'PageView',
      'route': '/page_view',
      'icon': Icons.view_carousel,
      'content':
          'This page demonstrates the PageView widget for swiping between pages.',
    },
    {
      'title': 'Networking',
      'route': '/networking',
      'icon': Icons.network_check,
      'content': 'Learn how to make network requests in Flutter.',
    },
    {
      'title': 'Database',
      'route': '/database',
      'icon': Icons.storage,
      'content': 'Understand how to work with databases in Flutter.',
    },
  ];

  Widget buildFAQTile(
    String title,
    IconData icon,
    String content,
    VoidCallback onTap,
  ) {
    return ExpansionTile(
      tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      children: [
        InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 12),
                  child: Text(
                    content,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
                child: IconButton(
                  onPressed: () {
                    onTap();
                  },
                  icon: Icon(
                    icon,
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 50),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 14.0, vertical: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: const Text(
                        'Learning Flutter Widgets',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        icon: Icon(
                          Icons.light_mode,
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Colors.red
                                  : Colors.white,
                        ),
                        onPressed: widget.toggleTheme,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.flutter_dash,
                        size: 50,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.red
                            : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[300],
                thickness: 1.5,
                indent: 20,
                endIndent: 20,
              ),
              const SizedBox(height: 20),
              // ✅ Wrap ListView in Expanded
              Expanded(
                child: ListView.builder(
                  itemCount: widget_items.length,
                  itemBuilder: (context, index) {
                    final item = widget_items[index];
                    return buildFAQTile(
                      item['title'],
                      item['icon'],
                      item['content'],
                      () {
                        Navigator.pushNamed(context, item['route']);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

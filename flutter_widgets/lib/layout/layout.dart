import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key, required this.toggleTheme});
  final VoidCallback toggleTheme;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final List<Map<String, dynamic>> widgetItems = [
    {
      'title': 'Navigation Widgets',
      'subcategories': [
        {
          'title': 'Horizontal PageView',
          'route': '/pageview_horizontal_auto',
          'icon': Icons.view_carousel,
          'content': 'This page demonstrates the Horizontal PageView widget.',
        },
        {
          'title': 'Vertical PageView',
          'route': '/pageview_vertical_auto',
          'icon': Icons.tab,
          'content': 'This page demonstrates the Vertical PageView widget.',
        },
        {
          'title': 'Horizontal PageView (Manual)',
          'route': '/pageview_horizontal_manual',
          'icon': Icons.view_carousel,
          'content': 'This page demonstrates the Horizontal PageView widget.',
        },
        {
          'title': 'Vertical PageView (Manual)',
          'route': '/pageview_vertical_manual',
          'icon': Icons.tab,
          'content': 'This page demonstrates the Vertical PageView widget.',
        },
        {
          'title': 'TikTok Effect',
          'route': '/pageview_tiktok_effect',
          'icon': Icons.tab,
          'content': 'This page demonstrates the TikTok Effect using PageView.',
        },
        {
          'title': 'Color Change',
          'route': '/color_change_challenge',
          'icon': Icons.tab,
          'content': 'This page demonstrates the Color Change effect using PageView.',
        },
      ],
    },
  ];

  Widget buildCategoryTile(
    String title,
    List<Map<String, dynamic>> subcategories,
  ) {
    return ExpansionTile(
      tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      children: subcategories.map((sub) {
        return ListTile(
          leading: Icon(sub['icon'], color: Colors.grey[700]),
          title: Text(sub['title']),
          subtitle: Text(sub['content'], style: const TextStyle(fontSize: 12)),
          onTap: () {
            Navigator.pushNamed(context, sub['route']);
          },
        );
      }).toList(),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Text(
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
              Expanded(
                child: ListView.builder(
                  itemCount: widgetItems.length,
                  itemBuilder: (context, index) {
                    final category = widgetItems[index];
                    return buildCategoryTile(
                      category['title'],
                      category['subcategories'],
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

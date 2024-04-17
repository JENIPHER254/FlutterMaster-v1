import 'package:flutter/material.dart';
import 'package:todo_app/widgets/sm_text/sm_text.dart';

class SideNav extends StatelessWidget {
  const SideNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        UserAccountsDrawerHeader(
          accountName: smText("Jenipher A. Onyango", Colors.white),
          accountEmail: smText("onyangoje123@gmail.com", Colors.white),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image(
                image: AssetImage("assets/images/fae4.jpg"),
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
          decoration: BoxDecoration(
              //incase image isnt loaded
              color: Colors.orange,
              image: DecorationImage(
                  image: AssetImage("assets/images/bg5.jpg"),
                  fit: BoxFit.cover)),
        ),
        ListTile(
          leading: Icon(
            Icons.dashboard,
            color: const Color.fromARGB(255, 128, 127, 127),
          ),
          title: smText(
            "Dashboard",
            const Color.fromARGB(255, 128, 127, 127),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/dash');
          },
        ),
        ListTile(
          leading: Icon(
            Icons.person,
            color: const Color.fromARGB(255, 128, 127, 127),
          ),
          title: smText(
            "Profile",
            const Color.fromARGB(255, 128, 127, 127),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/profile');
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.analytics,
            color: const Color.fromARGB(255, 128, 127, 127),
          ),
          title: smText(
            "Analytics",
            const Color.fromARGB(255, 128, 127, 127),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/analytics');
          },
        ),
        ListTile(
          leading: Icon(
            Icons.calendar_month,
            color: const Color.fromARGB(255, 128, 127, 127),
          ),
          title: smText(
            "My Calender",
            const Color.fromARGB(255, 128, 127, 127),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/calender');
          },
        ),
        ListTile(
          leading: Icon(
            Icons.task,
            color: const Color.fromARGB(255, 128, 127, 127),
          ),
          title: smText(
            "Manage Tasks",
            const Color.fromARGB(255, 128, 127, 127),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/manage-tasks');
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.exit_to_app,
            color: const Color.fromARGB(255, 128, 127, 127),
          ),
          title: smText(
            "Exit",
            const Color.fromARGB(255, 128, 127, 127),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        )
      ]),
    );
  }
}

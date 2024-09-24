import 'package:flutter/material.dart';

Drawer mainDrawer() {
  return Drawer(
    child: Container(
      color: const Color.fromARGB(255, 252, 2, 2),
      child: ListView(
        children: const <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Women Safety',
                style: TextStyle(
                  fontSize: 33,
                  color: Color.fromARGB(255, 233, 233, 221),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_circle,
              size: 30,
              color: Color.fromARGB(255, 233, 233, 221),
            ),
            title: Text(
              "Admin",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              size: 25,
              color: Colors.white,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 250, 250, 250),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              size: 25,
              color: Colors.white,
            ),
            title: Text(
              'User',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 250, 250, 250),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.notifications_active,
              color: Colors.white,
            ),
            title: Text(
              'Notification settings',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 250, 250, 250),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.lock_outline_rounded,
              color: Colors.white,
            ),
            title: Text(
              'Change password',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 250, 250, 250),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 250, 250, 250),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

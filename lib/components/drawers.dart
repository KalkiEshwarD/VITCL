import 'package:flutter/material.dart';
import 'package:vitcl/constants/constants.dart';
import 'package:vitcl/constants/routes.dart';

Drawer primaryDrawer(context) => Drawer(
      shape: const Border(),
      child: ListView(
        children: [
          ListTile(
            title: SizedBox(
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 100,
                          ),
                          Text(
                            'Name',
                            style: TextStyle(fontSize: 25),
                          ),
                          Text('Hello there!'),
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: PaddingDist.drawerDistance),
                  child: Icon(Icons.home),
                ),
                Text('Home'),
              ],
            ),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, homeScreen, (route) => false);
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: PaddingDist.drawerDistance),
                  child: Icon(Icons.person),
                ),
                Text('My Profile'),
              ],
            ),
            onTap: () {
              //TODO: Complete on tap
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: PaddingDist.drawerDistance),
                  child: Icon(Icons.calendar_month),
                ),
                Text('VITCL Editions'),
              ],
            ),
            onTap: () {
              //TODO: Complete on tap
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: PaddingDist.drawerDistance),
                  child: Icon(Icons.people),
                ),
                Text('Registered Members'),
              ],
            ),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, registeredMembersScreen, (route) => false);
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: PaddingDist.drawerDistance),
                  child: Icon(Icons.announcement),
                ),
                Text('Report an issue'),
              ],
            ),
            onTap: () {
              //TODO: Complete on tap
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: PaddingDist.drawerDistance),
                  child: Icon(Icons.contact_page),
                ),
                Text('About Us'),
              ],
            ),
            onTap: () {
              //TODO: Complete on tap
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: PaddingDist.drawerDistance),
                  child: Icon(Icons.settings),
                ),
                Text('Settings'),
              ],
            ),
            onTap: () {
              //TODO: Complete on tap
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: PaddingDist.drawerDistance),
                  child: Icon(Icons.logout),
                ),
                Text('Sign Out'),
              ],
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Sign Out'),
                    content: const Text('Do you want to sign out?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          // Close the dialog when the button is pressed
                          Navigator.of(context).pop();
                        },
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, signInScreen, (route) => false);
                        },
                        child: const Text('Sign Out'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );

import 'package:drawer_nav/screen_two.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
            child: Text('Drawer & Navgation'),
          ),
          backgroundColor: Colors.teal),
      drawer: Drawer(
        backgroundColor: Colors.teal[100],
        child: ListView(
          children: [
            const Padding(padding: EdgeInsets.zero),
            const UserAccountsDrawerHeader(
              accountName: Text('asadullah'),
              accountEmail: Text('asad123@gmail.com'),
              decoration: BoxDecoration(color: Colors.teal),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/678783/pexels-photo-678783.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('screen 1'),
              onTap: () {
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_box),
              title: const Text('screen 2'),
              onTap: () {
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('logout'),
              onTap: () {},
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ScreenTwo.id);
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => ScreenTwo()));
                  },
                  child: const Text('Screen 1')))
        ],
      ),
    );
  }
}

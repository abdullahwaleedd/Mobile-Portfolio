import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 129, 106, 197),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('img/images.png'),
            ),
            Text(
              'Your name',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'appFont',
              ),
            ),
            Text(
              'Web Developer',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 200,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text(
                    '01152494530',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.mail),
                  title: Text(
                    'your_mail.com',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_tree_outlined),
            label: 'Skills',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cases_outlined),
            label: 'Projects',
          ),
        ],
      
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    
    });


    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/Profile');
        break;
      case 1:
        Navigator.pushNamed(context, '/Skills');
        break;
      case 2:
        Navigator.pushNamed(context, '/Projects');
        break;
      default:
      // Handle other cases if needed
    }
  }
}

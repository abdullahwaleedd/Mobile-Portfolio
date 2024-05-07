import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 0;
  ButtonStyle buts = ElevatedButton.styleFrom(
      fixedSize: const Size(115, 50),
      elevation: 0,
      padding: const EdgeInsets.all(0),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 203, 187, 253),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('img/images.png'),
            ),
            const Text(
              'Your name',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'appFont',
              ),
            ),
            const Text(
              'Web Developer',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 30,
              width: 200,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Link(
                  uri: Uri.parse("https://www.github.com"),
                  builder: (context, followLink) {
                    return ElevatedButton(
                      style: buts,
                      onPressed: followLink,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: SizedBox(
                          width: 125,
                          height: 60,
                          child: Card(
                            elevation: 0,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'img/gh.png',
                                  width: 25,
                                  height: 25,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  "Github",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                Link(
                  uri: Uri.parse("https://www.linkedin.com"),
                  builder: (context, followLink) {
                    return ElevatedButton(
                      style: buts,
                      onPressed: followLink,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 0,
                        ),
                        child: SizedBox(
                          width: 125,
                          height: 60,
                          child: Card(
                            elevation: 0,
                            color: Colors.white,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'img/lnkd.png',
                                  width: 25,
                                  height: 25,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "LinkedIn",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                Link(
                  uri: Uri.parse("https://www.gmail.com"),
                  builder: (context, followLink) {
                    return ElevatedButton(
                      style: buts,
                      onPressed: followLink,
                      child: const Padding(
                        padding: EdgeInsets.only(
                          top: 0,
                        ),
                        child: SizedBox(
                          width: 125,
                          height: 60,
                          child: Card(
                            elevation: 0,
                            color: Colors.white,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.email_outlined,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Email",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
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

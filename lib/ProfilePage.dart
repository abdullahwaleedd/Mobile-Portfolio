import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 0;

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
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                  ),
                  child: SizedBox(
                    width: 125,
                    height: 60,
                    child: Card(
                      color: Colors.white,
                      child: Row(
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
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                  ),
                  child: SizedBox(
                    width: 125,
                    height: 60,
                    child: Card(
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
                            width: 10,
                          ),
                          const Text(
                            "LinkedIn",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                  ),
                  child: SizedBox(
                    width: 125,
                    height: 60,
                    child: Card(
                      color: Colors.white,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 2,
                          ),
                          Image.asset(
                            'img/wat.png',
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          const Text(
                            "WhatsApp",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 8,
                  ),
                  child: SizedBox(
                    width: 125,
                    height: 60,
                    child: Card(
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.facebook,
                              color: Color.fromRGBO(8, 102, 255, 1)),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Facebook",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                  ),
                  child: SizedBox(
                    width: 125,
                    height: 60,
                    child: Card(
                      color: Colors.white,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            'img/ig.png',
                            width: 25,
                            height: 25,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "Instagram",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                  ),
                  child: SizedBox(
                    width: 125,
                    height: 60,
                    child: Card(
                      color: Colors.white,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'img/x.png',
                            width: 25,
                            height: 25,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "X (Twitter)",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
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

import 'package:flutter/material.dart';

class ProjectsPage extends StatefulWidget {
  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  int _selectedIndex00 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          SizedBox(
            height: 160,
            child: Card(
              elevation: 7,
                child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "img/h.png",
                        width: 35,
                        height: 35,
                      ),
                      Image.asset(
                        "img/c.png",
                        width: 50,
                        height: 50,
                      ),
                      Image.asset(
                        "img/jj.png",
                        width: 30,
                        height: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "E-Commerce Project",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "This is a E-Commerce \nDropshipping Website using\nHTML, CSS and JavaScript.",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 78, 78, 78)),
                        ),
                      ]),
                  const SizedBox(
                    width: 32,
                  ),
                  const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Price:",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "200\$",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 14, 163, 0)),
                        ),
                      ])
                ],
              ),
            )),
          ),
          const SizedBox(height: 30,),
          SizedBox(
            height: 170,
            child: Card(
              elevation: 7,
                child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "img/h.png",
                        width: 35,
                        height: 35,
                      ),
                      Image.asset(
                        "img/c.png",
                        width: 50,
                        height: 50,
                      ),
                      Image.asset(
                        "img/jj.png",
                        width: 30,
                        height: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Portfolio Project",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Making a Beatiful Portfolio\nas a CV for you including\nskills and accounts\nwith unique domain",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 78, 78, 78)),
                        ),
                      ]),
                  const SizedBox(
                    width: 32,
                  ),
                  const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Price:",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "120\$",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 14, 163, 0)),
                        ),
                      ])
                ],
              ),
            )),
          )
        ],
      )),
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
        currentIndex: _selectedIndex00,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex00 = index;
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

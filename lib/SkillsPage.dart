import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SkillsPage extends StatefulWidget {
  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  int _selectedIndex0 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 203, 187, 253),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 9.0,
              animation: true,
              percent: 0.85,
              center: Text(
                ' JS\n85%',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(248, 0, 0, 0),
                ),
              ),
              backgroundColor: Colors.black12,
              progressColor: Color.fromARGB(255, 23, 23, 121),
            ),
            SizedBox(height: 30.0),
            CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 9.0,
              animation: true,
              percent: 0.9,
              center: Text(
                'CSS\n90%',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              backgroundColor: Colors.black12,
              progressColor: Color.fromARGB(255, 23, 23, 121),
            ),
            SizedBox(height: 50.0),
            CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 9.0,
              animation: true,
              percent: 0.95,
              center: Text(
                'HTML\n  95%',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 4, 4, 4),
                ),
              ),
              backgroundColor: Colors.black12,
              progressColor: Color.fromARGB(255, 23, 23, 121),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_tree),
            label: 'Skills',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cases_outlined),
            label: 'Projects',
          ),
        ],
        currentIndex: _selectedIndex0,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex0 = index;
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
    }
  }
}

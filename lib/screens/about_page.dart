import 'package:flutter/material.dart';
import 'package:newls/screens/home_page.dart';
import 'package:newls/screens/login_page.dart';
import 'package:faker/faker.dart';

class AboutPage extends StatelessWidget {
  final Faker faker = Faker();

  String generateRandomText(
      {int paragraphs = 3, int sentencesPerParagraph = 5}) {
    String text = '';
    for (int i = 0; i < paragraphs; i++) {
      for (int j = 0; j < sentencesPerParagraph; j++) {
        text += faker.lorem.sentence();
        if (j < sentencesPerParagraph - 1) {
          text += ' ';
        }
      }
      text += '\n\n';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Homepage'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Halaman About'),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  generateRandomText(paragraphs: 10),
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'app3.dart';
import 'app4.dart';
import 'login.dart';
import 'app2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer Navigation',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(' اضغط على القائمة الجانبية '),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [ const
            DrawerHeader(
              decoration:  BoxDecoration(
                color: Colors.blue,
              ),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/1.jpg'), 
                  ),
                  SizedBox(height: 10),
                  Text(
                    ' حسام نبيل العريقي',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('السيرة الذاتية'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => homepage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.store),
              title: const Text(' التطبيق الاول'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => storepage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.store),
              title: const Text('التطبيق الثاني'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => sharepage()),
                );
              },
            ),
            ListTile(
              leading:const Icon(Icons.phone),
              title: const Text('تسجيل الدخول'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => login()),
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('مرحبًا بك في تطبيقنا'),
      ),
    );
  }
}


class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('اتصل بنا'),
      ),
      body: const Center(
        child:  Text(' 773022428 '),
      ),
    );
  }
}
// ignore_for_file: camel_case_types, unnecessary_breaks, library_private_types_in_public_api, use_build_context_synchronously

import 'package:flutter/material.dart';

String username = '';
String password = '';
void main() {
  runApp(
    MaterialApp(
      home: loginPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 400.0,
            height: 400.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => loginPage()),
                );
              },
              style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll<Color>(Color(0xFFDDF7E3)),
              ),
              child: const Text(
                'giris',
                style: TextStyle(fontSize: 50.0, color: Color(0xFFDF2E38)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class loginPage extends StatefulWidget {
  @override
  loginPageState createState() => loginPageState();
}

class loginPageState extends State {
  // Fonksiyon: Kullanıcıyı giriş yapmaya yönlendirir
  void _login() {
    if (username == '25297638553' && password == 'queue38') {
      // Kullanıcı adı ve şifre doğruysa, müşteri ekranına yönlendir
      Navigator.push(
        context,
        MaterialPageRoute(builder: (page) => Placeholder()),
      );
    } else {
      // Kullanıcı adı veya şifre yanlışsa hata göster
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Hata'),
            content: Text('T.C. Kimlik Numarası veya şifre yanlış.'),
            actions: <Widget>[
              TextButton(
                child: Text('Tamam'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDDF7E3),
      appBar: AppBar(
        title: Text('Giriş Ekranı'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                setState(() {
                  username = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'T.C. Kimlik No.',
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Şifre',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _login,
              child: Text('Giriş Yap'),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: camel_case_types, unnecessary_breaks, library_private_types_in_public_api, use_build_context_synchronously, dead_code, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:camera/camera.dart';
import 'document_scan.dart';

// late List<DocumentScanDescription> _cameras;

String username = '';
String password = '';
String name_signup = '';
String surname_signup = '';
String number_signup = '';
String password_signup = '';
String mail_signup = '';

Future<void> main() async {
 // WidgetsFlutterBinding.ensureInitialized();
 // _cameras = await availableDocumentScans();
  runApp(
    const MaterialApp(
      home: DocumentScanPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  loginPageState createState() => loginPageState();
}

class loginPageState extends State {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  // Fonksiyon: Kullanıcıyı giriş yapmaya yönlendirir
  void _login() {
    if (username == '25297638553' && password == 'queue38') {
      // Kullanıcı adı ve şifre doğruysa, müşteri ekranına yönlendir
      Navigator.push(
        context,
        MaterialPageRoute(builder: (page) => const Placeholder()),
      );
    } else {
      // Kullanıcı adı veya şifre yanlışsa hata göster
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Hata'),
            content: const Text('T.C. Kimlik Numarası veya şifre yanlış.'),
            actions: <Widget>[
              TextButton(
                child: const Text('Tamam'),
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
      backgroundColor: const Color(0xFFDDF7E3),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                setState(() {
                  username = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'T.C. Kimlik No.',
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
              obscuringCharacter: '●',
              obscureText: passwordVisible,
              decoration: InputDecoration(
                labelText: 'Şifre',
                suffixIcon: IconButton(
                  icon: Icon(passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(
                      () {
                        passwordVisible = !passwordVisible;
                      },
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _login,
              child: const Text('Giriş Yap'),
            ),
          ],
        ),
      ),
    );
  }
}

class signupPage extends StatefulWidget {
  const signupPage({super.key});

  @override
  signupPageState createState() => signupPageState();
}

class signupPageState extends State {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDF7E3),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Flexible(
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      name_signup = value;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'isim',
                  ),
                ),
              ),
              const SizedBox(width: 50.0),
              Flexible(
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      surname_signup = value;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'soyisim',
                  ),
                ),
              ),
            ]),
            const SizedBox(height: 20.0),
            TextField(
              onChanged: (value) {
                setState(() {
                  number_signup = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'telefon',
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              onChanged: (value) {
                setState(() {
                  mail_signup = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'mail',
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              onChanged: (value) {
                setState(() {
                  password_signup = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'sifre',
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (page) => const Placeholder()));
              },
              child: Text('devam et'),
            ),
          ],
        ),
      ),
    );
  }
}

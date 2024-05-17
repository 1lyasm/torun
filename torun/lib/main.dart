// ignore_for_file: camel_case_types, unnecessary_breaks, library_private_types_in_public_api, use_build_context_synchronously, dead_code, non_constant_identifier_names

// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
// import 'package:camera/camera.dart';
import 'dart:async';

// late List<CameraDescription> _cameras;

String username = '';
String password = '';
String name_signup = '';
String surname_signup = '';
String number_signup = '';
String password_signup = '';
String mail_signup = '';
String kod_erisim = '';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // _cameras = await availableCameras();
  runApp(
    const MaterialApp(
      home: verificationPage(),
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
          return const AlertDialog(
            content: SizedBox(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hatalı giriş',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.cancel,
                    color: Colors.red,
                    size: 150.0,
                  ),
                ],
              ),
            ),
          );
        },
      );
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.of(context).pop();
      });
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
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Hoşgeldin',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
              ],
            ),
            const SizedBox(height: 50.0),
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: null,
                  child: Text(
                    'Şifremi unutdum',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 100,
                    child: ElevatedButton(
                      onPressed: _login,
                      child: const Text('Başla'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Hesabın yokmu?'),
                const SizedBox(width: 20.0),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (page) => const signupPage()));
                    },
                    child: const Text('Kaydol'))
              ],
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kaydol',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                    Text('Lütfen bilgilerini gir'),
                  ],
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Flexible(
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      name_signup = value;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'İsim',
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
                    labelText: 'Soyisim',
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
                labelText: 'Telefon numarası',
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
                labelText: 'E-posta',
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
                labelText: 'Şifre',
              ),
            ),
            const SizedBox(height: 20.0),
            Row(children: [
              const SizedBox(width: 50.0),
              Expanded(
                child: SizedBox(
                  height: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (page) => const verificationPage()));
                    },
                    child: const Text('Devam Et'),
                  ),
                ),
              ),
              const SizedBox(width: 50.0),
            ]),
            const SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Hesabın varmı?'),
                const SizedBox(width: 50.0),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (page) => const loginPage()));
                    },
                    child: const Text('Giriş yap'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class verificationPage extends StatefulWidget {
  const verificationPage({super.key});

  @override
  verificationPageState createState() => verificationPageState();
}

class verificationPageState extends State {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDF7E3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '4 Haneli Kodu Gir',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Lütfen erişim kodunu gir',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  kod_erisim = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Kod',
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Şifre almadım'),
                TextButton(onPressed: null, child: Text('Yeniden gönder'))
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 100,
                    child: ElevatedButton(
                      onPressed: null,
                      child: Text('Erişim'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

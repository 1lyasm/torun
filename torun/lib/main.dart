// ignore_for_file: camel_case_types, unnecessary_breaks, library_private_types_in_public_api, use_build_context_synchronously, dead_code, non_constant_identifier_names, unused_import

// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:torun/account_created.dart';
import 'package:torun/address.dart';
import 'package:camera/camera.dart';
import 'dart:async';

import 'package:torun/employee_list.dart';

late List<CameraDescription> _cameras;

String username = '';
String password = '';
String name_signup = '';
String surname_signup = '';
String number_signup = '';
String password_signup = '';
String mail_signup = '';
String kod_erisim = '';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  _cameras = await availableCameras();
  runApp(
    const MaterialApp(
      home: signupPage(),
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
    if (username == '123' && password == '123') {
      // Kullanıcı adı ve şifre doğruysa, müşteri ekranına yönlendir
      Navigator.push(
        context,
        MaterialPageRoute(builder: (page) => const EmployeeListPage()),
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
      backgroundColor: Colors.white,
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
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              167, 201, 87, 1), // Set the background color
                          foregroundColor: Colors.white, // Set the text color
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
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
      backgroundColor: Colors.white,
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
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(
                            167, 201, 87, 1), // Set the background color
                        foregroundColor: Colors.white, // Set the text color
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
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
      backgroundColor: Colors.white,
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
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              167, 201, 87, 1), // Set the background color
                          foregroundColor: Colors.white, // Set the text color
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (page) => const AddressPage()));
                      },
                      child: const Text('Erişim'),
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

class DocumentScanPage extends StatefulWidget {
  const DocumentScanPage({super.key});

  @override
  DocumentScanPageState createState() => DocumentScanPageState();
}

class DocumentScanPageState extends State {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 33.0, top: 150.0),
            child: Row(
              children: [
                const Expanded(
                  child:
                      Text("Hesap Doğrulama", style: TextStyle(fontSize: 26)),
                ),
                const SizedBox(width: 16),
                Padding(
                  padding: const EdgeInsets.only(right: 33.0),
                  child: Image.asset(
                    "assets/trackbar_3.png",
                    width: MediaQuery.of(context).size.width * 0.3,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 200),
          const Text("Kimlik Belgesi Taratma", style: TextStyle(fontSize: 26)),
          const SizedBox(
            height: 50,
          ),
          Container(
              height: 300,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey),
              child: Stack(children: [
                CameraApp(),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Ön Yüzünü Çeviriniz",
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ])),
          Container(
            width: 400,
            height: 130,
            padding: const EdgeInsets.only(top: 50.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (page) => const DocumentScanBackPage()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(
                      167, 201, 87, 1), // Set the background color
                  foregroundColor: Colors.white, // Set the text color
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text(
                "Devam Et",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ]));
  }
}

class DocumentScanBackPage extends StatefulWidget {
  const DocumentScanBackPage({super.key});

  @override
  DocumentScanBackPageState createState() => DocumentScanBackPageState();
}

class DocumentScanBackPageState extends State {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 33.0, top: 150.0),
            child: Row(
              children: [
                const Expanded(
                  child:
                      Text("Hesap Doğrulama", style: TextStyle(fontSize: 26)),
                ),
                const SizedBox(width: 16),
                Padding(
                  padding: const EdgeInsets.only(right: 33.0),
                  child: Image.asset(
                    "assets/trackbar_3.png",
                    width: MediaQuery.of(context).size.width * 0.3,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 200),
          const Text("Kimlik Belgesi Taratma", style: TextStyle(fontSize: 26)),
          const SizedBox(
            height: 50,
          ),
          Container(
              height: 300,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey),
              child: Stack(children: [
                CameraApp(),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Arka Yüzünü Çeviriniz",
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ])),
          Container(
            width: 400,
            height: 130,
            padding: const EdgeInsets.only(top: 50.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (page) => const AccountCreatedPage()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(
                      167, 201, 87, 1), // Set the background color
                  foregroundColor: Colors.white, // Set the text color
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text(
                "Devam Et",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ]));
  }
}

/// CameraApp is the Main Application.
class CameraApp extends StatefulWidget {
  /// Default Constructor
  const CameraApp({super.key});

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(_cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return MaterialApp(
      home: CameraPreview(controller),
      debugShowCheckedModeBanner: false,
    );
  }
}

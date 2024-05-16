// ignore_for_file: camel_case_types, unnecessary_breaks, library_private_types_in_public_api, use_build_context_synchronously, dead_code, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:camera/camera.dart';

late List<CameraDescription> _cameras;

String username = '';
String password = '';
String name_signup = '';
String surname_signup = '';
String number_signup = '';
String password_signup = '';
String mail_signup = '';

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
          children:<Widget> [
            TextField(
                onChanged: (value) {
                  setState(() {
                    name_signup = value;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'isim',
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                onChanged: (value) {
                  setState(() {
                    surname_signup = value;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'soyisim',
                ),
              ),
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
                   mail_signup= value;
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
                MaterialPageRoute(builder: (page) => const CameraApp()));
              },
              child: Text('devam et'),
            ),
          ],
        ),
      ),
    );
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
    );
  }
}


// class cameraPage extends StatefulWidget {
//   late CameraController controller;
//   const cameraPage({super.key});

//   @override
//   cameraPageState createState() => cameraPageState();


//   @override
//   void initState() {
//     super.initState();
//     controller = CameraController(_cameras[0], ResolutionPreset.max);
//     controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     }).catchError((Object e) {
//       if (e is CameraException) {
//         switch (e.code) {
//           case 'CameraAccessDenied':
//             // Handle access errors here.
//             break;
//           default:
//             // Handle other errors here.
//             break;
//         }
//       }
//     });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
// }

// class cameraPageState extends State {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFDDF7E3),
//     );
//   }
// }

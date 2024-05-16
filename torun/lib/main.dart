// ignore_for_file: camel_case_types, unnecessary_breaks, library_private_types_in_public_api, use_build_context_synchronously, dead_code

import 'package:flutter/material.dart';

String username = '';
String password = '';
void main() {
  runApp(
     const MaterialApp(
      home: loginPage(),
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
   bool passwordVisible=false; 
      
   @override 
    void initState(){ 
      super.initState(); 
      passwordVisible=true; 
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
              decoration:  InputDecoration(
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

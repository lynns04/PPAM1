import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 110.0, //  lebar gambar
                height: 150.0, // tinggi gambar
                child: Image.asset('android/assets/image/logo-flutter.png'),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Masukkan username Anda',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Masukkan password Anda',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                ),
              ),

              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {

                },
                child: Text('Login'),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                    Size(200.0, 40.0), //  lebar, tinggi button login
                  ),
                ),
              ),
              SizedBox(height: 8.0), // Spasi antara tombol login dan teks lupa password
              Text(
                'Lupa passwordkah mniez?',
                style: TextStyle(
                  color: Colors.deepPurple, // warna teks
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

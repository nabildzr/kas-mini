import 'package:flutter/material.dart';
import 'package:kas_mini_flutter_app/view/widget/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EazieKas Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(6.0),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: 'Selamat Datang\n'),
                      TextSpan(text: 'di '),
                      TextSpan(
                        text: 'EazieKas\n',
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: 'Catat, Kelola, Aman',
                          style: TextStyle(fontSize: 16, color: Colors.grey))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'logo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Masuk ke akun Anda',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 16),
              CustomTextField(
                obscureText: false,
                height: 50,
                hintText: 'Email',
                prefixIcon: Icon(Icons.email_outlined),
                controller: _emailController,
              ),
              SizedBox(height: 16),
              CustomTextField(
                obscureText: true,
                height: 50,
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock_outline),
                controller: _passwordController,
              ),
              SizedBox(height: 24),
              ElevatedButton(
                 child: Text('LOGIN'),
                 onPressed: () {
                   // Implementasi logika login di sini
                 },
                 style: ElevatedButton.styleFrom(
                   padding: EdgeInsets.symmetric(vertical: 16),
                   foregroundColor: Colors.purple,
                 ),
              ),
              SizedBox(height: 16),
                RichText(text: TextSpan(
                ))
            ],
          ),
        ),
      ),
    );
  }
}
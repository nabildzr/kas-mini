import 'package:flutter/material.dart';
import 'package:kas_mini_flutter_app/utils/colors.dart';
import 'package:kas_mini_flutter_app/view/widget/custom_textfield.dart';
import 'package:kas_mini_flutter_app/view/widget/page_title.dart';
import 'package:kas_mini_flutter_app/view/widget/primary_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EazieKas Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const PageTitle(title: "LOGIN"),
              const SizedBox(height: 35),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
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
                          color: primaryColor,
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
              const SizedBox(height: 40),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'logo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Masuk ke akun Anda',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              CustomTextField(
                obscureText: false,
                hintText: 'Email',
                prefixIcon: const Icon(Icons.email_outlined),
                controller: _emailController,
                maxLines: 1,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                obscureText: true,
                hintText: 'Password',
                prefixIcon: const Icon(Icons.lock_outline),
                controller: _passwordController,
                maxLines: 1,
              ),
              const SizedBox(height: 24),
              PrimaryButton(
                  text: 'Login',
                  onPressed: () {
                    print('button pressed');
                  }),
              const SizedBox(height: 16),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Belum punya akun? ',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () {
                          // Aksi/function ketika tombol ditekan
                        },
                        child: Text(
                          'Daftar sekarang',
                          style: TextStyle(
                              color: Colors.blue[400],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

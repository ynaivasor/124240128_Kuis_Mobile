import 'package:flutter/material.dart';
import 'package:kuiss/pages/home.dart';
import 'package:kuiss/root.dart';

import '../models/car.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isLogin = false;

  void login() {
    String username = usernameController.text;
    String password = passwordController.text;
    //usn mobilesukses pw 124240128
    if (username == user1.usn && password == user1.password) {
      setState(() {
        isLogin = true;
      });
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Root(username: username)),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: const Color.fromARGB(255, 54, 244, 82),
          content: Text("login berhasil!"),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text("username atau password salah!"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background halaman.
      backgroundColor: const Color(0xFFFFF7FF),

      appBar: AppBar(title: Text("Login Page"), backgroundColor: Colors.white),
      body: Center(
        child: SingleChildScrollView(
          // Mencegah konten terpotong ketika keyboard muncul.
          child: Container(
            width: 340,
            padding: const EdgeInsets.all(20),

            // Dekorasi card putih.
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),

            // Column menyusun seluruh komponen dari atas ke bawah.
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 28),
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcha8iTNmqOqUu2BJKyOKXlNA2E6atED0Z6RPx7hJASQ&s",
                  height: 200,
                ),
                // Input username / NIM.
                TextField(
                  controller: usernameController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Username',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 16,
                    ),
                  ),
                ),

                const SizedBox(height: 18),

                // Input password / nama prodi.
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 16,
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // Tombol menjalankan fungsi login().
                ElevatedButton(
                  onPressed: login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 58, 183, 93),
                    foregroundColor: const Color.fromARGB(255, 117, 121, 119),
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

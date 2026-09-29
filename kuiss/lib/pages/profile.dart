import 'package:flutter/material.dart';
import 'package:kuiss/pages/login.dart';
import '../models/car.dart';

class ProfilePage extends StatefulWidget {
  final String username;
  const ProfilePage({super.key, required this.username});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon profil
          Icon(Icons.account_circle, size: 100, color: Colors.green),

          const SizedBox(height: 16),

          // Nama pengguna
          Text(
            widget.username,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 28),

          Text(
            "Saya bersumpah mengerjakan soal kuis ini dengan jujur dan tidak melakukan kecurangan apapun itu", style: TextStyle(),
          ),
          
          // Tombol Logout
          SizedBox(
            width: 160,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                  (route) => false,
                );
              },
              child: const Text("Logout"),
            ),
          ),
        ],
      ),
    );
  }
}

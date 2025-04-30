import 'package:flutter/material.dart';

class ProfillScreen extends StatelessWidget {
  const ProfillScreen({super.key, required this.email, required this.password});
  final String email;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Profil ', style: TextStyle(fontSize: 20)),
        backgroundColor: Colors.greenAccent
      ),
     body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text('SELAMAT DATANG PADA HALAMAN PROFIL test', 
                style: TextStyle(fontSize: 30, fontWeight:FontWeight.bold),
                textAlign:TextAlign.center,),
            ), 
            Text('Email:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(email, style: TextStyle(fontSize: 16)),
            const SizedBox(height: 24),
            Text('Password:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(password, style: TextStyle(fontSize: 16)),
            const SizedBox(height: 40),
          ], 
    ),
     ),
    );
  }
}

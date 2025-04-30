import 'package:flutter/material.dart';
import 'profill_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
    final TextEditingController emailController = TextEditingController();
      final TextEditingController passwordController = TextEditingController();
      
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('HALAMAN LOGIN', style: TextStyle(fontSize: 20),),
      backgroundColor: Colors.greenAccent),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.lock_person_rounded,
                size: 150,
                color: Colors.greenAccent,
              ),
              const SizedBox(height: 40),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),),
                prefixIcon: const Icon(Icons.email_outlined),),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                labelText: 'Password',border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),),
                prefixIcon: const Icon(Icons.lock_outline),),
                obscureText: true,
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    String email = emailController.text.trim();
                    String password = passwordController.text.trim();
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProfillScreen( email: email,
                    password: password,)
                    )
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
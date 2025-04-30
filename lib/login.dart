import 'package:flutter/material.dart';
import 'profill_screen.dart';

class LoginHalaman extends StatelessWidget {
  LoginHalaman({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ValueNotifier<bool> _obscureTextNotifier = ValueNotifier<bool>(true); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HALAMAN LOGIN', style: TextStyle(fontSize: 18)),
        backgroundColor: const Color.fromARGB(255, 162, 202, 214),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.lock_person_rounded,
                size: 150,
                color: Color.fromARGB(255, 162, 202, 214),
              ),
              const SizedBox(height: 40),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), ),
                  prefixIcon: const Icon(Icons.email_outlined),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              ValueListenableBuilder<bool>( valueListenable: _obscureTextNotifier, builder: (context, obscureText, _) {
                  return TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),),
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility,),
                        onPressed: () {_obscureTextNotifier.value = !obscureText;},
                      ),
                    ),
                    obscureText: obscureText,
                  );
                },),
            const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    String email = emailController.text.trim();
                    String password = passwordController.text.trim();
                    if (!email.endsWith('@gmail.com')) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('')),
                      );
                      return;
                    }
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(email: email, password: password,),),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 162, 202, 214),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),),
                  ),
                  child: const Text('Login',  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black38) ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

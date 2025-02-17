import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LoginScreen(),
//     );
//   }
// }

class Scren2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logo
                const SizedBox(height: 50),
                const Image(
                  image: AssetImage('images/img8.png'),
                  width: 129,
                  height: 147,
                ),

                const SizedBox(height: 10),

                // App name
                const Text(
                  "مشوارك",
                  style: TextStyle(
                      fontSize: 28,
                      color: Color(0xFF059FB3),
                      fontWeight: FontWeight.bold,
                      fontFamily: "ahmad"),
                ),

                const SizedBox(height: 60),

                // Login form container
                Container(
                  width: 430,
                  height: 600,
                  decoration: BoxDecoration(
                    color: Color(0xFF059FB3),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: const EdgeInsets.all(60),
                  child: Column(
                    children: [
                      // Username field
                      TextFormField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'اسم المستخدم أو الإيميل',
                          suffixIcon: const Icon(Icons.person_outline,
                              color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          hintStyle: const TextStyle(color: Colors.white70),
                        ),
                        style: const TextStyle(color: Colors.white),
                      ),

                      const SizedBox(height: 40),

                      // Password field
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'كلمة المرور',
                          suffixIcon: const Icon(Icons.lock_outline,
                              color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          hintStyle: const TextStyle(color: Colors.white70),
                        ),
                        style: const TextStyle(color: Colors.white),
                      ),

                      const SizedBox(height: 80),

                      // Login button
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Color(0xFF059FB3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 50),
                        ),
                        child: const Text(
                          'إنشاء حساب',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Forgot password
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'هل نسيت كلمة المرور؟',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),

                      const SizedBox(height: 70),

                      // Social icons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.facebook,
                              color: Colors.white, size: 30),
                          SizedBox(width: 30),
                          Icon(FontAwesomeIcons.google,
                              color: Colors.redAccent, size: 30),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

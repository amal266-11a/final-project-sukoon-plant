import 'package:flutter/material.dart';
import 'package:final_project/pages.dart/login.dart'; // تأكدي من استيراد صفحة تسجيل الدخول

class Inteee extends StatelessWidget {
  const Inteee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 52, 70, 53),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 52, 70, 53),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 🖼️ صورة اللوقو
            Image.asset(
              'assets/img/logo.jpg', // غيّري المسار حسب مكان الصورة
              width: 150,
              height: 150,
            ),
            SizedBox(height: 40),
            Text(" Sukoon Plants",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 170, 179, 177)),),
      SizedBox(height: 40),
            // 🔘 زر الانتقال لصفحة تسجيل الدخول
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 184, 184, 184),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Start now!',
                style: TextStyle(
                  color: const Color.fromARGB(255, 7, 11, 7),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
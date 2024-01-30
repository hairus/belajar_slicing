import 'package:belajar_slicing/shared/theme.dart';
import 'package:belajar_slicing/ui/pages/login_page.dart';
import 'package:flutter/material.dart';

class WelcomPage extends StatelessWidget {
  const WelcomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 199,
                  width: 191,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 32.0,
              ),
              Text(
                "WELCOME",
                style: whiteTextStyle.copyWith(fontSize: 34, fontWeight: bold),
              ),
              Text(
                "Do meditation. Stay focused.\n Live a healthy life.",
                textAlign: TextAlign.center,
                style:
                    whiteTextStyle.copyWith(fontSize: 20, fontWeight: medium),
              ),
              const SizedBox(
                height: 119.0,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      greenColor), // Warna latar belakang
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Radius sudut border // Properti side untuk menetapkan border
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Text(
                    "LOGIN WITH EMAIL",
                    style: whiteTextStyle.copyWith(
                        fontSize: 25, fontWeight: medium),
                  ),
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              Text(
                "Don’t have an account? Sign Up",
                style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: light),
              ),
              const SizedBox(
                height: 300.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

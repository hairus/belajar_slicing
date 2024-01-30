import 'package:belajar_slicing/shared/theme.dart';
import 'package:belajar_slicing/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          color: greenDarkColor,
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 101.0,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  width: 100,
                  height: 100,
                  alignment: Alignment.topLeft,
                ),
                const SizedBox(
                  height: 31.0,
                ),
                Text(
                  "Sign In",
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  "Sign in now to acces your excercises \nand saved music.",
                  style: lightWhiteTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 22,
                    color: greyColor,
                  ),
                ),
                const SizedBox(
                  height: 55.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      labelStyle: TextStyle(
                        color: greenColor,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: greenColor,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greenColor),
                      ),
                    ),
                    cursorColor: greenColor,
                    onChanged: (value) {},
                    style: whiteTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: medium,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: greenColor,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: greenColor,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greenColor),
                      ),
                    ),
                    cursorColor: greenColor,
                    onChanged: (value) {},
                    style: whiteTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: medium,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password',
                      style: whiteTextStyle.copyWith(color: greenColor),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 29.0,
                ),
                Center(
                  child: ElevatedButton(
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
                              builder: (context) => const HomePage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      child: Text(
                        "LOGIN",
                        style: whiteTextStyle.copyWith(
                            fontSize: 25, fontWeight: medium),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text(
                    "Don’t have an account? Sign Up",
                    style: whiteTextStyle.copyWith(
                        fontSize: 20, fontWeight: light),
                  ),
                ),
                const SizedBox(
                  height: 140.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

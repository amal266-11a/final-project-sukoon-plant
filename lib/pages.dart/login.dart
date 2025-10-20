import 'package:final_project/constans/colorsCont.dart';
import 'package:final_project/constans/constans.dart';
import 'package:final_project/pages.dart/Singnup.dart';
import 'package:final_project/pages.dart/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(219, 251, 255, 248),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 64),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: inputdecoration.copyWith(
                    hintText: "Enter your Email:  ",
                  ), //varibal
                ),
      
                SizedBox(height: 33),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: inputdecoration.copyWith(
                    hintText: "Enter your Password:  ",
                  ), //varibal
                ),
                SizedBox(height: 33),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => HomePage()),
);
                  },
                  child: Text(
                    "SignIn",
                    style: TextStyle(fontSize: 19, color: colorTextBottom),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(bottomColor),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " don't have an account ?",
                      style: TextStyle(color: Colors.black, ),
                    ),
                    TextButton.icon(
                      onPressed: () {
                         Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            ),
                          );
                      },
                      
                      label: Text(
                        'SignUp',
                        style: TextStyle(color: const Color.fromARGB(255, 81, 142, 254),fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

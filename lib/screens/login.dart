import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formkey = GlobalKey<FormState>();

  void moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, "/home");

      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromRGBO(24, 21, 30, 1),
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Welcome User",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'asset/images/login.jpg', // Replace with the path to your image
              height: 200,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      icon: const Icon(Icons.person_2_rounded,
                          color: Color.fromRGBO(214, 116, 131, 1)),
                      hintText: "Enter Username",
                      labelText: "Username",
                      labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 172, 172, 172)),
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 172, 172, 172)),
                    ),
                    style: const TextStyle(color: Colors.white),
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "UserName Cannot be Empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      icon: const Icon(Icons.email,
                          color: Color.fromRGBO(214, 116, 131, 1)),
                      hintText: "Enter E-mail",
                      labelText: "E-mail id",
                      labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 172, 172, 172)),
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 172, 172, 172)),
                    ),
                    style: const TextStyle(color: Colors.white),
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "E-mail id cannot be empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      icon: const Icon(Icons.lock,
                          color: Color.fromRGBO(214, 116, 131, 1)),
                      hintText: "Enter Password",
                      labelText: "Password",
                      labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 172, 172, 172)),
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 172, 172, 172)),
                    ),
                    style: const TextStyle(color: Colors.white),
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "Password Cannot be Empty";
                      }
                      return null;
                    },
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => moveToHome(context),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: changeButton ? 50 : 120,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: changeButton
                      ? Colors.green
                      : const Color.fromRGBO(214, 116, 131, 1),
                  shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                  borderRadius: changeButton ? null : BorderRadius.circular(8),
                ),
                child: changeButton
                    ? const Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : const Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
      color: Colors.white,
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              "Welcome User",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                          borderRadius: BorderRadius.circular(10)),
                      icon: const Icon(Icons.person_2_rounded),
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
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
                  (SizedBox(
                    height: 10,
                  )),
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      icon: const Icon(Icons.email),
                      hintText: "Enter E-mail",
                      labelText: "E-mail id",
                    ),
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "E-mail id cannot be empty";
                      }
                      return null;
                    },
                  ),
                  (SizedBox(
                    height: 10,
                  )),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      icon: const Icon(Icons.lock),
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
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
                  color: changeButton ? Colors.green : Colors.amber,
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

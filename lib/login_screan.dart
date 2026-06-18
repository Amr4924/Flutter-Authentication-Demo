import 'package:flutter/material.dart';
import 'second_screan.dart';

class LoginScrean extends StatefulWidget {
  const LoginScrean({super.key});

  @override
  State<LoginScrean> createState() => _LoginScreanState();
}

class _LoginScreanState extends State<LoginScrean> {
  bool hiddenPassword = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String email = "amrsaad0016a@gmail.com";
  String password = "12345678";
  final _formKey = GlobalKey<FormState>();
  void togglePassword() {
    setState(() {
      hiddenPassword = !hiddenPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text(
          "SIGN IN",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.info))],
      ),

      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Image.asset("assets/Logo.jpg"),
            // ------- Email Field --------/
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: emailController,
                autofocus: true,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "The field is empty";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_rounded),
                  labelText: "Email",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Email@gmail.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // ------- Password Field --------/
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passwordController,
                obscureText: hiddenPassword,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "The field is empty";
                  } else if (value != null && value.length < 8) {
                    return "The password length must be at least (8) characters.";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Password",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "*************",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.red, width: 1),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      togglePassword();
                    },

                    icon: Icon(
                      hiddenPassword ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
              ),
            ),

            // ------- Submit Field --------/
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent,
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScrean(),
                      ),
                    );
                  } else {
                    SnackBar snakeBar = SnackBar(
                      backgroundColor: Colors.deepPurpleAccent,
                      content: Text(
                        "Please review your information carefully.",
                        style: TextStyle(color: Colors.white),
                      ),
                      duration: Duration(seconds: 2),
                      action: SnackBarAction(label: "Okay", onPressed: () {}),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snakeBar);
                  }
                },
                child: Text("Sign in", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
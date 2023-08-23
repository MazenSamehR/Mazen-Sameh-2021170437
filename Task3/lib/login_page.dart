import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  final _formKey = GlobalKey<FormState>();
  bool _rememberMe = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Center(
                      child: Text(
                    "talabat",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 80,
                        fontFamily: "talabat",
                        fontWeight: FontWeight.bold),
                  )),
                  SizedBox(height: 30),
                  Center(
                      child: Text(
                    "Sign up for free",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: "talabat",
                        fontWeight: FontWeight.bold),
                  )),
                  SizedBox(height: 50),
                  Container(
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your Name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Name',
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.deepOrange,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your Email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.deepOrange,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your Password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.deepOrange,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        value: _rememberMe,
                        onChanged: (value) {
                          _rememberMe = value!;
                        },
                        activeColor: Colors.deepOrange,
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: "talabat",
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Perform login
                        // Navigate to the HomePage after successful login
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                      minimumSize: Size(400, 60), // Set the size of the button
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(25), // Make it circular
                      ), // Set the background color
                    ),
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "talabat",
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quizz_app/page/category_page.dart';

TextEditingController nameController = TextEditingController();

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 1 / 15,
            left: 0,
            right: 0,
            child: Image.asset(
              "asset/images/iconn.png",
              width: 200,
              height: 200,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 2 / 3,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 238, 238, 238),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      "Login",
                      style: TextStyle(
                        fontFamily: "Dancing",
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: nameController,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_outline_outlined,
                          color: Colors.red,
                        ),
                        hintText: "Username",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(133, 132, 132, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Username is required.';
                        }
                        if (value.length < 9) {
                          return 'Username must be at least 9 characters long.';
                        }
                        if (!value[0].contains(RegExp(r'[A-Z]'))) {
                          return 'Username must start with a capitalized letter.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "New to Quiz? ",
                          style: TextStyle(
                            color: Color.fromRGBO(133, 132, 132, 1),
                          ),
                        ),
                        GestureDetector(
                          child: const Text(
                            "Register?",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 40),
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.red,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CategoryPage()),
                            );
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(),
                    const Icon(
                      Icons.fingerprint,
                      size: 60,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "Use Touch ID",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10,
                                height: 10,
                                child: Checkbox(
                                  value: true,
                                  onChanged: (value) {},
                                  activeColor: Colors.red,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "Remember Me",
                                style: TextStyle(
                                  color: Color.fromRGBO(133, 132, 132, 1),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

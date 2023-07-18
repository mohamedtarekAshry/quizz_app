import 'package:flutter/material.dart';
import 'package:quizz_app/page/login_page.dart';

class OpeningPage extends StatelessWidget {
  const OpeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("asset/images/Background1.jpg"),
                fit: BoxFit.fill),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.22,
              ),
              Image.asset(
                "asset/images/logo1.png",
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.height * 0.2,
              ),
              const Text(
                " Quiz App",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 24,
                  fontFamily: "Dancing",
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "We Are Creative, enjoy our App",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: "Dancing",
                ),
              ),
              const Spacer(),
              Container(
                width: 120,
                margin:
                    const EdgeInsets.symmetric(vertical: 28, horizontal: 26),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

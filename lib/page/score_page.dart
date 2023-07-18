import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizz_app/page/category_page.dart';
import 'package:quizz_app/page/login_page.dart';
import 'package:quizz_app/page/opening_page.dart';
import 'package:quizz_app/shared/score_container.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({
    super.key,
    required this.score,
    required this.index,
  });
  final int score;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/images/Background1.jpg"),
              fit: BoxFit.fill),
        ),
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(
                  flex: 1,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Hello ',
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontFamily: "Dancing",
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: nameController.text,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 57, 159, 173),
                        ),
                      ),
                      const TextSpan(
                        text: '\nyour Score is ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 226, 230, 18),
                          fontSize: 30,
                        ),
                      ),
                      TextSpan(
                        text: "${score}pt",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Dancing",
                          fontSize: 20,
                          color: Color.fromARGB(255, 57, 159, 173),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                ScoreBtn(
                  btnName: "Play Again ?",
                  btnColor: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CategoryPage()),
                    );
                  },
                  withIcon: true,
                ),
                ScoreBtn(
                  btnName: "Reset",
                  btnColor: Colors.red,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OpeningPage()),
                    );
                  },
                  withIcon: false,
                ),
                const Spacer(
                  flex: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        SystemNavigator.pop();
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "asset/images/Quit.png",
                            color: Colors.white,
                          ),
                          const Text(
                            "Quit",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

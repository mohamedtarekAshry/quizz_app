import 'package:flutter/material.dart';
import 'package:quizz_app/data/data.dart';
import 'package:quizz_app/page/questions_page.dart';
import 'package:quizz_app/shared/category_container.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CategoryContainer(
            testName: "Sport Test",
            containerColor: Colors.red,
            onTabFunction: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuestionsPage(
                    testName: "Sport Test",
                    testColor: Colors.red,
                    testList: sportTest,
                  ),
                ),
              );
            },
          ),
          CategoryContainer(
            testName: "History Test",
            containerColor: Colors.amber,
            onTabFunction: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuestionsPage(
                    testName: "History Test",
                    testColor: Colors.amber,
                    testList: historyTest,
                  ),
                ),
              );
            },
          ),
          CategoryContainer(
            testName: "Art test",
            containerColor: Colors.blue,
            onTabFunction: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuestionsPage(
                    testName: "Art test",
                    testColor: Colors.blue,
                    testList: artTest,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

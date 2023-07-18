import 'package:flutter/material.dart';
import 'package:quizz_app/page/score_page.dart';

class QuestionsPage extends StatefulWidget {
  final Color? testColor;
  final String? testName;
  final List testList;

  const QuestionsPage(
      {super.key, this.testColor, this.testName, required this.testList});

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  int index = 0;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.testColor,
        leadingWidth: 100,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: Center(child: Text(widget.testName!)),
        title: Column(
          children: [
            const Text("Qestion No:"),
            Text("${index + 1}/${widget.testList.length}"),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.abc,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(18),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Question:",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                fontFamily: "Dancing",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.testList[index]["question"],
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            const Text(
              "Answers:",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                fontFamily: "Dancing",
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0;
                        i < (widget.testList[index]["answers"] as List).length;
                        i++)
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: widget.testColor),
                          onPressed: () {
                            score = score +
                                widget.testList[index]["answers"][i]
                                    ["score"] as int;

                            if (index == widget.testList.length - 1) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ScorePage(
                                          index: index,
                                          score: score,
                                        )),
                              );
                            } else {
                              setState(() {
                                index++;
                              });
                            }
                          },
                          child: Text(
                              widget.testList[index]["answers"][i]["ans"])),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

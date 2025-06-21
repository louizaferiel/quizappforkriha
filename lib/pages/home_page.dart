import 'package:flutter/material.dart';
import 'package:flutter_basics/models/question_item_model.dart';
import 'package:flutter_basics/widgets/answer_item.dart';
import 'package:flutter_basics/widgets/question_item.dart';
import 'package:flutter_basics/widgets/display_choice_part.dart';
import 'package:flutter_basics/models/answer_item_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionIndex = 0;
  List<AnswerItemModel> choosenAnswers = [];
  int answerChosen = -1;
  int resultedScore = questions.length * 10;
  bool showTotalScore = false;

  @override
  Widget build(BuildContext context) {
    //showTotalScore = myTotalchoice >= resultedScore;
    return Scaffold(
      body: SafeArea(
        child:
            !showTotalScore
                ? Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      QuestionItem(questionItem: questions[questionIndex]),
                      const SizedBox(height: 30),
                      Column(
                        children: List.generate(
                          questions[questionIndex].availableAnswers.length,
                          (index) => AnswerItem(
                            answerMap:
                                questions[questionIndex]
                                    .availableAnswers[index],
                            isAnswerChosen: answerChosen == index,
                            questionIndexChangeCallback: () {
                              setState(() {
                                answerChosen = index;
                              });
                            },
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
  setState(() {
    if (answerChosen != -1) {
      // Ajouter la réponse choisie à la liste
      choosenAnswers.add(
        questions[questionIndex].availableAnswers[answerChosen],
      );
    }

    if (questionIndex + 1 < questions.length) {
      questionIndex += 1;
    } else {
      // Fin des questions : afficher le résumé
      showTotalScore = true;
    }

    // Réinitialiser le choix sélectionné
    answerChosen = -1;
  });
},

                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          child: const Text(
                            'Suivant',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                )
              
                : DisplayChoicePart(
                  myTotalchoices: choosenAnswers,
                    
                  resetQuizOnPressed: () {
                    setState(() {
                      questionIndex = 0;
                      choosenAnswers.clear();
                      showTotalScore = false; // <- Ajout essentiel
                      answerChosen = -1;      // <- Pour être sûr que rien n'est sélectionné
                    });
                  },
                ),
      ),
    );
  }
}

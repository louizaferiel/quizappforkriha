import 'package:flutter/material.dart';
import 'package:flutter_basics/models/answer_item_model.dart';

class DisplayChoicePart extends StatelessWidget {
  final List<AnswerItemModel> myTotalchoices;
  final VoidCallback resetQuizOnPressed;
  const DisplayChoicePart({
    super.key,

    required this.myTotalchoices,
    required this.resetQuizOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Merci pour votre confiance!',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8.0),
          Text(
            'Recaps des choix : ',
            style: const TextStyle(fontSize: 22),
          ),
          Column(
  children: myTotalchoices.map((choice) => Text(choice.title)).toList(),
),

          TextButton(
            onPressed: resetQuizOnPressed,
            child: Text(
              'Nouvelle demande',
              style: Theme.of(
                context,
              ).textTheme.titleMedium!.copyWith(color: Colors.pink),
            ),
          ),
        ],
      ),
    );
  }
}

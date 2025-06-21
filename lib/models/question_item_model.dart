import 'package:flutter/material.dart';
import 'package:flutter_basics/models/answer_item_model.dart';

class QuestionItemModel {
  final String title;
  final List<AnswerItemModel> availableAnswers;

  QuestionItemModel({required this.title, required this.availableAnswers});
}

List<QuestionItemModel> questions = [
  QuestionItemModel(
    title: 'Que souhaites-tu louer ?',
    availableAnswers: [
      AnswerItemModel(
        title: 'Voiture',
        onPressed: () => debugPrint('Voiture Choice'),
      ),
      AnswerItemModel(
        title: 'Équipements électroniques',
        onPressed: () => debugPrint('Équipements électroniques Choice'),
      ),
      AnswerItemModel(
        title: 'Salle de réunion / événement',
        onPressed: () => debugPrint('Salle de réunion / événement Choice'),
      ),
      AnswerItemModel(
        title: 'Matériel de BTP',
        onPressed: () => debugPrint('Matériel de BTP Choice'),
      ),
    ],
  ),
  QuestionItemModel(
    title: 'Pour quelle durée souhaites-tu louer ?',
    availableAnswers: [
      AnswerItemModel(
        title: '1 jour',
        onPressed: () => debugPrint('1 jour Choice'),
      ),
      AnswerItemModel(
        title: '3 jours',
        onPressed: () => debugPrint('3 jours Choice'),
      ),
      AnswerItemModel(
        title: '7 jours',
        onPressed: () => debugPrint('7 jours Choice'),
      ),
      AnswerItemModel(
        title: '15 jours ou plus',
        onPressed: () => debugPrint('15 jours ou plus Choice'),
      ),
    ],
  ),
  QuestionItemModel(
    title: 'Souhaites-tu souscrire une assurance ?',
    availableAnswers: [
      AnswerItemModel(
        title: 'Oui – Assurance complète',
        onPressed: () => debugPrint('Oui – Assurance complète Choice'),
      ),
      AnswerItemModel(
        title: 'Oui – Assurance basique',
        onPressed: () => debugPrint('Oui – Assurance basique Choice'),
      ),
      AnswerItemModel(
        title: 'Non – Pas d’assurance',
        onPressed: () => debugPrint('Non – Pas d’assurance Choice'),
      ),
      AnswerItemModel(
        title: 'Je déciderai plus tard',
        onPressed: () => debugPrint('Je déciderai plus tard Choice'),
      ),
    ],
  ),
  QuestionItemModel(
    title: ' Veux-tu un service de transport ou livraison ?',
    availableAnswers: [
      AnswerItemModel(
        title: 'Oui – Livraison à domicile',
        onPressed: () => debugPrint('Oui – Livraison à domicile Choice'),
      ),
      AnswerItemModel(
        title: 'Oui – Retrait en agence',
        onPressed: () => debugPrint('Oui – Retrait en agence Choice'),
      ),
      AnswerItemModel(
        title: 'Non – Je récupère moi-même',
        onPressed: () => debugPrint('Non – Je récupère moi-même Choice'),
      ),
      AnswerItemModel(
        title: 'Je ne sais pas encore',
        onPressed: () => debugPrint('Je ne sais pas encore Choice'),
      ),
    ],
  ),
];

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:maa/widgets/quiz/questions.dart';

import 'category.dart';


const Map<int,dynamic> demoAnswers = {
  0:"Multi Pass",
  1:1,
  2:"Motherboard",
  3:"Cascading Style Sheet",
  4:"Marshmallow",
  5:"140",
  6:"Python",
  7:"True",
  8:"Jakarta"
};

final List<Category> categories = [
  Category(9,"Risk Analysis", icon: FontAwesomeIcons.globeAsia),

];

final List<Question> demoQuestions = Question.fromData([
  {
    "category": "Science: Computers",
    "type": "multiple",
    "difficulty": "easy",
    "question": "Have you recently moved from another City?",
    "correct_answer": "Yes",
    "incorrect_answers": [
      "No"
    ]
  },
  {
    "category": "Science: Computers",
    "type": "multiple",
    "difficulty": "easy",
    "question": "Have you recently travelled out of India?",
    "correct_answer": "Yes",
    "incorrect_answers": [
      "No"
    ]
  },
  {
    "category": "Science: Computers",
    "type": "multiple",
    "difficulty": "easy",
    "question": "What is your age?",
    "correct_answer": "Below 10 or Above 50",
    "incorrect_answers": [
      "others"
    ]
  },
  {
    "category": "Science: Computers",
    "type": "multiple",
    "difficulty": "easy",
    "question": "Are you feeling discomfort in breathing?",
    "correct_answer": "Yes",
    "incorrect_answers": [
      "No"
    ]
  },
  {
    "category": "Science: Computers",
    "type": "multiple",
    "difficulty": "easy",
    "question": "Are you suffering from Fever?",
    "correct_answer": "Yes",
    "incorrect_answers": [
      "No"
    ]
  },
  {
    "category": "Science: Computers",
    "type": "multiple",
    "difficulty": "easy",
    "question": "Have you been in Contact in the person came from other country or other place?",
    "correct_answer": "yes",
    "incorrect_answers": [
     "No",
    ]
  },
  {
    "category": "Science: Computers",
    "type": "multiple",
    "difficulty": "easy",
    "question": "Do have any other disease like BP, Diabetes, TB, Asthma or any other heart related diseases?",
    "correct_answer": "yes",
    "incorrect_answers": [
      "No",
    ]
  },
  {
    "category": "Science: Computers",
    "type": "boolean",
    "difficulty": "easy",
    "question": "Do you have dry cough?",
    "correct_answer": "Yes",
    "incorrect_answers": [
      "No"
    ]
  },
  {
    "category": "Science: Computers",
    "type": "multiple",
    "difficulty": "easy",
    "question": "Do you have Cold?",
    "correct_answer": "Yes",
    "incorrect_answers": [
      "No"
    ]
  }
]);
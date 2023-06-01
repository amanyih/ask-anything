import 'package:askanything/application/answer/bloc/answer_event.dart';
import 'package:askanything/infrastructure/answer/answer_repository.dart';
import 'package:askanything/presentation/widgets/answer.dart';
import 'package:askanything/presentation/widgets/question.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/answer/bloc/answer_bloc.dart';
import '../../../application/answer/bloc/answer_state.dart';
import '../../../domain/answer/answer.dart';
import '../../../domain/answer/answer_form.dart';
import '../../../domain/question/question.dart';

class QuestionDetail extends StatefulWidget {
  static Question question = Question(
      id: "1",
      title:
          "What do you think is the best GPU to play Apex nds?  Do you have any suggestions?",
      description:
          "What do you think is the best GPU to play Apex Legends?  Do you have any suggestions?",
      author: "Merwan Junyedi",
      anonymous: false,
      answers: ["1", "2", "3"],
      topic: "Technology",
      likes: ["1", "2"],
      dislikes: ["1,2"],
      createdAt: DateTime.now(),
      updatedAt: DateTime.now());

  @override
  State<QuestionDetail> createState() => _QuestionDetailState();
}

class _QuestionDetailState extends State<QuestionDetail> {
  String dummyQuestionId = '647817e1ffb1e50ecf827531';
  String dummyAuthorId = '6448f5ead561de32dc337d5b';
  bool isAnonymous = false;
  final TextEditingController _textController = TextEditingController();
  String finalText = '';
  final List<Answer> answerList = [
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "2",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "3",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> answerWidget = answerList
        .map((answer) => Row(
              children: [
                SizedBox(
                  width: 10.h,
                ),
                AnswerW(answer: answer),
              ],
            ))
        .toList();

    return BlocProvider(
      create: (context) =>
          AnswerBloc(RepositoryProvider.of<AnswerRepository>(context)),
      child: Scaffold(
        appBar: AppBar(title: Text('question comments')),
        bottomNavigationBar: BottomAppBar(),
        body: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            QuestionW(question: QuestionDetail.question),
            SizedBox(
              height: 10.h,
            ),
            Container(
              // color: Colors.red,
              child: Expanded(
                child: ListView.builder(
                    itemCount: answerList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 0, top: 0, bottom: 5),
                        child: answerWidget[index],
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isAnonymous = !isAnonymous;
                      });
                    },
                    child: Container(
                      width: 40.w,
                      height: 40.h,
                      child: Image.asset(
                          // ignore: dead_code
                          'assets/images/${isAnonymous ? 'anonnymous.png' : 'user 1.png'}'),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: Container(
                      height: 50.h,
                      child: TextField(
                        controller: _textController,
                        decoration: InputDecoration(
                          suffixIcon: BlocConsumer<AnswerBloc, AnswerState>(
                            listener: (context, state) {
                              // TODO: implement listener
                            },
                            builder: (context, state) {
                              return IconButton(
                                  onPressed: () {
                                    finalText = _textController.text;
                                    print(finalText);

                                    BlocProvider.of<AnswerBloc>(context).add(
                                        AddAnswerEvent(AnswerForm(
                                            author: dummyAuthorId,
                                            anonymous: isAnonymous,
                                            image: "",
                                            question: dummyQuestionId,
                                            text: finalText)));
                                  },
                                  icon: Icon(Icons.send));
                            },
                          ),
                          border: InputBorder.none,
                          hintText: "reply",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

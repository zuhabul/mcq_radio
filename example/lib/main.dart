import 'package:flutter/material.dart';
import 'package:mcq_radio/mcq_radio.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'MCQ Radio buttons Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          backgroundColor: Colors.amber[900],
        ),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

const one = "ক";
const two = "খ";
const three = "গ";
const four = "ঘ";
const five = "ঙ";
const unanswered = "";

enum OptionTitles { one, two, three, four, five, unanswered }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  OptionTitles _optionTitle = OptionTitles.unanswered;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "1. Which one is the capital of Bangladesh?",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "SolaimanLipi",
            ),
          ),
        ),
        MCQRadio<OptionTitles>(
          fillColor: MaterialStateColor.resolveWith(
              (states) => Colors.black), // color of the radio button
          value: OptionTitles
              .one, // value of the radio button (enum) ক, খ, গ, ঘ, ঙ etc
          groupValue: _optionTitle, // value of the selected radio button
          mcqOptionAlphabetStyle: const TextStyle(
            fontSize: 20,
            fontFamily: "SolaimanLipi",
            color: Colors.black, // color of the radio button Alphabet
          ), // style of the radio button text
          circleRadius: 20, // radius of the radio button
          mcqOptionAlphabet: one,
          onChanged: (OptionTitles? value) {
            setState(() {
              _optionTitle = value!;
            });
          },
        ),
        MCQRadio<OptionTitles>(
          fillColor: MaterialStateColor.resolveWith((states) => Colors.black),
          value: OptionTitles.two,
          groupValue: _optionTitle,
          mcqOptionAlphabet: two,
          onChanged: (OptionTitles? value) {
            setState(() {
              _optionTitle = value!;
            });
          },
        ),
        MCQRadio<OptionTitles>(
          fillColor: MaterialStateColor.resolveWith((states) => Colors.black),
          value: OptionTitles.three,
          groupValue: _optionTitle,
          mcqOptionAlphabet: three,
          onChanged: (OptionTitles? value) {
            setState(() {
              _optionTitle = value!;
            });
          },
        ),
        MCQRadio<OptionTitles>(
          fillColor: MaterialStateColor.resolveWith((states) => Colors.black),
          value: OptionTitles.four,
          groupValue: _optionTitle,
          mcqOptionAlphabet: four,
          onChanged: (OptionTitles? value) {
            setState(() {
              _optionTitle = value!;
            });
          },
        ),
        MCQRadio<OptionTitles>(
          fillColor: MaterialStateColor.resolveWith((states) => Colors.black),
          value: OptionTitles.five,
          groupValue: _optionTitle,
          mcqOptionAlphabet: five,
          onChanged: (OptionTitles? value) {
            print(value);
            setState(() {
              _optionTitle = value!;
            });
          },
        ),
      ],
    );
  }
}

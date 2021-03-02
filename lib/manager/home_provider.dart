import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  List sequence = [];
  final TextEditingController numberFieldController = TextEditingController();

  void countSequenceOne() {
    sequence = [];

    List.generate(
      int.parse(numberFieldController.text),
      (index) => sequence.add(index + 1),
    );

    notifyListeners();
  }

  void countSequenceTwo() {
    sequence = [];
    List secondSequence = [];

    List.generate(
      int.parse(numberFieldController.text),
      (index) => sequence.add(index + 1),
    );

    List.generate(
      int.parse(numberFieldController.text),
      (index) => secondSequence.add(int.parse(numberFieldController.text) - (index + 1)),
    );

    sequence.addAll([...secondSequence]);

    notifyListeners();
  }

  void countSequenceThree() {
    sequence = [];

    List.generate(
      int.parse(numberFieldController.text),
      (index) => sequence.add(
        int.parse(numberFieldController.text) * ((index + 1) + index + 1) + index,
      ),
    );

    notifyListeners();
  }

  void countSequenceFour() {
    sequence = [];

    List.generate(
      int.parse(numberFieldController.text),
      (index) {
        if ((index + 1) % 5 == 0) {
          sequence.add('Lima');
        } else if ((index + 1) % 7 == 0) {
          sequence.add('Tujuh');
        } else {
          sequence.add(index + 1);
        }
      },
    );

    notifyListeners();
  }
}

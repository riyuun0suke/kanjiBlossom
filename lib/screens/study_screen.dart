import 'package:flutter/material.dart';
import '../models/kanji.dart';

class StudyScreen extends StatelessWidget {
  final Kanji kanji;

  StudyScreen({required this.kanji});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Study Kanji')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text(kanji.character, style: TextStyle(fontSize: 64))),
            SizedBox(height: 20),
            Text('Onyomi (音読み): ${kanji.onyomi}', style: TextStyle(fontSize: 20)),
            Text('Kunyomi (訓読み): ${kanji.kunyomi}', style: TextStyle(fontSize: 20)),
            Text('Meaning: ${kanji.meaning}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 30),
            Text('Example words:', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ...kanji.examples.map((ex) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: Text('${ex.word} (${ex.reading}) - ${ex.meaning}', style: TextStyle(fontSize: 18)),
                )),
            SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  kanji.learned = true; // цвет поменяется после нажатия
                  Navigator.pop(context);
                },
                child: Text('I know it! 🌸'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

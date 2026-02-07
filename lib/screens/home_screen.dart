import 'package:flutter/material.dart';
import '../data/kanji_data.dart';
import '../widgets/kanji_tile.dart';
import 'study_screen.dart';
import 'practice_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kanji Blossom 🌸')),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: kanjiList.length,
        itemBuilder: (context, index) {
          final kanji = kanjiList[index];
          return KanjiTile(
            kanji: kanji,
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (_) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Icon(Icons.school),
                      title: Text('Study'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => StudyScreen(kanji: kanji)),
                        );
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.brush),
                      title: Text('Practice Writing'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => PracticeScreen(kanji: kanji)),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

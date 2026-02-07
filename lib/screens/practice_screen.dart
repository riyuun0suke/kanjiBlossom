import 'package:flutter/material.dart';
import '../models/kanji.dart';

class PracticeScreen extends StatefulWidget {
  final Kanji kanji;

  PracticeScreen({required this.kanji});

  @override
  _PracticeScreenState createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  List<Offset?> points = [];

  // ПРОСТАЯ ПРОВЕРКА: засчитываем, если пользователь нарисовал хотя бы 10 точек
  bool checkKanjiDrawing(List<Offset?> userPoints) {
    int drawnPoints = userPoints.where((p) => p != null).length;
    return drawnPoints > 10;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Practice Writing')),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: Text(
              widget.kanji.character,
              style: TextStyle(fontSize: 64),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Draw the kanji below to remember it',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
                color: Theme.of(context).colorScheme.surfaceVariant,
              ),
              child: GestureDetector(
                onPanUpdate: (details) {
                  setState(() {
                    points.add(details.localPosition); // локальные координаты внутри поля
                  });
                },
                onPanEnd: (_) => points.add(null),
                child: CustomPaint(
                  painter: KanjiPainter(points),
                  child: Container(),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      points.clear();
                    });
                  },
                  child: Text('Clear'),
                ),
                ElevatedButton(
                  onPressed: () {
                    bool correct = checkKanjiDrawing(points);
                    if (correct) {
                      widget.kanji.learned = true; // цвет меняется только после успешной практики
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Well done! 🌸')),
                      );
                      Navigator.pop(context);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Try again! Draw something.')),
                      );
                    }
                  },
                  child: Text('Done 🌸'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class KanjiPainter extends CustomPainter {
  final List<Offset?> points;
  KanjiPainter(this.points);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.pink
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null)
        canvas.drawLine(points[i]!, points[i + 1]!, paint);
    }
  }

  @override
  bool shouldRepaint(KanjiPainter oldDelegate) => true;
}

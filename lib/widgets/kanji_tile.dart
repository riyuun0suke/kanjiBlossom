import 'package:flutter/material.dart';
import '../models/kanji.dart';

class KanjiTile extends StatefulWidget {
  final Kanji kanji;
  final VoidCallback onTap;

  KanjiTile({required this.kanji, required this.onTap});

  @override
  _KanjiTileState createState() => _KanjiTileState();
}

class _KanjiTileState extends State<KanjiTile> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    _scale = Tween<double>(begin: 1.0, end: 1.3).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Только эффект "blossom"
        _controller.forward().then((_) => _controller.reverse());
        widget.onTap(); // открытие меню Study / Practice
      },
      child: ScaleTransition(
        scale: _scale,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: widget.kanji.learned
                ? Theme.of(context).colorScheme.secondary
                : Theme.of(context).colorScheme.surfaceVariant,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            widget.kanji.character,
            style: TextStyle(
              fontSize: 32,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ),
    );
  }
}

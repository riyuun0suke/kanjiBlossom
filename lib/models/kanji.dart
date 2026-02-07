class ExampleWord {
  final String word;
  final String reading; // Japanese reading
  final String meaning;

  ExampleWord({required this.word, required this.reading, required this.meaning});
}

class Kanji {
  final String character;
  final String onyomi;
  final String kunyomi;
  final String meaning;
  final List<ExampleWord> examples;
  bool learned;

  Kanji({
    required this.character,
    required this.onyomi,
    required this.kunyomi,
    required this.meaning,
    this.examples = const [],
    this.learned = false,
  });
}

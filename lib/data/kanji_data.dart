import '../models/kanji.dart';

List<Kanji> kanjiList = [
  Kanji(
    character: '日',
    onyomi: 'ニチ',
    kunyomi: 'ひ',
    meaning: 'Sun',
    examples: [
      ExampleWord(word: '日本', reading: 'にほん', meaning: 'Japan'),
      ExampleWord(word: '日曜日', reading: 'にちようび', meaning: 'Sunday'),
    ],
  ),
  Kanji(
    character: '月',
    onyomi: 'ゲツ',
    kunyomi: 'つき',
    meaning: 'Moon',
    examples: [
      ExampleWord(word: '月曜日', reading: 'げつようび', meaning: 'Monday'),
      ExampleWord(word: '一月', reading: 'いちがつ', meaning: 'January'),
    ],
  ),
  Kanji(
    character: '水',
    onyomi: 'スイ',
    kunyomi: 'みず',
    meaning: 'Water',
    examples: [
      ExampleWord(word: '水曜日', reading: 'すいようび', meaning: 'Wednesday'),
      ExampleWord(word: '水道', reading: 'すいどう', meaning: 'Water supply'),
    ],
  ),
  Kanji(
    character: '人',
    onyomi: 'ジン、ニン',
    kunyomi: 'ひと、ーと、ーり',
    meaning: 'Person',
    examples: [
      ExampleWord(word: '主人', reading: 'しゅじん', meaning: 'Master, husband'),
      ExampleWord(word: '人口', reading: 'じんこう', meaning: 'Population'),
      ExampleWord(word: '人生', reading: 'じんせい', meaning: 'Life'),
      ExampleWord(word: '他人', reading: 'じんこう', meaning: 'Population'),
    ],
  ),
];

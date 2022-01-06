class Question {
  final int? id, answer;
  final String? question;
  final List<String>? options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Apakah maksud waqaf?",
    "options": ['Berhenti', 'Sambung tanpa nafas baru', 'Sambung', 'Dengung'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "Apakah pengertian qalqalah dari segi bahasa? ",
    "options": ['jelas ', 'lantunan ', 'nyata', 'berhenti'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "Qalqalah terbahagi kepada ________ jenis.",
    "options": ['1', '2', '3', '4'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question":
        "“Pertemuan antara mim sakinah dengan huruf ba dengan dengung 2 harakat”. ",
    "options": [
      'Izhar Halqi',
      'Wajibul Ghunnah',
      'Ikhfa Syafawi',
      'Idgham bila ghunnah'
    ],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "Qalqalah terbahagi kepada ________ jenis.",
    "options": ['1', '2', '3', '4'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "Berapakah huruf wajibul ghunnah?",
    "options": ['1', '2', '3', '4'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "Apakah maksud izhar?.",
    "options": ['jelas ', 'lantunan ', 'nyata', 'berhenti'],
    "answer_index": 0,
  },
  {
    "id": 8,
    "question": "Apakah maksud mim sakinah?",
    "options": [
      'Mim bersabdu',
      'Mim sukun',
      'Mim berbaris depan',
      'Mim berbaris atas'
    ],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "Berapakah huruf Ikhfa Hakiki?",
    "options": ['10', '12', '14', '15'],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "Berapakah huruf Idgham Bila Ghunnah?",
    "options": ['1', '2', '3', '4'],
    "answer_index": 1,
  },
];

class RighteousPeople {
  final String engname;
  final String arbname;
  final String peopleInfo;
  final String peopleImages;
  final List<HistorySection> peopleHistory;

  RighteousPeople({
    required this.engname,
    required this.arbname,
    required this.peopleInfo,
    required this.peopleImages,
    required this.peopleHistory,
  });
}

class HistorySection {
  final String title;
  final String content;

  HistorySection({
    required this.title,
    required this.content,
  });
}
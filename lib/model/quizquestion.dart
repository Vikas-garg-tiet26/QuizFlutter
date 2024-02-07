class QuizQuestion {
  const QuizQuestion(this.questions, this.answers);

  final String questions;
  final List<String> answers;

  List<String> getshuffledanswers() {
    final shuffledanswers = List.of(answers);
    shuffledanswers.shuffle();
    return shuffledanswers;
  }
}

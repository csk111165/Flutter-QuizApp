

class QuizQuestion {
  
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;


  List<String> getShuffledAnswers() {
    // since shuffle modify the origianl list, we need to make a copy of the list first so that we don't change the org one
    final shuffledList =  List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }


}
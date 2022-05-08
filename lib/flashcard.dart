class Flashcard{
  //data Type
  String answer;
  String question;

  Flashcard({required this.question, required this.answer});
   //method that assign values to respective datatype variables


  factory Flashcard.fromJson(Map<String, dynamic>json,){
    return Flashcard(
      answer: json["answer"],
      question: json["question"]
    );
  }


}
import 'dart:io';
import 'dart:math';

class Game{
  int answer = 0;
  int count = 1;
  Game(){
    var r = Random();
    answer = r.nextInt(100) + 1;
    print('คำตอบคือ $answer');
  }
  int doGuess(int num){
    if(num > answer){
      print('➜ $num is too high! ▲');
      count++;
      return 0;
    }
    else if(num < answer){
      print('➜ $num is too low! ▼');
      count++;
      return 0;
    }
    else{
      count++;
      print('➜ $num is correct ❤, total guesses: $count');
      return 1;
    }
  }
}
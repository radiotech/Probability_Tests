

int loops = 1000000;

long sum1 = 0;
long sum2 = 0;

int prob1 = 50;
int prob2 = 100;




void draw(){
  for(int i = 0; i < loops; i++){
    if(random(100)<prob1+prob2){
      int tempchoice = choose();
      if(tempchoice == 1){
        sum1 += 100;
      } else if(tempchoice == 2) {
        sum2 += 100;
      }
    }
  }
  
  println(sum1/float(loops)+"|"+sum2/float(loops));
  sum1 = 0;
  sum2 = 0;
}

int choose(){
  if(random(100)<prob1*100/(prob1+prob2)){
    return 1;
  } else {
    return 2;
  }
}

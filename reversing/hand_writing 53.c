void main(void)

{
  int iVar1;
  ssize_t sVar2;
  uint local_84;
  undefined4 local_80;
  undefined2 local_7c;
  char local_7a;
  undefined local_79;
  undefined auStack120 [8];
  undefined auStack112 [8];
  char local_68 [96];
  
  initialize();
  puts("Welcome to the positive community!");
  puts("We help you embrace optimism.");
  printf("Would you like to enroll yourself? (y/n): ");
  iVar1 = getchar();  //getchar로 대답을 받아서 
  local_7a = (char)iVar1;   //그걸 local_7a로 옮긴 다음에 
  getchar();
  if (local_7a != 'y') {   //y인지 아닌지 확인 만약 y가 아니면 아래 거 대로 출력 
    puts("Too bad, see you next time :(");
    local_79 = 0x6e;
                    /* WARNING: Subroutine does not return */
    exit(0);
  }
  printf("Great! Here\'s a small welcome gift: %p\n",&stack0xfffffffffffffff8); //y인 경우에는 통과 
  puts("Please provide your details."); 
  printf("Email: ");
  sVar2 = read(0,auStack120,8);      
  local_7c = (undefined2)sVar2; //email 뒤에 쓴 내용 받음 
  printf("Age: ");  //또 age를 물어보네? 
  sVar2 = read(0,auStack112,8); 
  local_80 = (undefined4)sVar2; //이것도 비슷 
  printf("Length of name: ");
  __isoc99_scanf(&DAT_00102104,&local_84);  //다만 Length of name을 먼저 받고 있다 
  if (0x40 < (int)local_84) {   //0x40이 넘어가면 안 된다는 얘긴데 흠 -1을 넣으면 공격이 가능하다
    puts("Woah there! You shouldn\'t be too optimistic.");
                    /* WARNING: Subroutine does not return */
    exit(0);
  }
  printf("Name: ");
  sVar2 = read(0,local_68,(ulong)local_84);  //역시나 비슷한 맥락 ulong으로 인해 취약점이 발생한다 
  local_84 = 0;  
  while( true ) {
    if ((int)sVar2 + -9 <= (int)local_84) {
      puts("Thank you! We\'ll be in touch soon.");
      return;
    }
    iVar1 = isalpha((int)local_68[(int)local_84]);
    if ((iVar1 == 0) && (9 < (int)local_68[(int)local_84] - 0x30U)) break;
    local_84 = local_84 + 1;
  }
  puts("Sorry, that\'s an invalid name.");
                    /* WARNING: Subroutine does not return */
  exit(0);
}

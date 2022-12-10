__int64 __fastcall main(__int64 a1, char **a2, char **a3)
{
  int v4; // [rsp+0h] [rbp-60h] BYREF
  char v5[16]; // [rsp+4h] [rbp-5Ch] BYREF
  _BYTE v6[76]; // [rsp+14h] [rbp-4Ch] BYREF

  sub_11A9(a1, a2, a3);
  while ( 1 )
  {
    while ( 1 )
    {
      memset(v5, 0, sizeof(v5));
      printf("Welcome to your BatComputer, Batman. What would you like to do?\n1. Track Joker\n2. Chase Joker\n> ");
      __isoc99_scanf("%d", &v4);
      if ( v4 != 1 )
        break;
      printf("It was very hard, but Alfred managed to locate him: %p\n", v6);
    }
    if ( v4 != 2 )
      break;
    printf("Ok. Let's do this. Enter the password: ");
    __isoc99_scanf("%15s", v5);
    if ( strcmp(v5, "b4tp@$$w0rd!") )
    {
      puts("The password is wrong.\nI can't give you access to the BatMobile!");
      exit(0);
    }
    printf("Access Granted. \nEnter the navigation commands: ");
    read(0, v6, 0x89uLL);
    puts("Roger that!");
  }
  puts("Too bad, now who's gonna save Gotham? Alfred?");
  return 0LL;
}

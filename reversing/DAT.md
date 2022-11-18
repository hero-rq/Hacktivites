void bot_cmd(void)

{
  int iVar1;
  char local_16 [10];
  int local_c;
  
  puts(&DAT_00402492);
  for (local_c = 0; local_c < 4; local_c = local_c + 1) {
    printf("root@pwn101:~/root# ");
    read(0,local_16,10);
    iVar1 = strncmp(local_16,"/help",5);
    if (iVar1 == 0) {
      puts(&DAT_004024c1);
      puts("/rank");
      puts("/invite");
      puts("/help");
      puts("/meme\n");
    }
    else {
      iVar1 = strncmp(local_16,"/rank",5);
      if (iVar1 == 0) {
        puts(&DAT_004024f8);
      }
      else {
        iVar1 = strncmp(local_16,"/invite",7);
        if (iVar1 == 0) {
          puts("\nOur Discord server link: \x1b[0;34mhttps://discord.gg/JxhCHPajsv\x1b[0m\n");
        }
        else {
          iVar1 = strncmp(local_16,"/meme",5);
          if (iVar1 == 0) {
            puts(&DAT_00402670);
          }
        }
      }
    }
  }
  main();
  return;
}

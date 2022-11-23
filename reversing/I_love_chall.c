undefined8 main(void)

{
  long in_FS_OFFSET;
  undefined2 local_12;
  long local_10;
  
  local_10 = *(long *)(in_FS_OFFSET + 0x28);
  setvbuf(stdin,(char *)0x0,2,0);
  setvbuf(stdout,(char *)0x0,2,0);
  setvbuf(stderr,(char *)0x0,2,0);
  puts("---------- Testify ----------");
  do {
    local_12 = 0x6e;
    generate_testify();
    printf("Try Again? [Y/n]: ");
    __isoc99_scanf(&DAT_001020f0,&local_12);
    if ((char)local_12 == 'N') break;
  } while ((char)local_12 != 'n');
  if (local_10 != *(long *)(in_FS_OFFSET + 0x28)) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return 0;
}

__int64 __fastcall main(int a1, char **a2, char **a3)
{
  int i; // [rsp+Ch] [rbp-174h]
  __int64 v5; // [rsp+18h] [rbp-168h] BYREF
  unsigned __int64 v6; // [rsp+20h] [rbp-160h] BYREF
  __int64 ptr; // [rsp+28h] [rbp-158h] BYREF
  __int64 v8; // [rsp+30h] [rbp-150h]
  __int64 v9; // [rsp+38h] [rbp-148h]
  unsigned __int64 v10; // [rsp+40h] [rbp-140h]
  unsigned __int64 v11; // [rsp+48h] [rbp-138h]
  FILE *stream; // [rsp+50h] [rbp-130h]
  unsigned __int64 v13; // [rsp+58h] [rbp-128h]
  char s[8]; // [rsp+60h] [rbp-120h] BYREF
  __int64 v15; // [rsp+68h] [rbp-118h]
  __int64 v16; // [rsp+70h] [rbp-110h]
  __int64 v17; // [rsp+78h] [rbp-108h]
  __int64 v18; // [rsp+80h] [rbp-100h]
  __int64 v19; // [rsp+88h] [rbp-F8h]
  __int64 v20; // [rsp+90h] [rbp-F0h]
  __int64 v21; // [rsp+98h] [rbp-E8h]
  __int64 v22; // [rsp+A0h] [rbp-E0h]
  __int64 v23; // [rsp+A8h] [rbp-D8h]
  __int64 v24; // [rsp+B0h] [rbp-D0h]
  __int64 v25; // [rsp+B8h] [rbp-C8h]
  __int64 v26; // [rsp+C0h] [rbp-C0h]
  __int64 v27; // [rsp+C8h] [rbp-B8h]
  __int64 v28; // [rsp+D0h] [rbp-B0h]
  __int64 v29; // [rsp+D8h] [rbp-A8h]
  __int64 v30; // [rsp+E0h] [rbp-A0h]
  __int64 v31; // [rsp+E8h] [rbp-98h]
  __int64 v32; // [rsp+F0h] [rbp-90h]
  __int64 v33; // [rsp+F8h] [rbp-88h]
  __int64 v34; // [rsp+100h] [rbp-80h]
  __int64 v35; // [rsp+108h] [rbp-78h]
  __int64 v36; // [rsp+110h] [rbp-70h]
  __int64 v37; // [rsp+118h] [rbp-68h]
  __int64 v38; // [rsp+120h] [rbp-60h]
  __int64 v39; // [rsp+128h] [rbp-58h]
  __int64 v40; // [rsp+130h] [rbp-50h]
  __int64 v41; // [rsp+138h] [rbp-48h]
  __int64 v42; // [rsp+140h] [rbp-40h]
  __int64 v43; // [rsp+148h] [rbp-38h]
  __int64 v44; // [rsp+150h] [rbp-30h]
  __int64 v45; // [rsp+158h] [rbp-28h]
  unsigned __int64 v46; // [rsp+168h] [rbp-18h]

  v46 = __readfsqword(0x28u);
  v10 = 0LL;
  stream = fopen("n.txt", "r");
  __isoc99_fscanf(stream, "%llu %llu", &v5, &v6);
  fclose(stream);
  while ( v10 <= 0xFCFCFCFC )
  {
    v8 = sub_12FE(v5);
    v9 = sub_12FE(v8 + 128);
    v10 = v9 * v8;
  }
  printf("n1 = %llu\n", v10);
  v11 = v6;
  v13 = (v8 - 1) * (v9 - 1);
  while ( v11 < v13
       && ((__int64 (__fastcall *)(unsigned __int64, unsigned __int64))((char *)&sub_1248 + 1))(v11, v13) != 1 )
    ++v11;
  printf("n2 = %llu\n", v11);
  *(_QWORD *)s = 0LL;
  v15 = 0LL;
  v16 = 0LL;
  v17 = 0LL;
  v18 = 0LL;
  v19 = 0LL;
  v20 = 0LL;
  v21 = 0LL;
  v22 = 0LL;
  v23 = 0LL;
  v24 = 0LL;
  v25 = 0LL;
  v26 = 0LL;
  v27 = 0LL;
  v28 = 0LL;
  v29 = 0LL;
  v30 = 0LL;
  v31 = 0LL;
  v32 = 0LL;
  v33 = 0LL;
  v34 = 0LL;
  v35 = 0LL;
  v36 = 0LL;
  v37 = 0LL;
  v38 = 0LL;
  v39 = 0LL;
  v40 = 0LL;
  v41 = 0LL;
  v42 = 0LL;
  v43 = 0LL;
  v44 = 0LL;
  v45 = 0LL;
  stream = fopen("flag.txt", "rb");
  __isoc99_fscanf(stream, "%255s", s);
  fclose(stream);
  if ( (strlen(s) & 3) != 0 )
  {
    puts("invalid length!");
    exit(-1);
  }
  stream = fopen("out.bin", "wb");
  for ( i = 0; i < strlen(s) >> 2; ++i )
  {
    ptr = sub_1289(*(unsigned int *)&s[4 * i], v11, v10);
    fwrite(&ptr, 8uLL, 1uLL, stream);
  }
  fclose(stream);
  return 0LL;
}

문제 파일을 실행하기 위해서는 .NET Framework 버전 4 이상이 필요합니다.

문제의 조건에 이렇게 써있다 
따라서 이 문제를 기드라에 넣어서 푸는 것은 확실히 미친 짓이다 
.net 디컴파일러 dotpeek을 이용하면 
  ilGenerator.MarkLabel(label2);
      ilGenerator.Emit(OpCodes.Ldloc_0); // 문자배열
      ilGenerator.Emit(OpCodes.Ldloc_3); // i
      ilGenerator.Emit(OpCodes.Ldelema, typeof (char)); // &문자배열[i]
      ilGenerator.Emit(OpCodes.Dup); // &문자배열[i]의 복제
      ilGenerator.Emit(OpCodes.Ldind_U2); // 문자배열[i]
      ilGenerator.Emit(OpCodes.Ldloc_0);
      ilGenerator.Emit(OpCodes.Ldloc_3);
      ilGenerator.Emit(OpCodes.Ldc_I4_1);
      ilGenerator.Emit(OpCodes.Add);
대략 이와 비슷한 값이 나온다 

https://docs.microsoft.com/ko-kr/dotnet/api/system.reflection.emit.opcodes?view=netcore-3.1
이에 대해서 잘 설명하고 있는 문서는 이것이다. 

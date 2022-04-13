__int64 __fastcall sub_17B20(__int64 a1, __int64 a2, __int64 a3) {
  if (*(_BYTE *)(a2 + 48) != 1 ||
      (v10 = std::map::end(a2), v9 = std::map::find(a2, &a3),
       std::_Rb_tree_iterator::operator==(&v9, &v10))) {
    std::allocator<char>::allocator(&v10);
    std::basic_string(a1, "hi", &v10);
    std::allocator<char>::~allocator(&v10);
  } else {
    v4 = std::map::at(a2, &a3);
    std::basic_string::basic_string(v11, v4);
    sub_17A36(a1, a2, v11);
    std::basic_string::~basic_string(v11);
  }
  return a1;
}

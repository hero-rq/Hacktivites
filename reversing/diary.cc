unsigned __int64 __fastcall sub_6CFA(__int64 a1, __int64 a2, __int64 a3,
                                     __int64 a4, unsigned __int8 a5) {

  v31[0] = a3;
  v31[1] = a4;

  function(v41, 0);
  nlohmann::basic_json::parse<std::string_view &>(v37, v31, v41, 0, 0);
  ~function(v41);
  if (!is_discarded(v37) &&
      contains<char const(&)[8], 0>(v37, "command") == 1) {
    v5 = operator[]<char const>(v37, "command");
    if (is_string(v5) == 1) {
      v7 = operator[]<char const>(v37, "command");
      basic_json(v40, v7);
      if (compare(v40, "set_info")) {
        if (!compare(v40, "get_text") &&
            contains<char const(&)[11], 0>(v37, "text_index") == 1) {
          v22 = operator[]<char const>(v37, "text_index");
          if (is_number(v22) == 1) {
            v25 = operator[]<char const>(v37, "text_index");
            v26 = operator unsigned long<unsigned long, 0>(v25);
            sub_17B20(v41, qword_286290, v26);
            v27 = operator std::string_view(v41);
            sub_7EE4(a2, v27, v28, 2, 1);
            ~basic_string(v41);
          LABEL_33:
            ~basic_string(v40);
            goto LABEL_34;
          }
        }
      } else if (contains<char const(&)[2], 0>(v37, "Y") == 1 &&
                 contains<char const(&)[2], 0>(v37, "M") == 1 &&
                 contains<char const(&)[2], 0>(v37, "D") == 1) {
        v9 = operator[]<char const>(v37, "Y");
        if (is_number(v9) != 1 ||
            (v10 = operator[]<char const>(v37, "M"), is_number(v10) ^ 1) ||
            (v11 = operator[]<char const>(v37, "D"), is_number(v11) ^ 1)) {
          std::string_view::basic_string_view(&v38, "?!");
        } else {
          v13 = operator[]<char const>(v37, "Y");
          v14 = operator long<long, 0>(v13);
          v15 = operator new(8 uLL);
          sub_1C366(v15, v14);
          v16 = operator[]<char const>(v37, "M");
          v17 = operator long<long, 0>(v16);
          v18 = operator new(8 uLL);
          sub_1C3F4(v18, v17);
          v19 = operator[]<char const>(v37, "D");
          v20 = operator long<long, 0>(v19);
          v21 = operator new(8 uLL);
          sub_1C482(v21, v20);
          sub_1C510(qword_286290, v15, v18, v21);
          std::string_view::basic_string_view(&v38, "OK!");
        }
        sub_7EE4(a2, v38, v39, a5, 1);
        goto LABEL_33;
      }
      std::string_view::basic_string_view(&v38, "?!");
      sub_7EE4(a2, v38, v39, a5, 1);
      goto LABEL_33;
    }
  }
  std::string_view::basic_string_view(&v38, "?!");
  sub_7EE4(a2, v38, v39, a5, 1);
LABEL_34:
  ~basic_json(v37);
}

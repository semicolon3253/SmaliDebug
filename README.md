# 이게 무엇인가?
앱을 디컴파일한 후 smali코드의 특정 위치에서 무언가를 출력하는 등의 행동을 하고싶을 때 사용한다.

가령 로그를 찍을 때 로그 출력 코드를 모두 입력할 필요없이 이 smali파일의 메소드를 실행해주기만하면 된다.


# 지원하는 기능
- 로그캣 로그(android.util.Log)를 종류별(e, w, i, d, v)로 출력
- System.out.println 메시지 출력
- 스택 트레이스 출력
- UncaughtExceptionHandler 등록, 처리되지 않은 예외의 스택 트레이스를 출력
- 자바 리플렉션을 이용하여 어떤 객체의 모든 필드(변수)를 이름과 함께 출력


# 사용방법

1. SmaliDebug.smali와 SmaliDebug$1.smali를 다운로드합니다.(smali-src에 있는것 아님)
2. 두 파일을 텍스트 에디터로 엽니다.
3. 두 파일의 모든 문자열 {PACKAGE}를 자신이 이 파일들을 넣을 패키지명으로 바꿔주세요. 예를들어 자신이 두 파일을 디컴파일된 앱의 .../com/test/app 폴더 내에 넣을것이라면 모든 {PACKAGE}를 com/test/app으로 교체합니다.
4. 이제 두 파일을 해당 패키지에 위치하도록 붙여넣고 아래 문단처럼 메소드를 실행하는 코드를 원하는 smali파일에 넣고 빌드해서 쓰면됩니다.

# 메소드

- 변수 선언이 필요한 메소드들의 경우 변수가 코드에 영향을 주지 않도록 주의해서 적절히 이름을 변경합니다.

- 아래 예제 코드의 패키지명을 자신에 맞게 변경해주세요.

- 또는 sample.txt 파일을 받아서 내부의 {PACKAGE}를 교체후 복붙해서 써도됩니다.

## printErrorLog
에러 로그를 출력합니다. Log.e()와 동일합니다.

```
const-string v0, "TAG"

const-string v1, "MESSAGE"
 
invoke-static {v0, v1}, Lkr/semicolon1/smalidebug/SmaliDebug;->printErrorLog(Ljava/lang/String;Ljava/lang/Object;)V
 ```

## printWarningLog
경고 로그를 출력합니다. Log.w()와 동일합니다.

```
const-string v0, "TAG"

const-string v1, "MESSAGE"
 
invoke-static {v0, v1}, Lkr/semicolon1/smalidebug/SmaliDebug;->printWarningLog(Ljava/lang/String;Ljava/lang/Object;)V
 ```

## printInfoLog
정보 로그를 출력합니다. Log.i()와 동일합니다.

```
const-string v0, "TAG"

const-string v1, "MESSAGE"
 
invoke-static {v0, v1}, Lkr/semicolon1/smalidebug/SmaliDebug;->printInfoLog(Ljava/lang/String;Ljava/lang/Object;)V
 ```

## printDebugLog
디버그 로그를 출력합니다. Log.d()와 동일합니다.

```
const-string v0, "TAG"

const-string v1, "MESSAGE"
 
invoke-static {v0, v1}, Lkr/semicolon1/smalidebug/SmaliDebug;->printDebugLog(Ljava/lang/String;Ljava/lang/Object;)V
 ```

## printVerboseLog
상세 로그를 출력합니다. Log.v()와 동일합니다.

```
const-string v0, "TAG"

const-string v1, "MESSAGE"
 
invoke-static {v0, v1}, Lkr/semicolon1/smalidebug/SmaliDebug;->printVerboseLog(Ljava/lang/String;Ljava/lang/Object;)V
 ```

## printSys
System.out.println()을 이용하여 메시지를 출력합니다.

```
const-string v0, "This is System.out.println"

invoke-static {v0}, Lkr/semicolon1/smalidebug/SmaliDebug;->printSys(Ljava/lang/Object;)V
```

## stackTrace
스택 트레이스를 출력합니다.

```
invoke-static {}, Lkr/semicolon1/smalidebug/SmaliDebug;->stackTrace()V
```

## setUncaughtException
UncaughtExceptionHandler를 등록하여 처리되지 않은 예외 발생시 스택 트레이스를 출력합니다.

자바 리플렉션을 이용하며, private/public 필드를 모두 가져올 수 있습니다.

```
invoke-static {}, Lkr/semicolon1/smalidebug/SmaliDebug;->setUncaughtException()V
```

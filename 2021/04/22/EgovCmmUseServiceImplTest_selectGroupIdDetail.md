# '그룹정보를 코드형태로 리턴한다.' 단위 테스트

EgovCmmUseServiceImplTest_selectGroupIdDetail

## 1. @Transactional 추가
/egovframe-common-components/src/test/resources/egovframework/spring/com/test-context-dao.xml
```xml
<import resource="classpath*:/egovframework/spring/com/context-transaction.xml" />
```

```java
import org.springframework.transaction.annotation.Transactional;

@Transactional
```

# CmmUseDAO 수정

## @Repository
```java
//@Repository("cmmUseDAO")
@Repository
```

## list -> selectList
```java
//    @SuppressWarnings("unchecked")
    public List<CmmnDetailCode> selectCmmCodeDetail(ComDefaultCodeVO vo) throws Exception {
//	return (List<CmmnDetailCode>) list("CmmUseDAO.selectCmmCodeDetail", vo);
	return selectList("CmmUseDAO.selectCmmCodeDetail", vo);
    }
```

CmmUseDAOTest_selectGroupIdDetail

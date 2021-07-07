<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 페이지 상단 또는 하단에 라이브러르 추가 -->
<script type="text/javascript"
	src="/plugin/smarteditor2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
...
<!-- 표시할 textarea 영역 -->
<textarea id="txtContent" rows="10" cols="100" style="width: 100%;"></textarea>
...
<!-- 페이지 로딩시 초기화 -->
<script> $(() => { nhn.husky.EZCreator.createInIFrame({ oAppRef: editor, elPlaceHolder: 'txtContent', sSkinURI: '/plugin/smarteditor2/SmartEditor2Skin.html', fCreator: 'createSEditor2' }); }); </script>


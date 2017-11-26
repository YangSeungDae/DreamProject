<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/view/common/header_black.jsp" />
<title>${carVO.carName} | 현대자동차</title>
${carVO.html}
<jsp:include page="/WEB-INF/view/common/footer.jsp" />
</div>
</body>
</html>
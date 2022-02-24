<%@ page contentType="text/html; charset=utf-8" %>
<jsp:include page="./templates/common/header.jsp" />

<div id="content" class="main">

    <!-- s: hero content -->
    <jsp:include page="./templates/main/hero.jsp" />
    <!-- e: hero content -->

    <!-- s: bookmark menu -->
    <jsp:include page="./templates/main/bookmark.jsp" />
    <!-- e: bookmark menu -->

    <!-- s: bestshop event -->
    <jsp:include page="./templates/main/event.jsp" />
    <!-- e: bestshop event -->

    <!-- s: info store -->
    <jsp:include page="./templates/main/store.jsp" />
    <!-- e: info store -->

    <!-- s: near store -->
    <jsp:include page="./templates/main/store-near.jsp" />
    <!-- e: near store -->

    <!-- s: store benefit -->
    <jsp:include page="./templates/main/benefit.jsp" />
    <!-- s: store benefit -->

    <!-- s: bestshop SNS -->
    <jsp:include page="./templates/main/sns.jsp" />
    <!-- s: bestshop SNS -->

    <!-- s: bestshop SNS -->
    <jsp:include page="./templates/main/notice.jsp" />
    <!-- s: bestshop SNS -->
</div>

<jsp:include page="./templates/common/footer.jsp" />
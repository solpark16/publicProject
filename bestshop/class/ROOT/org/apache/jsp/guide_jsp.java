/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.72
 * Generated at: 2021-11-09 03:49:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class guide_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<html data-countrycode=\"kr\" dir=\"ltr\" lang=\"ko\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>베스트샵 WSG, UI 가이드</title>\r\n");
      out.write("        <meta charset=\"utf-8\"/>\r\n");
      out.write("        <!-- <meta property=\"fb:app_id\" content=\"562434687259858\"> -->\r\n");
      out.write("        <meta name=\"description\" content=\"LG전자에서 진행되는 이벤트, 기획전, 카드 혜택 그리고 LG전자 멤버십까지 다양한 혜택 정보를 확인하실 수 있습니다.\">\r\n");
      out.write("        <meta property=\"og:locale\" content=\"ko_KR\">\r\n");
      out.write("        <meta property=\"og:site_name\" content=\"LG전자 BEST SHOP\">\r\n");
      out.write("        <meta property=\"og:type\" content=\"website\">\r\n");
      out.write("        <meta property=\"og:title\" content=\"LG전자 BEST SHOP\">\r\n");
      out.write("        <meta property=\"og:description\" content=\"\">\r\n");
      out.write("        <!-- <meta property=\"og:url\" content=\"https://www.lge.co.kr/benefits\">\r\n");
      out.write("        <meta property=\"og:image\" content=\"https://www.lge.co.krhttps://www.lge.co.kr/lg5-common/images/common/share/share-default.jpg\"> -->\r\n");
      out.write("        <meta name=\"twitter:card\" content=\"summary\">\r\n");
      out.write("        <script type=\"text/javascript\" src=\"./js/libs/jquery-3.6.0.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"https://www.lge.co.kr/lg5-common/js/vcui.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"https://www.lge.co.kr/lg5-common/js/vcui.common-ui.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"https://www.lge.co.kr/lg5-common/js/lg.common.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"https://www.lge.co.kr/lg5-common/js/app.common.min.js\"></script>        \r\n");
      out.write("        <script type=\"text/javascript\" src=\"https://www.lge.co.kr/lg5-common/js/libs/jquery.mCustomScrollbar.min.js\"></script>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"./css/reset.min.css\"/>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"./css/common.css\"/>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"./css/base.css\"/>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"./css/mobile.css\"/>\r\n");
      out.write("        <style>\r\n");
      out.write("            html {\r\n");
      out.write("                scroll-behavior: smooth;\r\n");
      out.write("            }\r\n");
      out.write("            .guide-lnb {\r\n");
      out.write("                position: fixed;\r\n");
      out.write("                top: 0;\r\n");
      out.write("                left: 0;\r\n");
      out.write("                width: 150px;\r\n");
      out.write("            }\r\n");
      out.write("            .guide-content {\r\n");
      out.write("                padding-left: 160px;\r\n");
      out.write("                box-sizing: border-box;\r\n");
      out.write("            }\r\n");
      out.write("            .guide-content > div {\r\n");
      out.write("                border-bottom: 1px solid #ddd;\r\n");
      out.write("                margin-bottom: 70px;\r\n");
      out.write("                padding-bottom: 70px;\r\n");
      out.write("            }\r\n");
      out.write("            .guide-content > h1 {\r\n");
      out.write("                font-size: 60px;\r\n");
      out.write("                color: #fff;\r\n");
      out.write("                padding: 15px 25px;\r\n");
      out.write("                margin-bottom: 50px;\r\n");
      out.write("                letter-spacing: -2px;\r\n");
      out.write("                font-weight: 500;\r\n");
      out.write("                background-image: linear-gradient(\r\n");
      out.write("315deg\r\n");
      out.write(",#fb5a72,#fa263e);\r\n");
      out.write("    background-color: #fa263e;\r\n");
      out.write("            }\r\n");
      out.write("            .guide-content > div > h2 {\r\n");
      out.write("                font-size: 40px;\r\n");
      out.write("                margin-bottom: 30px;\r\n");
      out.write("            }\r\n");
      out.write("            .guide-content > div > h3 {\r\n");
      out.write("                font-size: 30px;\r\n");
      out.write("                margin-bottom: 20px;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            /* 컬러 */\r\n");
      out.write("\r\n");
      out.write("            #guide-color .color {\r\n");
      out.write("                width: 180px;\r\n");
      out.write("                height: 80px;\r\n");
      out.write("                font-size: 11px;\r\n");
      out.write("                color: #fff;\r\n");
      out.write("                font-weight: 400;\r\n");
      out.write("                text-align: center;\r\n");
      out.write("                padding-top: 20px;\r\n");
      out.write("                box-sizing: border-box;\r\n");
      out.write("                line-height: 20px;\r\n");
      out.write("            }\r\n");
      out.write("            .primary-color {\r\n");
      out.write("                background-color: #da0f47;\r\n");
      out.write("            }\r\n");
      out.write("            .primary-color-dark {\r\n");
      out.write("                background-color: #e81953;\r\n");
      out.write("            }\r\n");
      out.write("            .secondary-color {\r\n");
      out.write("                background-color: #a50024;\r\n");
      out.write("            }\r\n");
      out.write("            .secondary-color-violet {\r\n");
      out.write("                background-color: #6735ea;\r\n");
      out.write("            }\r\n");
      out.write("            .secondary-color-emerald {\r\n");
      out.write("                background-color: #008182;\r\n");
      out.write("            }\r\n");
      out.write("            .validation-positive {\r\n");
      out.write("                background-color: #76892d;\r\n");
      out.write("            }\r\n");
      out.write("            .validation-negative {\r\n");
      out.write("                background-color: #ff3723;\r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <!-- 컴포넌트 목록 -->\r\n");
      out.write("        <ul class=\"guide-lnb\">\r\n");
      out.write("            <li><a href=\"#guide-color\">Color System</a></li>\r\n");
      out.write("            <li><a href=\"#guide-buttons\">Buttons</a></li>\r\n");
      out.write("            <li><a href=\"#guide-fonts\">Font System</a></li>\r\n");
      out.write("            <li><a href=\"#guide-inputbox\">Input box</a></li>\r\n");
      out.write("            <li><a>셀렉트박스</a></li>\r\n");
      out.write("            <li><a href=\"#guide-table\">Checkbox</a></li>\r\n");
      out.write("            <li><a href=\"#guide-radio\">Radio</a></li>\r\n");
      out.write("            <li><a>타이틀</a></li>\r\n");
      out.write("            <li><a>캐러셀</a></li>\r\n");
      out.write("            <li><a>로딩</a></li>\r\n");
      out.write("            <li><a>레이어</a></li>\r\n");
      out.write("            <li><a href=\"#guide-tab\">Tab</a></li>\r\n");
      out.write("            <li><a href=\"#guide-table\">Table</a></li>\r\n");
      out.write("            <li><a>리스트</a></li>\r\n");
      out.write("            <li><a>툴팁</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        <div class=\"guide-content\">\r\n");
      out.write("            <!-- 컬러시스템 -->\r\n");
      out.write("            <div id=\"guide-color\">\r\n");
      out.write("                <h2>Color System</h2>\r\n");
      out.write("                <h3>Primary Color</h3>\r\n");
      out.write("                <p class=\"color primary-color\">.fc-primary<br/>#da0f47</p>\r\n");
      out.write("                <p class=\"color primary-color-dark\">.fc-primary-dark<br/>#e81953</p>\r\n");
      out.write("                <h3>Secondary Color</h3>\r\n");
      out.write("                <p class=\"color secondary-color\">.fc-secondary<br/>#a50024</p>\r\n");
      out.write("                <p class=\"color secondary-color-violet\">.fc-secondary-violet<br/>#6735ea</p>\r\n");
      out.write("                <p class=\"color secondary-color-emerald\">.fc-secondary-emerald<br/>#008182</p>\r\n");
      out.write("                <h3>Validation Color</h3>\r\n");
      out.write("                <p class=\"color validation-positive\">.fc-positive<br/>#76892d</p>\r\n");
      out.write("                <p class=\"color validation-negative\">.fc-negative<br/>#ff3723</p>\r\n");
      out.write("                <h3>Basic Color</h3>\r\n");
      out.write("                <h3>Tangible Color</h3>\r\n");
      out.write("            </div> <!-- 컬러시스템 끝 -->\r\n");
      out.write("            <!-- 버튼 가이드 -->\r\n");
      out.write("            <div id=\"guide-buttons\">\r\n");
      out.write("                <h2>Buttons</h2>\r\n");
      out.write("                <h3>Primary Button</h3>\r\n");
      out.write("                <button class=\"primary-button\">\r\n");
      out.write("                    <span>구매하기</span>\r\n");
      out.write("                </button>\r\n");
      out.write("                <a href=\"#\" class=\"primary-button\">\r\n");
      out.write("                    <span>구매하기</span>\r\n");
      out.write("                </a>\r\n");
      out.write("                <h3>Secondary Button</h3>\r\n");
      out.write("                <h3>Confirm Button</h3>\r\n");
      out.write("                <h3>Input Button</h3>\r\n");
      out.write("                <h3>Text Button</h3>\r\n");
      out.write("            </div> <!-- 버튼 가이드 끝 -->\r\n");
      out.write("            <!-- 폰트시스템 -->\r\n");
      out.write("            <div id=\"guide-fonts\">\r\n");
      out.write("                <a name=\"font\">afafaf</a>\r\n");
      out.write("                <h2>Font System</h2>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <div class=\"main\">\r\n");
      out.write("                        <h1>LG전자 마케팅 플랫폼</h1>\r\n");
      out.write("                        <h2>LG전자 마케팅 플랫폼</h2>\r\n");
      out.write("                        <h3>LG전자 마케팅 플랫폼</h3>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"normal\">\r\n");
      out.write("                        <h1>LG전자 마케팅 플랫폼</h1>\r\n");
      out.write("                        <h2>LG전자 마케팅 플랫폼</h2>\r\n");
      out.write("                        <h3>LG전자 마케팅 플랫폼</h3>\r\n");
      out.write("                        <h4>LG전자 마케팅 플랫폼</h4>\r\n");
      out.write("                        <h5>LG전자 마케팅 플랫폼</h5>\r\n");
      out.write("                        <p class=\"mainfont\">LG전자 마케팅 플랫폼</p>\r\n");
      out.write("                        <p class=\"mainfont-default\">LG전자 마케팅 플랫폼</p>\r\n");
      out.write("                        <p class=\"mainfont\">LG전자 마케팅 플랫폼</p>\r\n");
      out.write("                        <p class=\"remark\">LG전자 마케팅 플랫폼</p>\r\n");
      out.write("                        <p class=\"flag01\">LG전자 마케팅 플랫폼</p>\r\n");
      out.write("                        <p class=\"flag02\">LG전자 마케팅 플랫폼</p>\r\n");
      out.write("                        <p class=\"flag03\">LG전자 마케팅 플랫폼</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div> <!-- 폰트시스템 끝 -->\r\n");
      out.write("            <!-- 인풋박스 -->\r\n");
      out.write("            <div id=\"guide-inputbox\">\r\n");
      out.write("                <h2>Input box</h2>\r\n");
      out.write("                <div class=\"user\">\r\n");
      out.write("                    <dl>\r\n");
      out.write("                        <dt>이름</dt>\r\n");
      out.write("                        <dd>\r\n");
      out.write("                            <div class=\"inputbox\">\r\n");
      out.write("                                <input type=\"text\" placeholder=\"이름을 입력\"/>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </dd>\r\n");
      out.write("                    </dl>\r\n");
      out.write("                    <dl>\r\n");
      out.write("                        <dt>이름</dt>\r\n");
      out.write("                        <dd>\r\n");
      out.write("                            <div class=\"inputbox\">\r\n");
      out.write("                                <input type=\"text\" value=\"김엘지\" />\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </dd>\r\n");
      out.write("                    </dl>\r\n");
      out.write("                    <dl>\r\n");
      out.write("                        <dt>이름</dt>\r\n");
      out.write("                        <dd>\r\n");
      out.write("                            <div class=\"inputbox\">\r\n");
      out.write("                                <input type=\"text\" placeholder=\"김엘지\" readonly/>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </dd>\r\n");
      out.write("                    </dl>\r\n");
      out.write("                    <dl>\r\n");
      out.write("                        <dt>이름</dt>\r\n");
      out.write("                        <dd>\r\n");
      out.write("                            <div class=\"inputbox\">\r\n");
      out.write("                                <input type=\"text\" value=\"김엘지\" readonly/>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </dd>\r\n");
      out.write("                    </dl>\r\n");
      out.write("                    <dl>\r\n");
      out.write("                        <dt>이름</dt>\r\n");
      out.write("                        <dd>\r\n");
      out.write("                            <div class=\"inputbox\">\r\n");
      out.write("                                <input type=\"text\" placeholder=\"홍길동\" disabled/>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </dd>\r\n");
      out.write("                    </dl>\r\n");
      out.write("                    <dl>\r\n");
      out.write("                        <dt>이메일</dt>\r\n");
      out.write("                        <dd>\r\n");
      out.write("                            <div class=\"inputbox\">\r\n");
      out.write("                                <input type=\"email\" placeholder=\"이메일 입력\"/>\r\n");
      out.write("                                <p class=\"msg-err\">정확한 이메일을 입력해 주세요.</p>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </dd>\r\n");
      out.write("                    </dl>\r\n");
      out.write("                    <dl>\r\n");
      out.write("                        <dt>이메일</dt>\r\n");
      out.write("                        <dd>\r\n");
      out.write("                            <div class=\"inputbox\">\r\n");
      out.write("                                <input type=\"email\" value=\"kimlg@lgmember.co.kr\"/>\r\n");
      out.write("                                <p class=\"msg-ok\">사용가능한 이메일주소입니다.</p>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </dd>\r\n");
      out.write("                    </dl>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div> <!-- 인풋박스 끝 -->\r\n");
      out.write("            <!-- 인풋박스 -->\r\n");
      out.write("            <div id=\"guide-radio\">\r\n");
      out.write("                <h2>Radio Button</h2>\r\n");
      out.write("                <input type=\"radio\"/>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- 테이블 -->\r\n");
      out.write("            <div id=\"guide-table\">\r\n");
      out.write("                <h2>Table</h2>\r\n");
      out.write("                <!-- 기본 테이블, 가로형 -->\r\n");
      out.write("                <h3>기본 테이블, 가로형</h3>\r\n");
      out.write("                <div class=\"table-basic row\">\r\n");
      out.write("                    <table>\r\n");
      out.write("                        <caption>할부요금 납부 현황</caption>\r\n");
      out.write("                        <colgroup>\r\n");
      out.write("                            <col width=\"auto\"/>\r\n");
      out.write("                            <col width=\"auto\"/>\r\n");
      out.write("                            <col width=\"auto\"/>\r\n");
      out.write("                            <col width=\"auto\"/>\r\n");
      out.write("                            <col width=\"auto\"/>\r\n");
      out.write("                        </colgroup>\r\n");
      out.write("                        <thead>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <th scope=\"col\">회차</th>\r\n");
      out.write("                                <th scope=\"col\">납부일</th>\r\n");
      out.write("                                <th scope=\"col\">청구금액</th>\r\n");
      out.write("                                <th scope=\"col\">할인금액</th>\r\n");
      out.write("                                <th scope=\"col\">납부금액</th>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </thead>\r\n");
      out.write("                        <tbody>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>4</td>\r\n");
      out.write("                                <td>2020.09.10</td>\r\n");
      out.write("                                <td>88,800</td>\r\n");
      out.write("                                <td>0원</td>\r\n");
      out.write("                                <td>88,800원</td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>2</td>\r\n");
      out.write("                                <td>2020.07.10</td>\r\n");
      out.write("                                <td>88,800</td>\r\n");
      out.write("                                <td>0원</td>\r\n");
      out.write("                                <td>88,800원</td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>1</td>\r\n");
      out.write("                                <td>2020.06.10</td>\r\n");
      out.write("                                <td>88,800</td>\r\n");
      out.write("                                <td>0원</td>\r\n");
      out.write("                                <td>88,800원</td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </tbody>\r\n");
      out.write("                    </table>\r\n");
      out.write("                </div> <!-- 기본 테이블, 가로형 끝 -->\r\n");
      out.write("                <!-- 기본 테이블, 세로형 -->\r\n");
      out.write("                <h3>기본 테이블, 세로형</h3>\r\n");
      out.write("                <div class=\"table-basic col\">\r\n");
      out.write("                    <table>\r\n");
      out.write("                        <caption>제품 업데이트 드라이버 파일</caption>\r\n");
      out.write("                        <colgroup>\r\n");
      out.write("                            <col style=\"width: 150px;\"/>\r\n");
      out.write("                            <col width=\"auto\"/>\r\n");
      out.write("                        </colgroup>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th scope=\"row\">파일명</th>\r\n");
      out.write("                            <td>[프로그램/Win10_64bit] LG Update Center</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th scope=\"row\">제품</th>\r\n");
      out.write("                            <td>TV/프로젝터 &gt; 올레드</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                    </table>\r\n");
      out.write("                </div> <!-- 기본 테이블, 가로형 끝 -->\r\n");
      out.write("            </div> <!-- 테이블 끝 -->\r\n");
      out.write("            <!-- 탭 -->\r\n");
      out.write("            <div id=\"guide-tab\">\r\n");
      out.write("                <h2>Tab</h2>\r\n");
      out.write("            </div> <!-- 탭 끝 -->\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
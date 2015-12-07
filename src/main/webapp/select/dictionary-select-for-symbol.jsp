<%--
  ~ APDPlat - Application Product Development Platform
  ~ Copyright (c) 2013, 杨尚川, yang-shangchuan@qq.com
  ~
  ~  This program is free software: you can redistribute it and/or modify
  ~  it under the terms of the GNU General Public License as published by
  ~  the Free Software Foundation, either version 3 of the License, or
  ~  (at your option) any later version.
  ~
  ~  This program is distributed in the hope that it will be useful,
  ~  but WITHOUT ANY WARRANTY; without even the implied warranty of
  ~  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  ~  GNU General Public License for more details.
  ~
  ~  You should have received a copy of the GNU General Public License
  ~  along with this program.  If not, see <http://www.gnu.org/licenses/>.
  --%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.apdplat.superword.tools.WordLinker" %>
<%@ page import="org.apdplat.superword.tools.WordLinker.Dictionary" %>

<select name="dictionary" id="dictionary" onchange="update();">
    <%
        if (Dictionary.ICIBA==WordLinker.getValidDictionary(request.getParameter("dictionary"))) {
    %>
    <option value="ICIBA" selected="selected">爱词霸</option>
    <option value="YOUDAO">有道</option>
    <option value="WEBSTER">韦氏</option>
    <option value="OXFORD">牛津</option>
    <%
    } else if (Dictionary.YOUDAO==WordLinker.getValidDictionary(request.getParameter("dictionary"))) {
    %>
    <option value="ICIBA">爱词霸</option>
    <option value="YOUDAO" selected="selected">有道</option>
    <option value="WEBSTER">韦氏</option>
    <option value="OXFORD">牛津</option>
    <%
    } else if (Dictionary.WEBSTER==WordLinker.getValidDictionary(request.getParameter("dictionary"))) {
    %>
    <option value="ICIBA">爱词霸</option>
    <option value="YOUDAO">有道</option>
    <option value="WEBSTER" selected="selected">韦氏</option>
    <option value="OXFORD">牛津</option>
    <%
    } else if (Dictionary.OXFORD==WordLinker.getValidDictionary(request.getParameter("dictionary"))) {
    %>
    <option value="ICIBA">爱词霸</option>
    <option value="YOUDAO">有道</option>
    <option value="WEBSTER">韦氏</option>
    <option value="OXFORD" selected="selected">牛津</option>
    <%
    }
    %>
</select>
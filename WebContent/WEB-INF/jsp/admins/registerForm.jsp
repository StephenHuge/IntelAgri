<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"
    import="java.util.Date,java.text.SimpleDateFormat,java.util.Calendar"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
</head>
<body>
	<%  
	   SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	   Date currentTime = new Date();    
	   Calendar calandar = Calendar.getInstance();
	   
	   // ���㵱ǰʱ���Լ��˺���Ч��Ϊ1��
	   String kurrentTime = dateFormat.format(currentTime).toString();  
	   calandar.setTime(currentTime);
	   calandar.add(calandar.YEAR, 1);
	   String oneYearLater = dateFormat.format(calandar.getTime()).toString();
     %>  
	<form method="post">
		������<input type="text" name="name"/><br/>
		���룺<input type="password" name="password"/><br/>
		��֯��<input type="text" name="organization"/><br/>
		�ֻ���<input type="text" name="cellPhone"/><br/>
		<input type="hidden" name="recordDate" value=<%=kurrentTime%> />
		<input type="hidden" name="expiryDate" value=<%=oneYearLater%> />
		Ȩ�ޣ�<input type="text" name="privilege"/><br/>
		<input type="submit" value="ע��"/>
	</form>
</body>
</html>
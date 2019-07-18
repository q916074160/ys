<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <script type="text/javascript">
        if(top!=self){
            if(top.location != self.location)
                top.location=self.location;
        }
    </script>
</head>
<body style="background-image: url(/static/img/background.jpg);background-repeat: no-repeat;background-size:cover; overflow-y: hidden;">
<p style="position: absolute;top:10%;left:36%;font-size: 400%;color:black;">项目预算管理系统</p>
<div style="background: #e0ecff;display:inline-block;width:300px;height:200px; position:absolute;left:41.5%;top:45%; border-radius: 15px;box-shadow:10px 10px 10px gray ;">
    <br><br>
    <form style="height:500px; line-height:50px;position: relative;left:10%;" action="userLogin" method="post">
        用户名<input type="text" style="position: relative;;left:0%;" name="uname" id="uname"/>
        <br>
        密&nbsp;&nbsp;&nbsp;码<input type="password" style="position: relative;;left:0%;" name="upass" id="upass"/>
        <br>
        <input type="submit" value="登陆" style="position: relative;;left:15%;"/><input type="reset" style="position: relative;left:40%;"/>
    </form>
</div>
</body>
</html>

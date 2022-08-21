<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
    <h1>/WEB-INF/views/fileupload/page.jsp</h1>
    <hr>

    <form action="/fileupload/doit" method="POST" enctype="multipart/form-data">
        <div>Name : <input type="text" name="myName" size="10"></div>
        <div>Age : <input type="text" name="myAge" size="5"></div>

        
        <div><input type="file" name="files"></div>
        <div><input type="file" name="files"></div>
        <div><input type="file" name="files"></div>
        <div><input type="file" name="files"></div>
        <div><input type="file" name="files"></div>

        <br>

        <input type="submit" value="Upload">
    </form>

</body>
</html>
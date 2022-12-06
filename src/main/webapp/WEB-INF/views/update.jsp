<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
    <title>KeepNote</title>
    <style>
            input[type="number"]::-webkit-outer-spin-button, input[type="number"]::-webkit-inner-spin-button {
                -webkit-appearance: none;
                margin: 0;
            }

            input[type="number"] {
                -moz-appearance: textfield;
            }
            </style>
</head>

<body>
<!-- Create a form which will have text boxes for Note title, content and status along with a Add
     button. Handle errors like empty fields -->
<form method="post" action="update">

    <p>
        <input type="hidden" name="noteId" value="${noteId}" required>
    </p>
    <p>
        <label>NoteTitle</br>
            <input type="text" name="noteTitle" required>
        </label>
    </p>

    <p>
        <label>NoteContent</br>
            <input type="text" name="noteContent" required>
        </label>
    </p>

    <p>
        <label>NoteStatus</br>
            <input type="text" name="noteStatus" required>
        </label>
    </p>
    <p><input type="submit" value="Update"> </p>

</form>
</body>

</html>
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
    <form method="post" action="add">

        <p>
        <label>NoteId
                <input type="number" name="NoteId" required>
            </label>
            <br>
            <label>NoteTitle
                <input type="text" name="noteTitle" required>
            </label>
            <br>
            <label>NoteContent
                <input type="text" name="noteContent" required>
            </label>
            <br>
            <label>NoteStatus
                <input type="text" name="noteStatus" required>
            </label>
            <br>
        </p>
        <p><input type="submit" value="Save"> </p>

    </form>
    <!-- display all existing notes in a tabular structure with Title,Content,Status, Created Date and Action -->
    <table border = "1">
        <caption>Note Information...</caption>
        <tr>
            <th>Note ID</th>
            <th>Note Title</th>
            <th>Note Content</th>
            <th>Note Status</th>
            <th>Note CreatedAt</th>
            <th>deleteNote</th>
            <th>updateNote</th>
        </tr>
        <c:forEach items="${noteList}" var="note">
        <tr>
            <td>${note.getNoteId()}</td>
            <td>${note.getNoteTitle()}</td>
            <td>${note.getNoteContent()}</td>
            <td>${note.getNoteStatus()}</td>
            <td>${note.getCreatedAt()}</td>
            <td>
                <form action="delete" method="post">
                    <input type="hidden" name="noteId" value="${note.getNoteId()}" required>
                     <input type="submit" value="DeleteNote">
                </form>
            </td>
            <td>
                <form action="updateNote" method="post">
                    <input type="hidden" name="noteId" value="${note.getNoteId()}" required>
                     <input type="submit" value="update">
                </form>
            </td>
        </tr>
        </c:forEach>
    </table>
</body>

</html>
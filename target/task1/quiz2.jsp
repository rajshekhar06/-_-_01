<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Plant Biology Quiz - Page 2</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>

    <div class="quiz-container">
        <h1>🌱 Essential Plant Biology Quiz - Page 2 🌿</h1>
        <p>Continue testing your knowledge on plant biology!</p>

        <form action="quiz2.jsp" method="post">
            <div class="question">
                <p><b>6. What part of the plant is primarily responsible for transporting water?</b></p>
                <label><input type="radio" name="q6" value="a"> a) Roots</label><br>
                <label><input type="radio" name="q6" value="b"> b) Stem </label><br>
                <label><input type="radio" name="q6" value="c"> c) Leaves</label><br>
                <label><input type="radio" name="q6" value="d"> d) Flowers</label>
            </div>

            <div class="question">
                <p><b>7. What is the role of stomata in plant leaves?</b></p>
                <label><input type="radio" name="q7" value="a"> a) Absorb water</label><br>
                <label><input type="radio" name="q7" value="b"> b) Release oxygen</label><br>
                <label><input type="radio" name="q7" value="c"> c) Regulate gas exchange </label><br>
                <label><input type="radio" name="q7" value="d"> d) Transport food</label>
            </div>

            <div class="question">
                <p><b>8. What is the main function of phloem in plants?</b></p>
                <label><input type="radio" name="q8" value="a"> a) Transport water</label><br>
                <label><input type="radio" name="q8" value="b"> b) Transport food </label><br>
                <label><input type="radio" name="q8" value="c"> c) Store food</label><br>
                <label><input type="radio" name="q8" value="d"> d) Regulate gas exchange</label>
            </div>

            <div class="question">
                <p><b>9. Which gas is most commonly used by plants for photosynthesis?</b></p>
                <label><input type="radio" name="q9" value="a"> a) Oxygen</label><br>
                <label><input type="radio" name="q9" value="b"> b) Nitrogen</label><br>
                <label><input type="radio" name="q9" value="c"> c) Carbon dioxide </label><br>
                <label><input type="radio" name="q9" value="d"> d) Hydrogen</label>
            </div>

            <div class="question">
                <p><b>10. What type of plant tissue is responsible for growth in plants?</b></p>
                <label><input type="radio" name="q10" value="a"> a) Xylem</label><br>
                <label><input type="radio" name="q10" value="b"> b) Phloem</label><br>
                <label><input type="radio" name="q10" value="c"> c) Meristematic tissue </label><br>
                <label><input type="radio" name="q10" value="d"> d) Epidermis</label>
            </div>

            <div class="button-container">
                <button type="submit">Next ➡️</button>
            </div>
        </form>

        <%-- Handle form submission and store answers in session --%>
        <%
            if (request.getMethod().equals("POST")) {
                String q6 = request.getParameter("q6");
                String q7 = request.getParameter("q7");
                String q8 = request.getParameter("q8");
                String q9 = request.getParameter("q9");
                String q10 = request.getParameter("q10");

                session.setAttribute("q6", q6);
                session.setAttribute("q7", q7);
                session.setAttribute("q8", q8);
                session.setAttribute("q9", q9);
                session.setAttribute("q10", q10);

                // Redirect to quiz3.jsp
                response.sendRedirect("quiz3.jsp");
            }
        %>

    </div>

</body>
</html>

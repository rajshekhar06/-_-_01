<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Plant Biology Quiz - Page 1</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>

    <div class="quiz-container">
        <h1>🌱 Plant Biology Quiz 🌿</h1>
        <p>Welcome to the Plant Biology Quiz! Let's test your knowledge!</p>

        <form action="index.jsp" method="post">
            <div class="question">
                <p><b>1. What part of the plant is primarily responsible for photosynthesis?</b></p>
                <label><input type="radio" name="q1" value="a"> a) Roots</label><br>
                <label><input type="radio" name="q1" value="b"> b) Stem</label><br>
                <label><input type="radio" name="q1" value="c"> c) Leaves </label><br>
                <label><input type="radio" name="q1" value="d"> d) Flowers</label>
            </div>

            <div class="question">
                <p><b>2. What is the main function of xylem?</b></p>
                <label><input type="radio" name="q2" value="a"> a) Transport water </label><br>
                <label><input type="radio" name="q2" value="b"> b) Transport food</label><br>
                <label><input type="radio" name="q2" value="c"> c) Store water</label><br>
                <label><input type="radio" name="q2" value="d"> d) Store food</label>
            </div>

            <div class="question">
                <p><b>3. Which process is responsible for the growth of plants?</b></p>
                <label><input type="radio" name="q3" value="a"> a) Germination</label><br>
                <label><input type="radio" name="q3" value="b"> b) Photosynthesis</label><br>
                <label><input type="radio" name="q3" value="c"> c) Cellular respiration</label><br>
                <label><input type="radio" name="q3" value="d"> d) Mitosis </label>
            </div>

            <div class="question">
                <p><b>4. Which of the following is NOT part of the plant cell?</b></p>
                <label><input type="radio" name="q4" value="a"> a) Cell wall </label><br>
                <label><input type="radio" name="q4" value="b"> b) Chloroplast</label><br>
                <label><input type="radio" name="q4" value="c"> c) Nucleus</label><br>
                <label><input type="radio" name="q4" value="d"> d) Mitochondria</label>
            </div>

            <div class="question">
                <p><b>5. What is the role of stomata in plant leaves?</b></p>
                <label><input type="radio" name="q5" value="a"> a) Absorb water</label><br>
                <label><input type="radio" name="q5" value="b"> b) Release oxygen</label><br>
                <label><input type="radio" name="q5" value="c"> c) Regulate gas exchange </label><br>
                <label><input type="radio" name="q5" value="d"> d) Transport food</label>
            </div>

            <div class="button-container">
                <button type="submit">Next ➡️</button>
            </div>
        </form>

        <%-- Handle form submission and store answers in session --%>
        <%
            if (request.getMethod().equals("POST")) {
                String q1 = request.getParameter("q1");
                String q2 = request.getParameter("q2");
                String q3 = request.getParameter("q3");
                String q4 = request.getParameter("q4");
                String q5 = request.getParameter("q5");

                session.setAttribute("q1", q1);
                session.setAttribute("q2", q2);
                session.setAttribute("q3", q3);
                session.setAttribute("q4", q4);
                session.setAttribute("q5", q5);

                // Redirect to quiz2.jsp
                response.sendRedirect("quiz2.jsp");
            }
        %>

    </div>

</body>
</html>

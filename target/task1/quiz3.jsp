<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Plant Biology Quiz - Final Page</title>
    <style>
        /* Global styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .quiz-container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h1.title {
            text-align: center;
            color: #388e3c;
            font-size: 36px;
        }

        h3.subtitle {
            text-align: center;
            color: #555;
            font-size: 18px;
        }

        .score-board {
            text-align: center;
            background-color: #388e3c;
            color: white;
            padding: 20px;
            margin-bottom: 30px;
            border-radius: 8px;
        }

        .score-board h2 {
            font-size: 28px;
            margin-bottom: 10px;
        }

        .score-board h3 {
            font-size: 22px;
            font-weight: normal;
        }

        .correct-answers {
            background-color: #fafafa;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 30px;
        }

        .correct-answers ul {
            list-style-type: none;
            padding: 0;
        }

        .correct-answers li {
            font-size: 18px;
            margin: 10px 0;
        }

        .correct-answer {
            color: #388e3c;
            font-weight: bold;
        }

        .button-container {
            text-align: center;
        }

        .retake-btn {
            background-color: #388e3c;
            color: white;
            padding: 10px 20px;
            font-size: 18px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .retake-btn:hover {
            background-color: #2c6f2f;
        }

        @media (max-width: 768px) {
            .quiz-container {
                padding: 15px;
            }

            h1.title {
                font-size: 30px;
            }

            h2 {
                font-size: 24px;
            }

            h3 {
                font-size: 18px;
            }
        }
    </style>
</head>
<body>

    <div class="quiz-container">
        <h1 class="title">🌱 Plant Biology Quiz - Final Page 🌿</h1>
        <p class="subtitle">Finish up the quiz and see your score!</p>

        <% 
            // Retrieve all answers from the session
            String q1 = (String) session.getAttribute("q1");
            String q2 = (String) session.getAttribute("q2");
            String q3 = (String) session.getAttribute("q3");
            String q4 = (String) session.getAttribute("q4");
            String q5 = (String) session.getAttribute("q5");
            String q6 = (String) session.getAttribute("q6");
            String q7 = (String) session.getAttribute("q7");
            String q8 = (String) session.getAttribute("q8");
            String q9 = (String) session.getAttribute("q9");
            String q10 = (String) session.getAttribute("q10");

            // Define correct answers
            String correctQ1 = "c"; // Correct answer for question 1
            String correctQ2 = "a"; // Correct answer for question 2
            String correctQ3 = "b"; // Correct answer for question 3
            String correctQ4 = "b"; // Correct answer for question 4
            String correctQ5 = "a"; // Correct answer for question 5
            String correctQ6 = "b"; // Correct answer for question 6
            String correctQ7 = "c"; // Correct answer for question 7
            String correctQ8 = "b"; // Correct answer for question 8
            String correctQ9 = "c"; // Correct answer for question 9
            String correctQ10 = "c"; // Correct answer for question 10

            // Initialize score counter
            int score = 0;

            // Check answers and calculate score
            if (q1 != null && q1.equals(correctQ1)) score++;
            if (q2 != null && q2.equals(correctQ2)) score++;
            if (q3 != null && q3.equals(correctQ3)) score++;
            if (q4 != null && q4.equals(correctQ4)) score++;
            if (q5 != null && q5.equals(correctQ5)) score++;
            if (q6 != null && q6.equals(correctQ6)) score++;
            if (q7 != null && q7.equals(correctQ7)) score++;
            if (q8 != null && q8.equals(correctQ8)) score++;
            if (q9 != null && q9.equals(correctQ9)) score++;
            if (q10 != null && q10.equals(correctQ10)) score++;

            // Calculate percentage
            int totalQuestions = 10;
            double percentage = (score / (double) totalQuestions) * 100;
        %>

        <!-- Display the score -->
        <div class="score-board">
            <h2>Your Score: <%= score %> out of <%= totalQuestions %></h2>
            <h3>Percentage: <%= String.format("%.2f", percentage) %>%</h3>
        </div>

        <!-- Display the correct answers -->
        <div class="correct-answers">
            <h3>Correct Answers:</h3>
            <ul>
                <li><b>1. What part of the plant is primarily responsible for photosynthesis?</b> <span class="correct-answer">c) Leaves</span></li>
                <li><b>2. What is the main function of xylem?</b> <span class="correct-answer">a) Transport water</span></li>
                <li><b>3. What part of the plant stores food?</b> <span class="correct-answer">b) Roots</span></li>
                <li><b>4. What type of tissue is responsible for transporting food in plants?</b> <span class="correct-answer">b) Phloem</span></li>
                <li><b>5. What is the process by which plants make their food?</b> <span class="correct-answer">a) Photosynthesis</span></li>
                <li><b>6. What part of the plant is primarily responsible for transporting water?</b> <span class="correct-answer">b) Stem</span></li>
                <li><b>7. What is the role of stomata in plant leaves?</b> <span class="correct-answer">c) Regulate gas exchange</span></li>
                <li><b>8. What is the main function of phloem in plants?</b> <span class="correct-answer">b) Transport food</span></li>
                <li><b>9. Which gas is most commonly used by plants for photosynthesis?</b> <span class="correct-answer">c) Carbon dioxide</span></li>
                <li><b>10. What type of plant tissue is responsible for growth in plants?</b> <span class="correct-answer">c) Meristematic tissue</span></li>
            </ul>
        </div>

        <!-- Retake quiz button -->
        <div class="button-container">
            <a href="quiz1.jsp"><button class="retake-btn">Retake Quiz</button></a>
        </div>
    </div>

</body>
</html>

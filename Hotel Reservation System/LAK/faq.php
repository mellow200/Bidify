<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WedInn | FAQ</title>
    <link rel="stylesheet" href="css/faqq.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
 
<?php
    include "../header.php";
?>
    <header>
        <h1>Frequently Asked Questions</h1>
    </header>

    <main>
        <section class="faq-container">
            <div class="faq-item">
                <input type="checkbox" id="q1">
                <label for="q1" class="faq-question">What is the reservation process?</label>
                <div class="faq-answer">
                    <p>The reservation process is simple. You can make a reservation by filling out the form on our website, and we will confirm your booking within 24 hours.</p>
                </div>
            </div>

            <div class="faq-item">
                <input type="checkbox" id="q2">
                <label for="q2" class="faq-question">How do I cancel or modify my reservation?</label>
                <div class="faq-answer">
                    <p>You can cancel or modify your reservation by contacting us via email or phone at least 48 hours before the scheduled event date.</p>
                </div>
            </div>

            <div class="faq-item">
                <input type="checkbox" id="q3">
                <label for="q3" class="faq-question">What are the available payment methods?</label>
                <div class="faq-answer">
                    <p>We accept payments via credit cards, debit cards, and online bank transfers. You can choose your preferred payment method during the booking process.</p>
                </div>
            </div>

            <div class="faq-item">
                <input type="checkbox" id="q4">
                <label for="q4" class="faq-question">Do you offer discounts for large bookings?</label>
                <div class="faq-answer">
                    <p>Yes, we offer discounts for large bookings. Please contact us for more information and a personalized quote based on your requirements.</p>
                </div>
            </div>

            <div class="faq-item">
                <input type="checkbox" id="q5">
                <label for="q5" class="faq-question">Are there any hidden fees?</label>
                <div class="faq-answer">
                    <p>No, we are transparent with our pricing. All fees will be listed in your quote, and there are no hidden costs.</p>
                </div>
            </div>
        </section>
    </main>

    <?php
    include "../footer.php";
?>
        
</body>
</html>

----------------- ANSWER1 -------------------

CREATE SCHEMA ecommerce;

----------------- ANSWER2 -------------------

USE ecommerce;

----------------- ANSWER3 -------------------

SELECT * FROM users_data;
DESC users_data;

----------------- ANSWER4 -------------------

SELECT * FROM users_data LIMIT 100;

----------------- ANSWER5 -------------------

SELECT 
    COUNT(DISTINCT country) AS dist_country,
    COUNT(DISTINCT language) AS dist_language
FROM
    users_data;

----------------- ANSWER6 -------------------

SELECT
    gender, SUM(socialNbFollowers)
FROM
	users_data
GROUP BY 
    gender;
    
----------------- ANSWER7 --------------------

SELECT * FROM users_data ;
SELECT 
	'Description', 'Total Users' 
UNION SELECT 
    'Profile Picture', COUNT(hasProfilePicture)
FROM
    users_data
WHERE
    hasProfilePicture = 'True' 
UNION SELECT 
    'Application for Ecommerce platform', COUNT(hasAnyApp)
FROM
    users_data
WHERE
    hasAnyApp = 'True' 
UNION SELECT 
    'Android app', COUNT(hasAndroidApp)
FROM
    users_data
WHERE
    hasAndroidApp = 'True' 
UNION SELECT 
    'ios app', COUNT(hasIosApp)
FROM
    users_data
WHERE
    hasIosApp = 'True';
    
----------------- ANSWER8 ------------------

SELECT * FROM users_data;
SELECT country, COUNT(productsBought) AS buyers
FROM
    users_data
WHERE
    productsBought > 0
GROUP BY 
	country
ORDER BY 
    buyers DESC;

 ----------------- ANSWER9 --------------------
 
 SELECT country, COUNT(productsSold) AS sellers
FROM
    users_data
WHERE
    productsSold > 0
GROUP BY 
    country
ORDER BY 
    sellers ASC;

-------------------- ANSWER10 --------------------
SELECT 
    country, MAX(productsPassRate) AS PassRate
FROM
    users_data
GROUP BY 
    country
ORDER BY 
	PassRate DESC
LIMIT 10;

-------------------- ANSWER11 ---------------------

SELECT 
    language, COUNT(*) users
FROM
    users_data
GROUP BY 
	language;

----------------- ANSWER12 --------------------
SELECT * FROM users_data;

SELECT 'Description', 'No. of units'
UNION SELECT
  'Products wishlisted', COUNT(productsWished) 
FROM 
  users_data
WHERE 
  gender = 'F' AND hasAnyApp = 'True' AND productsWished > 0
UNION SELECT 
  'Products Social Liked', COUNT(socialProductsLiked)
FROM 
   users_data
WHERE 
   gender = 'F' AND hasAnyApp = 'True' AND socialproductsliked > 0 ;

-------------- ANSWER13 ----------------

SELECT 'Description', 'No. of people' 
UNION SELECT 
    'Sellers(Male)', COUNT(productsSold)
FROM
    users_data
WHERE
    gender = 'M' AND productsSold > 0
UNION SELECT 
    'Buyers(Male)', COUNT(productsBought)
FROM
    users_data
WHERE
    gender = 'M' AND productsBought > 0 ;
    
----------------- ANSWER14 --------------------

SELECT 
    country, COUNT(productsBought) AS Buyers
FROM
    users_data
WHERE
    productsBought > 0
GROUP BY
	country
ORDER BY
    Buyers DESC LIMIT 1;
    
----------------- ANSWER15 ------------------

SELECT Distinct
    (country), productsSold
FROM
    users_data
WHERE
    productsSold = 0
LIMIT 10;

-------------- ANSWER16 -----------------

SELECT 
    identifierHash, daysSinceLastLogin
FROM
    users_data
ORDER BY 
	daysSinceLastLogin
LIMIT 110;

----------------- ANSWER17 --------------------

SELECT 
    COUNT(identifierHash) AS Female_users
FROM
    users_data
WHERE
    gender = 'F'
        AND daysSinceLastLogin >= 100;
        
----------------- ANSWER18 ------------------------

SELECT 
    country, COUNT(identifierHash) AS Femaleusers
FROM
    users_data
WHERE
    gender = 'F'
GROUP BY 
    country;

----------------- ANSWER19 ----------------------

SELECT 
    country, COUNT(identifierHash) AS Maleusers
FROM
    users_data
WHERE
    gender = 'M'
GROUP BY 
	country;

-------------------- ANSWER20 -------------------------

SELECT 
    country, AVG(productsSold), AVG(productsBought)
FROM
    users_data
WHERE
    gender = 'M'
GROUP BY 
    country;
drop database Movies;
CREATE DATABASE Movies;
USE Movies;

-- MOVIES
CREATE TABLE Movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    release_year INT,
    duration INT, -- in minutes
    director VARCHAR(100)
);
INSERT INTO Movies (title, genre, release_year, duration, director) VALUES
('Jailer', 'Action', 2023, 168, 'Nelson'),
('Ponniyin Selvan: Part 1', 'Historical Drama', 2022, 167, 'Mani Ratnam'),
('Ponniyin Selvan: Part 2', 'Historical Drama', 2023, 165, 'Mani Ratnam'),
('Beast', 'Action', 2022, 156, 'Nelson'),
('Doctor', 'Comedy/Thriller', 2021, 148, 'Nelson'),
('Vada Chennai', 'Crime/Drama', 2018, 164, 'Vetrimaaran'),
('Asuran', 'Action/Drama', 2019, 141, 'Vetrimaaran'),
('Karnan', 'Action/Drama', 2021, 158, 'Mari Selvaraj'),
('Kaala', 'Action/Drama', 2018, 166, 'Pa. Ranjith'),
('Kabali', 'Action/Drama', 2016, 152, 'Pa. Ranjith'),
('Mersal', 'Action/Thriller', 2017, 172, 'Atlee'),
('Bigil', 'Sports/Action', 2019, 178, 'Atlee'),
('Theri', 'Action/Thriller', 2016, 157, 'Atlee'),
('96', 'Romance/Drama', 2018, 158, 'C. Prem Kumar'),
('Vikram Vedha', 'Action/Thriller', 2017, 147, 'Pushkar-Gayathri'),
('Thani Oruvan', 'Action/Thriller', 2015, 160, 'Mohan Raja'),
('Irumbu Thirai', 'Action/Thriller', 2018, 160, 'P. S. Mithran'),
('Maanaadu', 'Sci-Fi/Thriller', 2021, 147, 'Venkat Prabhu'),
('Sarkar', 'Political/Thriller', 2018, 163, 'AR Murugadoss'),
('Ghajini', 'Action/Thriller', 2005, 183, 'AR Murugadoss'),
('Anniyan', 'Psychological Thriller', 2005, 181, 'Shankar'),
('I', 'Action/Thriller', 2015, 188, 'Shankar'),
('Indian', 'Action/Thriller', 1996, 185, 'Shankar'),
('Aayirathil Oruvan', 'Adventure/Fantasy', 2010, 183, 'Selvaraghavan'),
('Pudhupettai', 'Crime/Drama', 2006, 168, 'Selvaraghavan'),
('Soodhu Kavvum', 'Dark Comedy/Thriller', 2013, 138, 'Nalan Kumarasamy'),
('Pizza', 'Horror/Thriller', 2012, 127, 'Karthik Subbaraj'),
('Jigarthanda', 'Crime/Thriller', 2014, 171, 'Karthik Subbaraj'),
('Petta', 'Action', 2019, 172, 'Karthik Subbaraj'),
('Vikram', 'Action/Thriller', 2022, 175, 'Lokesh Kanagaraj'),
('Master', 'Action', 2021, 179, 'Lokesh Kanagaraj'),
('Soorarai Pottru', 'Drama', 2020, 153, 'Sudha Kongara'),
('Kaithi', 'Thriller', 2019, 145, 'Lokesh Kanagaraj'),
('Super Deluxe', 'Crime/Drama', 2019, 176, 'Thiagarajan Kumararaja');

-- ACTORS

CREATE TABLE Actors (
    actor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);
INSERT INTO Actors (name) VALUES
('Rajinikanth'),
('Kamal Haasan'),
('Vijay'),
('Ajith Kumar'),
('Suriya'),
('Dhanush'),
('Vikram'),
('Sivakarthikeyan'),
('Jayam Ravi'),
('Vijay Sethupathi'),
('Karthi'),
('Arya'),
('Silambarasan TR'),
('Jiiva'),
('Madhavan'),
('Prabhu Deva'),
('Sathyaraj'),
('Prakash Raj'),
('Nassar'),
('Samuthirakani'),
('Arvind Swami'),
('Bobby Simha'),
('SJ Suryah'),
('Harish Kalyan'),
('Atharvaa Murali'),
('Gautham Karthik'),
('Ashok Selvan'),
('Kalaiyarasan'),
('Vidharth'),
('Aadhi Pinisetty'),
('Sarath Kumar'),
('R. Parthiban'),
('Chandran'),
('Soori'),
('Yogi Babu'),
('Santhanam'),
('Vadivelu'),
('Goundamani'),
('Senthil');

-- MOVIE ACTORS

CREATE TABLE Movie_Actors (
    movie_id INT,
    actor_id INT,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id) ON DELETE CASCADE,
    FOREIGN KEY (actor_id) REFERENCES Actors(actor_id) ON DELETE CASCADE
);

INSERT INTO Movie_Actors (movie_id, actor_id) VALUES
(1, 1), -- Jailer: Rajinikanth
(1, 2), -- Jailer: Shiva Rajkumar
(2, 3), -- Ponniyin Selvan 1: Vikram
(2, 4), -- Ponniyin Selvan 1: Karthi
(2, 5), -- Ponniyin Selvan 1: Jayam Ravi
(3, 3), -- Ponniyin Selvan 2: Vikram
(3, 4), -- Ponniyin Selvan 2: Karthi
(3, 5), -- Ponniyin Selvan 2: Jayam Ravi
(4, 6), -- Beast: Vijay
(5, 7), -- Doctor: Sivakarthikeyan
(6, 8), -- Vada Chennai: Dhanush
(7, 8), -- Asuran: Dhanush
(8, 8), -- Karnan: Dhanush
(9, 1), -- Kaala: Rajinikanth
(10, 1), -- Kabali: Rajinikanth
(11, 6), -- Mersal: Vijay
(12, 6), -- Bigil: Vijay
(13, 6), -- Theri: Vijay
(14, 9), -- 96: Vijay Sethupathi
(15, 9), -- Vikram Vedha: Vijay Sethupathi
(15, 3), -- Vikram Vedha: Vikram
(16, 10), -- Thani Oruvan: Jayam Ravi
(17, 11), -- Irumbu Thirai: Vishal
(18, 12), -- Maanaadu: Simbu
(19, 6), -- Sarkar: Vijay
(20, 6), -- Ghajini: Vijay
(21, 13), -- Anniyan: Vikram
(22, 13), -- I: Vikram
(23, 14), -- Indian: Kamal Haasan
(24, 15), -- Aayirathil Oruvan: Karthi
(25, 8), -- Pudhupettai: Dhanush
(26, 9), -- Soodhu Kavvum: Vijay Sethupathi
(27, 9), -- Pizza: Vijay Sethupathi
(28, 9), -- Jigarthanda: Vijay Sethupathi
(29, 1), -- Petta: Rajinikanth
(30, 3), -- Vikram: Vikram
(30, 9), -- Vikram: Vijay Sethupathi
(31, 6), -- Master: Vijay
(32, 16), -- Soorarai Pottru: Suriya
(33, 4), -- Kaithi: Karthi
(34, 9); -- Super Deluxe: Vijay Sethupathi

-- RATINGS

CREATE TABLE Ratings (
    rating_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    user_id INT,
    rating DECIMAL(3,1) CHECK (rating BETWEEN 0 AND 10),
    review_text TEXT,
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id) ON DELETE CASCADE
);
INSERT INTO Ratings (movie_id, user_id, rating, review_text) VALUES
(1, 101, 9.0, 'Rajinikanth’s action sequences are top-notch!'),
(1, 102, 8.5, 'A well-crafted mass entertainer by Nelson.'),
(2, 103, 9.2, 'Ponniyin Selvan does justice to Kalki’s epic novel.'),
(2, 104, 8.7, 'Vikram and Karthi shine in this historical masterpiece.'),
(3, 105, 9.3, 'Mani Ratnam continues the brilliance in Part 2!'),
(4, 106, 7.5, 'Beast has great action but the storyline could be better.'),
(5, 107, 8.2, 'Doctor balances comedy and thrill perfectly!'),
(6, 108, 9.0, 'Vada Chennai is one of Dhanush’s best performances.'),
(7, 109, 9.1, 'Asuran is an emotional and powerful film.'),
(8, 110, 8.9, 'Karnan is a gripping rural drama with intense performances.'),
(9, 111, 8.0, 'Kaala is a visually stunning and socially relevant movie.'),
(10, 112, 7.8, 'Kabali was good, but expectations were higher.'),
(11, 113, 8.5, 'Mersal offers the perfect mix of action and sentiment.'),
(12, 114, 8.7, 'Bigil is a great sports drama with an emotional touch.'),
(13, 115, 8.4, 'Theri is a complete action-packed entertainer!'),
(14, 116, 9.2, '96 is a heartwarming love story with a beautiful soundtrack.'),
(15, 117, 9.0, 'Vijay Sethupathi and Madhavan’s clash is mind-blowing.'),
(16, 118, 8.8, 'Thani Oruvan redefined Tamil cinema thrillers.'),
(17, 119, 8.3, 'Irumbu Thirai is a must-watch cyber-crime thriller.'),
(18, 120, 8.9, 'Maanaadu is an engaging time-loop thriller!'),
(19, 121, 7.7, 'Sarkar had a good political message.'),
(20, 122, 8.5, 'Ghajini was a game-changer for Tamil action films.'),
(21, 123, 9.0, 'Anniyan is an unforgettable psychological thriller.'),
(22, 124, 8.8, 'I had breathtaking visuals and an intense storyline.'),
(23, 125, 9.5, 'Indian is a classic! Kamal Haasan’s best performance.'),
(24, 126, 8.1, 'Aayirathil Oruvan is a cult classic adventure.'),
(25, 127, 8.6, 'Pudhupettai is raw, dark, and amazing.'),
(26, 128, 8.0, 'Soodhu Kavvum is a refreshing take on crime comedy.'),
(27, 129, 7.5, 'Pizza is a well-made horror thriller.'),
(28, 130, 9.1, 'Jigarthanda is a masterpiece in Tamil cinema.'),
(29, 131, 8.5, 'Petta is a Rajinikanth treat for fans!'),
(30, 132, 9.2, 'Vikram is an explosive action thriller with top performances.'),
(31, 133, 8.9, 'Master is an action-packed entertainer!'),
(32, 134, 9.5, 'Soorarai Pottru is one of Suriya’s best films!'),
(33, 135, 8.7, 'Kaithi is a high-adrenaline thriller.'),
(34, 136, 9.0, 'Super Deluxe is an experimental masterpiece!');

 --  watch_histry

CREATE TABLE watch_history (
    history_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    movie_id INT,
    watch_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id) ON DELETE CASCADE
);
INSERT INTO watch_history (user_id, movie_id, watch_date) VALUES
(101, 1, '2024-01-05 20:30:00'), -- Jailer
(102, 2, '2024-01-06 21:15:00'), -- Ponniyin Selvan: Part 1
(103, 3, '2024-01-07 19:45:00'), -- Ponniyin Selvan: Part 2
(104, 4, '2024-01-08 22:10:00'), -- Beast
(105, 5, '2024-01-09 18:50:00'), -- Doctor
(106, 6, '2024-01-10 23:00:00'), -- Vada Chennai
(107, 7, '2024-01-11 20:00:00'), -- Asuran
(108, 8, '2024-01-12 19:30:00'), -- Karnan
(109, 9, '2024-01-13 21:40:00'), -- Kaala
(110, 10, '2024-01-14 22:30:00'), -- Kabali
(111, 11, '2024-01-15 20:15:00'), -- Mersal
(112, 12, '2024-01-16 19:20:00'), -- Bigil
(113, 13, '2024-01-17 21:10:00'), -- Theri
(114, 14, '2024-01-18 22:00:00'), -- 96
(115, 15, '2024-01-19 23:15:00'), -- Vikram Vedha
(116, 16, '2024-01-20 20:25:00'), -- Thani Oruvan
(117, 17, '2024-01-21 19:10:00'), -- Irumbu Thirai
(118, 18, '2024-01-22 21:45:00'), -- Maanaadu
(119, 19, '2024-01-23 22:30:00'), -- Sarkar
(120, 20, '2024-01-24 23:10:00'), -- Ghajini
(121, 21, '2024-01-25 20:00:00'), -- Anniyan
(122, 22, '2024-01-26 19:50:00'), -- I
(123, 23, '2024-01-27 21:20:00'), -- Indian
(124, 24, '2024-01-28 22:40:00'), -- Aayirathil Oruvan
(125, 25, '2024-01-29 20:15:00'), -- Pudhupettai
(126, 26, '2024-01-30 19:30:00'), -- Soodhu Kavvum
(127, 27, '2024-01-31 21:50:00'), -- Pizza
(128, 28, '2024-02-01 23:00:00'), -- Jigarthanda
(129, 29, '2024-02-02 20:10:00'), -- Petta
(130, 30, '2024-02-03 21:30:00'), -- Vikram
(131, 31, '2024-02-04 22:20:00'), -- Master
(132, 32, '2024-02-05 23:15:00'), -- Soorarai Pottru
(133, 33, '2024-02-06 20:45:00'), -- Kaithi
(134, 34, '2024-02-07 19:55:00'); -- Super Deluxe

-- most watched movie

SELECT m.title, COUNT(w.history_id) AS watch_count
FROM Watch_History w
JOIN Movies m ON w.movie_id = m.movie_id
GROUP BY m.title
ORDER BY watch_count DESC
LIMIT 5;

-- MOVIE GENRE,RATINGS

SELECT m.title,m.genre, ROUND(AVG(r.rating), 2) AS avg_rating
FROM Movies m
JOIN Ratings r ON m.movie_id = r.movie_id
GROUP BY m.title,m.genre
ORDER BY avg_rating DESC
LIMIT 5;

-- CATEGORY

SELECT m.title,ROUND(AVG(r.rating), 2) AS avg_rating,
    CASE 
        WHEN AVG(r.rating) >= 9 THEN 'Excellent'
        WHEN AVG(r.rating) >= 7 THEN 'Good'
        ELSE 'Average'
    END AS rating_category
FROM Movies m
JOIN Ratings r ON m.movie_id = r.movie_id
GROUP BY m.title
ORDER BY avg_rating DESC;


WITH RecentReviews AS (
    SELECT 
        r.movie_id, 
        m.title, 
        r.rating, 
        r.review_text, 
        r.review_date,
        ROW_NUMBER() OVER (PARTITION BY r.movie_id ORDER BY r.review_date DESC) AS rn
    FROM Ratings r
    JOIN Movies m ON r.movie_id = m.movie_id
)
SELECT title, rating, review_text, review_date
FROM RecentReviews
WHERE rn = 1;


SELECT 
    m.title, 
    COUNT(r.rating_id) AS review_count,
    ROUND(AVG(r.rating), 2) AS avg_rating,
    RANK() OVER (ORDER BY AVG(r.rating) DESC) AS ranking
FROM Movies m
JOIN Ratings r ON m.movie_id = r.movie_id
GROUP BY m.title
ORDER BY avg_rating DESC;






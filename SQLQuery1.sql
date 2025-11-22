CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100),
    Country VARCHAR(50)
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(200),
    Genre VARCHAR(50),
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);
INSERT INTO Authors (AuthorID, AuthorName, Country)
VALUES
(1, 'George Orwell', 'United Kingdom'),
(2, 'J.K. Rowling', 'United Kingdom'),
(3, 'Haruki Murakami', 'Japan'),
(4, 'Chetan Bhagat', 'India'),
(5, 'Stephen King', 'United States');
INSERT INTO Books (BookID, Title, Genre, AuthorID)
VALUES
(101, '1984', 'Dystopian', 1),
(102, 'Animal Farm', 'Political Satire', 1),

(103, 'Harry Potter and the Sorcerer''s Stone', 'Fantasy', 2),
(104, 'Harry Potter and the Chamber of Secrets', 'Fantasy', 2),

(105, 'Kafka on the Shore', 'Fiction', 3),
(106, 'Norwegian Wood', 'Drama', 3),

(107, 'Five Point Someone', 'Drama', 4),
(108, '2 States', 'Romance', 4),

(109, 'The Shining', 'Horror', 5),
(110, 'It', 'Horror', 5);

CREATE VIEW vwBookAuthorDetails
AS
SELECT 
    b.BookID,
    b.Title,
    b.Genre,
    a.AuthorID,
    a.AuthorName,
    a.Country
FROM Books b
INNER JOIN Authors a
    ON b.AuthorID = a.AuthorID;


    SELECT * FROM vwBookAuthorDetails;

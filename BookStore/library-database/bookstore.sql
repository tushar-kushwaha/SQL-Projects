CREATE TABLE authors (
    author_id   INT PRIMARY KEY,
    NAME        VARCHAR(100) NOT NULL
);

CREATE TABLE books (
    book_id         INT PRIMARY KEY,
    title           VARCHAR(150) NOT NULL,
    author_id       INT NOT NULL,
    genre           VARCHAR(50),
    published       INT,
    copies          INT DEFAULT 1,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE TABLE members (
    member_id   INT PRIMARY KEY,
    name        VARCHAR(100) NOT NULL,
    email       VARCHAR(100) UNIQUE,
    join_date   DATE
);

CREATE TABLE loans (
    loan_id      INTEGER PRIMARY KEY,
    book_id      INTEGER NOT NULL,
    member_id    INTEGER NOT NULL,
    loan_date    DATE NOT NULL,
    due_date     DATE NOT NULL,
    return_date  DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

use bookstore;

INSERT INTO Author(author_id,NAME) VALUE 
(1,"Harper Lee"),
(2,"George Orwell"),
(3,"Jane Austen"),
(4,"F.Scott Fitzgerald"),
(5,"Gabriel Garcia Marquez"),
(6,"J.D Salinger"),
(7,"Fyodor Dostoevsky"),
(8,"J.R.R Tolkien"),
(9,"Charlotte Bronte"),
(10,"Alsous Huxley"),
(11,"Herman Melvile"),
(12,"Mary SHelley"),
(13,"Paulo Coelho"),
(14,"Leo Tolstoy"),
(15,"Oscar Wilde"),
(16,"Don Quixote"),
(17,"Homer"),
(19,"Lewis");

INSERT INTO Books (book_id,title,genre,author_id,published,copies) VALUES 
(1,"To Kill a Mockingbird","Clasic Fiction/Legal Drama",1,1960,3),
(2,"1984","Dystopian Fiction/Political Satire",2,1949,5),
(3,"Pride and Prejudice","Classic Romance / Comedy of Manners",3,1813,5),
(4,"The Great Gatsby","Historical Fiction / Literary",4,1925,1),
(5,"One Hundered Years Of Solitude","Magical Realism",5,1967,4),
(6,"The Cather in the Rye","Comming-of-Age Fiction",6,1951,3),
(7,"crime and Punishment","Psychological Fiction",7,1866,2),
(8,"The Lord of the Rings","High Fantasy",8,1954,6),
(9,"Jane Eyre","Gothic Romance",9,1874,2),
(10,"Brave New World","Dystopian / Speculative Fiction",10,1932,1),
(11,"Moby-Dick","Adventure / Philosophical Fiction",11,1851,7),
(12,"The Hobbit","Fantasy /adventure",8,1937,2),
(13,"Frankenstrin","Gothic Horror / Science Fiction",12,1818,2),
(14,"The Alchemist","Philosophical Fiction /Fable",13,1988,6),
(15,"War and Peace","Historic Epic",14,1869,4),
(16,"The Picture Of Dorian Gray","gothic / Philosophical Fiction",15,1890,1),
(17,"Don Quixote","Satire",16,1605,5),
(18,"The Odyssey","Epic Poetry",17,1111,1),
(19,"The Chroncles of Narnia: The Lion,The Witch and the Wardrobe","Childrens Fantasy",19,1950,10);


SELECT * FROM AUTHOR;
SELECT * FROM books;


INSERT INTO member (member_id, NAME, EMAIL,JOIN_DATE) VALUES
(1,  'Tushar Kushwaha', 'tusharwaha@gmail.com',    '2022-10-04'),
(2,  'Aarav Sharma',    'aarav.sharma@gmail.com',   '2022-11-15'),
(3,  'Priya Verma',     'priya.verma@gmail.com',    '2023-01-09'),
(4,  'Rohan Mehta',     'rohan.mehta@gmail.com',    '2023-02-21'),
(5,  'Ananya Gupta',    'ananya.gupta@gmail.com',   '2023-03-30'),
(6,  'Vikram Singh',    'vikram.singh@gmail.com',   '2023-05-12'),
(7,  'Sneha Iyer',      'sneha.iyer@gmail.com',     '2023-06-25'),
(8,  'Karan Malhotra',  'karan.malhotra@gmail.com', '2023-08-03'),
(9,  'Meera Nair',      'meera.nair@gmail.com',     '2023-09-18'),
(10, 'Arjun Reddy',     'arjun.reddy@gmail.com',    '2023-11-07'),
(11, 'Divya Joshi',     'divya.joshi@gmail.com',    '2024-01-14'),
(12, 'Rahul Yadav',     'rahul.yadav@gmail.com',    '2024-02-27');

INSERT INTO loan (LOAN_ID, book_id, member_id, loan_date, due_date, return_date) VALUES
(1,  7,  1,  '2026-08-03', '2026-08-17', '2026-08-16'),
(2,  14, 2,  '2026-08-10', '2026-08-24', '2026-08-30'),
(3,  3,  3,  '2026-08-18', '2026-09-01', '2026-08-31'),
(4,  19, 4,  '2026-08-25', '2026-09-08', '2026-09-08'),
(5,  3,  5,  '2026-09-01', '2026-09-15', '2026-09-20'),
(6,  2,  6,  '2026-09-05', '2026-09-19', '2026-09-18'),
(7,  14, 7,  '2026-09-10', '2026-09-24', '2026-09-27'),
(8,  9,  8,  '2026-09-14', '2026-09-28', '2026-09-26'),
(9,  5,  9,  '2026-09-20', '2026-10-04', NULL),
(10, 2,  10, '2026-09-25', '2026-10-09', '2026-10-08'),
(11, 3,  2,  '2026-10-06', '2026-10-20', NULL),
(14, 14, 3,  '2026-10-01', '2026-10-15', '2026-10-20'),
(12, 1,  3,  '2026-10-03', '2026-10-17', '2026-10-16'),
(13, 18, 1,  '2026-10-08', '2026-10-22', '2026-10-21'),
(15, 15, 5,  '2026-10-10', '2026-10-24', NULL),
(16, 4,  1,  '2026-10-12', '2026-10-26', '2026-10-25'),
(17, 3,  7,  '2026-10-15', '2026-10-29', NULL),
(18, 17, 2,  '2026-10-18', '2026-11-01', NULL),
(19, 6,  9,  '2026-10-22', '2026-11-05', NULL),
(20, 13, 4,  '2026-10-26', '2026-11-09', NULL);







INSERT INTO Series (title, author_id, subgenre_id)
VALUES
("Keeper of the Lost Cities", 1, 2),
("Harry Potter", 2, 2);


INSERT INTO SubGenres (name)
VALUES
("Coming of Age"),
("Dragons");


INSERT INTO Authors(name)
VALUES
("Shannon Messenger"),
("J.K. Rowling");


INSERT INTO Books(series_id, title, year)
VALUES
(1, "Keeper of the Lost Cities #1", 2011),
(1, "Neverseen", 2014),
(1, "Lodestar", 2016),
(2, "Sorcerer's Stone", 1999),
(2, "Order of the Phoenix", 2004),
(2, "Prisoner of Azkaban", 2005);


INSERT INTO Characters(name, motto, species, author_id, series_id)
VALUES
("Sophie", "I didn't know that!", "Elf", 1, 1),
("Fitz", "I am so cool", "Elf", 1, 1),
("Sophie's Mom", "I don't remember anything about a daughter", "Human", 1, 1),
("Sophie's Dad", "What daughter?", "Human", 1, 1),
("Harry", "But Dumbledor said....", "Wizard", 2, 2),
("Hagrid", "Yer a wizard!", "Giant", 2, 2),
("Mrs. Weasley", "Of course Harry can stay", "Wizard", 2, 2),
("Mr. Dursley", "Dudley-poo!", "Human", 2, 2);

INSERT INTO character_books(character_id, book_id)
VALUES
(1,3),
(1,2),
(1,1),
(3,1),
(2,1),
(2,2),
(2,3),
(4,1),
(5,4),
(5,5),
(5,6),
(6,4),
(6,5),
(6,6),
(7,5),
(8,1);

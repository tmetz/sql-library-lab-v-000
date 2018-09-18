def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM Books WHERE series_id = 1 ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM Characters ORDER BY LENGTH(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM Characters GROUP BY species ORDER BY species DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, SubGenres.name FROM Authors
  INNER JOIN Series
  ON Authors.id = Series.author_id
  INNER JOIN SubGenres
  ON Series.subgenre_id = SubGenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT title FROM Series
  INNER JOIN Characters
  ON Series.id = Characters.series_id
  GROUP BY Series.title
  HAVING Characters.species = 'human';
  ORDER BY COUNT(Characters.species) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  # "SELECT Characters.name, COUNT(character_books.book_id) FROM Characters
  # INNER JOIN character_books
  # ON Characters.id = character_books.character_id
  # INNER JOIN Books
  # ON character_books.book_id = Books.id
  # ORDER BY COUNT(character_books.book_id) DESC;"

  "SELECT Characters.name, COUNT(Books.title) FROM Characters
  INNER JOIN character_books
  ON Characters.id = character_books.character_id
  INNER JOIN Books
  ON character_books.book_id = Books.id
  GROUP BY Characters.name
  ORDER BY COUNT(Books.title) DESC;"
end

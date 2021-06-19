CREATE TABLE  publisher(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  country VARCHAR(255)
  );

CREATE TABLE books(
  id INTEGER PRIMARY KEY,
  title VARCHAR(255),
  publisher INT,
  FOREIGN KEY(publisher) REFERENCES  publisher(id)
  );
  
CREATE TABLE  subjects(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255)
  );

CREATE TABLE books_subjects(
   book INT,
   subject INT,
   FOREIGN KEY(book) REFERENCES books(id),
   FOREIGN KEY(subject) REFERENCES  subjects(id)
  );
  

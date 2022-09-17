-- Populate the Table with incoming Column Header List
CREATE TABLE course_textbooks (
	id SERIAL PRIMARY KEY,
	university VARCHAR,
	term VARCHAR,
	department VARCHAR,
	course VARCHAR,
	section VARCHAR,
	title VARCHAR,
	edition VARCHAR,
	price FLOAT,
	isbn VARCHAR,
	publisher VARCHAR,
	book_type VARCHAR,
	book_url VARCHAR
);

-- Identify User Port Number
SELECT setting
FROM pg_settings
WHERE name = 'port';
CREATE TABLE courses (
	course_serial_id SERIAL PRIMARY KEY,
	university VARCHAR,
	campus_id VARCHAR,
	term VARCHAR,
	term_id VARCHAR,
	department VARCHAR,
	department_id VARCHAR,
	course VARCHAR,
	course_id VARCHAR,
	section VARCHAR,
	section_id VARCHAR
);

CREATE TABLE textbooks (
	textbook_id SERIAL PRIMARY KEY,
	campus_id VARCHAR,
	term_id VARCHAR,
	department_id VARCHAR,
	course_id VARCHAR,
	section_id VARCHAR,
	title VARCHAR,
	edition VARCHAR,
	publisher VARCHAR,
	book_type VARCHAR,
	book_id VARCHAR,
	recommend_type VARCHAR,
	isbn VARCHAR,
	price FLOAT
);

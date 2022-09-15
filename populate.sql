CREATE TABLE courses (
	university VARCHAR,
	campus VARCHAR,
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
	campus_id VARCHAR,
	term_id VARCHAR,
	department_id VARCHAR,
	course_id VARCHAR,
	section_id VARCHAR,
	title VARCHAR,
	publisher VARCHAR,
	book_type VARCHAR,
	book_id VARCHAR,
	isbn VARCHAR,
	price FLOAT
);
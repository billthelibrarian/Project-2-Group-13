# Collegiate Course Textbook Library

#### Compiled data from college courses from all over the US and the textbooks used in those courses
#### The raw datasets are csv files that were derived from scraped data from American college bookstore websites
#### Included are instructions to run some code we've written to make that data more user friendly

### Authors:
* William Vann (billthelibrarian)
* Oscar Iwu (oiwuoni)
* John Torgerson (JohnTorgerson)
---

### Instructions:
#### Task 1. Clone the Repo
   1. From github clone this `Project-2-Group-13` repo to a location of your preference as a local repo

#### Task 2. Open a navigation terminal
   1. Open a gitbash from the local repo if you are on a PC
   2. Open a terminal from the local repo if you are on a mac

#### Task 3. Activate a python environment
   1. Activate PythonData38 environment in your terminal *or gitbash* window

#### Task 4. Open a web based interactive computing platform
   1. In your gitbash *or terminal* open a jupyter notebook

#### Task 5. Open PostgreSQL software
   1. Navigate to your PostgreSQL program, *wait an eternity for it to load*, and log in with your unique password
   
#### Task 6. Create a new database to populate with college and textbook book data
   1. In the navigaton browser on the left, right-click databases
   2. Create a new database named `library_db`

#### Task 7. Open a query and run our schema code
   1. Open the query tool
   2. With a new query open, click the folder icon and navigate to the local repo that you created in Task 1
   3. Select the `populate_sql` file and run it in its entirety
   
#### Task 8. Return to jupyter notebook
   1. Navigate to and open file `transform.ipynb` and run each cell in order starting from the first cell at the top

#### Task 9. Refresh for the next user
   1. **Restart and clear** the cells before you close the notebook because *its just good manners*
   2. Now you can close it

#### Task 10. Return to PostgreSQL software
   1. Navigate back to your PostgreSQL program
    
#### Task 11. Enjoy working with the data
   1. try using "select * from course_textbooks;" to start 
---

### Tools and Supplies:
* csv data tables
* Python, Pandas, jupyter notebook, PostgreSQL, SqlAlchemy
---

### Guide to Repo Contents:

* `Partition_CSVs.ipynb` is a jupyter notebook that uses pandas to extract jumbo sized files and slice them into smaller partitions
* `transform.ipynb` is a jupyter notebook that uses pandas to clean and transform raw data as well as load it in PostgreSQL
* `populate.sql` is a sql code file that you will need to access to populate the data tables in PostgreSQL
* `ReadME.md` is the read only file you're currently viewing which contains the instruction manual for this data
* `technical_report.ipynb` is the read only jupyter notebook with the technical descriptiion explaining what was done to the raw data to deliver a cleaner and more easily usable product to analysts as well as consumers

* In folder, `Resources` are the following files:
    1. `courses_1.csv` is partition 1 of 3 raw data from `BNCollegeCourses_2022-02-05.csv`
    2. `courses_2.csv` is partition 2 of 3 raw data from `BNCollegeCourses_2022-02-05.csv`
    3. `courses_3.csv` is partition 3 of 3 raw data from `BNCollegeCourses_2022-02-05.csv`
    4. `textbooks_1.csv` is partition 1 of 5 raw data from `BNTextbook_2022-02-05.csv`
    5. `textbooks_2.csv` is partition 2 of 5 raw data from `BNTextbook_2022-02-05.csv`
    6. `textbooks_3.csv` is partition 3 of 5 raw data from `BNTextbook_2022-02-05.csv`
    7. `textbooks_4.csv` is partition 4 of 5 raw data from `BNTextbook_2022-02-05.csv`
    8. `textbooks_5.csv` is partition 5 of 5 raw data from `BNTextbook_2022-02-05.csv`
    * Complete `BNCollegeCourses_2022-02-05.csv` is filesize (99.28 MB)
    * Complete `BNTextbook_2022-02-05.csv` is filesize (284.41 MB)
    * They can be found at [this website](https://www.kaggle.com/datasets/polartech/us-college-textbooks-and-courses-dataset)
---


### Credits and Special Thanks

* Dominic Labella for helping clarify how we could most effectively connect the two tables and advising us on the pros and cons between building a junction table in sql and creating a new table with a pd.merge function in pandas - in this case we opted to use the merge

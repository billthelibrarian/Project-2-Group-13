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
   - *--OR--*
   1. Open a terminal from the local repo if you are on a mac

#### Task 3. Activate a python environment
   1. Activate PythonData38 environment in your terminal *or gitbash* window

#### Task 4. Open a web based interactive computing platform
   1. In your gitbash *or terminal* open a jupyter notebook
   2. Don't navigate anywhere yet, simply go on to Task 5, leaving this open in the background

#### Task 5. Open PostgreSQL software
   1. Navigate to your PGAdmin-PostgreSQL program, *wait an eternity for it to load*, and log in with your unique password
   
#### Task 6. Create a new database to populate with college and textbook book data
   1. Create a new database named `library_db`

#### Task 7. Open a query and run our schema code
   1. Open the Query tool
   2. With a new query open, click the folder icon and navigate to the local repo that you created in Task 1
   3. Select the `populate_sql` file and run it in its entirety
   4. Note the output in the window shows "setting" with object type "text"
   5. This is your port number and you will need it for Task 8
   6. ***Remember this 4 digit number*** you can write it down somewhere if that helps
   7. Close the Query tool
   
#### Task 8. Return to jupyter notebook
   1. Navigate to and open file `config.py`
   2. Between the red quotations type in your Postgres password, replacing <--YOUR PASSWORD-->
   3. Between the red quotations type in your port number from Task 7, replacing <--YOUR PORT NUMBER-->
   4. File/Save your unique values
   5. *Neglecting to save this file will create an error in the next file*
   6. Do not close this tab yet

#### Task 8. Navigate to the jupyter notebook where the magic happens
   1. Navigate to and open file `transform.ipynb` and run each cell in order starting from the first cell at the top

#### Task 9. Refresh& Restore for the next user
   1. **Restart and clear** the cells before you close the notebook because *it's just good manners*
   2. Now you can close the `transform.py` tab
   2. Return to the config.py tab
   3. Remove your password, restoring <--YOUR PASSWORD--> between the red quotations
   4. Remove your port, restoring <--YOUR PORT NUMBER--> between the red quotations
   5. File/Save the changes
   6. *Neglecting to save this file could leave your personal security exposed*
   7. Now you can close the `config.py` tab
   8. You can also close the jupyter notebook
   9. You can also exit out of your terminal *or gitbash*
   
#### Task 10. Return to PostgreSQL software
   1. Navigate back to your PGAdmin-PostgreSQL program
   2. Open a new Query tool
    
#### Task 11. Enjoy working with the data
   1. Try using "select * from course_textbooks;" to start, and narrow your queries however you want
---

### Tools and Supplies:
* csv data tables
* Python, Pandas, jupyter notebook, PostgreSQL, SqlAlchemy
---

### Guide to Repo Contents:

* `config.py` is a text file you will use to keep your private info secured
* `Partition_CSVs.ipynb` is a jupyter notebook that uses pandas to extract jumbo sized files and slice them into smaller partitions
* `transform.ipynb` is a jupyter notebook that uses pandas to clean and transform raw data as well as load it in PostgreSQL
* `populate.sql` is a sql code file that you will need to access to populate the data tables in PostgreSQL
* `ReadME.md` is the read only file you're currently viewing which contains the instruction manual for this data
* `technical_report.ipynb` is the read only jupyter notebook with the technical description explaining what was done to the raw data to deliver a cleaner and more easily usable product to analysts as well as consumers

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

* Dominic LaBella and Nick Buller for helping clarify how we could most effectively connect the two tables and advising us on the pros and cons between building a junction table in sql and creating a new table with a pd.merge function in pandas - in this case we opted to use the merge.

# Collegiate Course Textbook Library

### Compiled data from college courses from all over the US and the textbooks used in those courses
### The raw datasets are csv files that were derived from scraped data from American college bookstore websites
### Included are instructions to run some code we've written to make that data more user friendly

##### Authors:
* William Vann (billthelibrarian)
* Oscar Iwu (oiwuoni)
* John Torgerson (JohnTorgerson)
---

### Instructions:

##### 1. Clone the Repo
    * From github clone this `Project-2-Group-13` repo to a location of your preference as a local repo

##### 2. Open a navigation terminal
    * Open a gitbash from the local repo if you are on a PC
    * Open a terminal from the local repo if you are on a mac

##### 3. Activate a python environment
    * Activate PythonData38 environment in your terminal *or gitbash* window

##### 4. Open a web based interactive computing platform
    * In your gitbash *or terminal* open a jupyter notebook

##### 5. Open a notebook and run code to merge two tables
    * Navigate to and open file `table_merge.ipynb` and run each cell in order starting from the first cell at the top

##### 6. Refresh for the next user
    * Restart and clear the cells before you close the notebook *its just good manners*
    * Now you can close it

##### 7. Open PostgreSQL software
    * Navigate to your PostgreSQL program, *wait an eternity for it to load*, and log in with your unique password

##### 8. Create a new database to populate with college and textbook book data
    * In the navigaton browser on the left, right-click databases
    * Create a new database named `library_db`

##### 9. Open a query and run our schema code
    * Open the query tool
    * With a new query open, use the folder tab to navigate to the local repo you created in step 1
    * Select the `populate_sql` file and run it in its entirety

##### 10. Populate the tables
    * Populate the textbooks data table as follows:
    * Return your attention to the left hand file tree browser and navigate to the `library_db` you created
    * Inside that database under Schemas/public/tables there are three - you may need to *refresh* to see them
    * Right click the textbook table and navigate to the import/export tool and in the pop up select **IMPORT**
    * You must navigate to the Resources folder inside the repo you cloned and select the `textbooks.csv` file
    * Toggle the header button to active
    * Choose comma as the delimiter
    * Repeat the previous seven items of task 10 exactly, sequentially, and substituing **only** `courses.csv` into 
    the courses table and `course_textbooks.csv` into the course_textbooks table
    
##### 11. Enjoy working with the data
<hr>

##### Tools and Supplies:
* csv data tables
* Python, Pandas, jupyter notebook, PostgreSQL 
---

### Guide to Repo Contents:

* `library_cleaning.ipynb` is a jupyter notebook that uses pandas to remove manipulate the dataframes to make the content format universal
* `Spring2022.ipynb` is a jupyter notebook that uses pandas to remove unnecessary raw data from large csv files
* `populate.sql` is a sql code file that you will need to access to populate the data tables in PostgreSQL
* `ReadME.md` is the read only file you're currently viewing which contains the instruction manual for this data
* `technical_report.ipynb` is the read only jupyter notebook with the technical descriptiion explaining what was done to the raw data to deliver a cleaner and more easily usable product to analysts as well as consumers

* In folder, `Resources` are the following files:
    1. `courses.csv` is the pared down raw data for courses
    2. `textbooks.csv` is the pared down raw data for textbooks

---

### Credits and Special Thanks

* Dominic Labella for helping clarify how we could effectively connect the two tables and advising between using a junction and a merge
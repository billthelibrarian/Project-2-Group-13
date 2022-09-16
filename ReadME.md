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

#### Task 5. Open a notebook and run code to merge two tables
   1. Navigate to and open file `table_merge.ipynb` and run each cell in order starting from the first cell at the top

#### Task 6. Refresh for the next user
   1. **Restart and clear** the cells before you close the notebook *its just good manners*
   2. Now you can close it

#### Task 7. Open PostgreSQL software
   1. Navigate to your PostgreSQL program, *wait an eternity for it to load*, and log in with your unique password

#### Task 8. Create a new database to populate with college and textbook book data
   1. In the navigaton browser on the left, right-click databases
   2. Create a new database named `library_db`

#### Task 9. Open a query and run our schema code
   1. Open the query tool
   2. With a new query open, use the folder tab to navigate to the local repo you created in step 1
   3. Select the `populate_sql` file and run it in its entirety

#### Task 10. Populate the tables
   1. Populate the textbooks data table as follows:
   2. Return your attention to the left hand file tree browser and navigate to the `library_db` you created
   3. Inside that database under Schemas/public/tables there are three - you may need to *refresh* to see them
   4. Right click the textbook table and navigate to the import/export tool and in the pop up select **IMPORT**
   5. You must navigate to the Resources folder inside the repo you cloned and select the `textbooks.csv` file
   6. Toggle the header button to active
   7. Choose comma as the delimiter
   8. **Repeat** the previous seven items of Task # 10 exactly, sequentially, and *substituing only* `courses.csv` into 
   the ***courses table*** and `course_textbooks.csv` into the ***course_textbooks table***
    
#### Task 11. Enjoy working with the data
---

### *OPTIONAL* & *Not Recommended*
## RULE 1: Do ***NOT*** Push Anything you do to the github origin main
# RULE 2: Do ***NOT*** Push Anything you do to the github origin main

#### Task 1. Start Over From the Raw Data
   1. In the local repo you created in Task 1 of the previous list open jupyter notebook `Spring2022.ipynb`
 
#### Task 2. Download the Original Raw Data *internet access req'd*
   1. You can to to [this website](https://www.kaggle.com/datasets/polartech/us-college-textbooks-and-courses-dataset) for a preview and access the original files
   2. On the lower-right side of the page you'll see button for file `BNCollegeCourses_2022-02-05.csv`(99.28 MB)
   3. Below it is another button for file `BNTextbook_2022-02-05.csv`(284.41 MB)
   4. You can toggle between those to preview the files
   5. If you don't have one already, you may need to create a *free account*
   6. Clicking on the download icon will download them to your harddrive *likely to your downoad folder*
   7. Make note of the ***relative file path*** from the local repo folder to the location you've stored the downloaded files 

#### Task 3. Use/Edit/Explore Our Pandas Code to adjust the original to your own liking
   1. From the previous Task list run through Tasks 1 - 4 for opening a jupyter notebook in PythonData38 environment
   2. Open notebook `Spring2022.ipynb`
   3. Note ***CEll X*** passes relative filepaths into variables `filepath1` and `filepath2`
   4. **---you will carefully edit this code---**
   5. Edit filepath1 to "<your/unique/filepath/`BNCollegeCourses_2022-02-05.csv`"
   6. Edit filepath2 to "<your/unique/filepath/`BNTextbook_2022-02-05.csv`"
   7. Now you can run this code also
   8. Now you can edit or change this code also
   9. Now you can uniquely call or modify this code however you want
   
#### Task 4. ***IMPORTANT-Dangerzone***
   1. When you do run this code, it *will* Overwrite the clean csv files we've provided you in the local repo you've created
   2. If you've over written, and you do not like the results, you can delete the csv files, and pull the files we've provided back into your local repo using git pull
   3. Remember Rule 1 & Rule 2

#### Task 5. Noteworthy Advice
   1. In the `populate.sql` in Step 9 of the previous task list the table creation code is specific to column headers we created for you
   2. If you've made changes to the columns, even the spelling of the columns, you *will not be able to import* the overwritten csv files you created to PostgreSQL
   3. If you **want** those changes, and you want the populate and import steps to work, continue to step 4
   4. Examine your unique csv files *you will have to modify* `populate.sql` to **match *your* modifications**
   5. Line for line in each create table section indented are header names and types
   6. **All of them** need to match each create table for needs to match each table header list you've created
   7. Remember Rule 1 & Rule 2
   
#### Task 6. Further Advice
   1. If the unique changes you made to the header columns **also impact** the course_textbook table list;
   2. You will have to similarly modify the create table course-textbook section of Sql code too
   3. *For Example:* If you decided to not include `price` the code in `merge_table.ipynb` will need to be changed **match *your* modifications**
   4. And the code in `populate.sql` create table course_textbook the code for the price column will need to be removed
   5. Remember Rule 1 & Rule 2
   6. Also, we did warn you this was ***not recommended***
---

### Tools and Supplies:
* csv data tables
* Python, Pandas, jupyter notebook, PostgreSQL 
---

### Guide to Repo Contents:

* `library_cleaning.ipynb` is a jupyter notebook that uses pandas to remove manipulate the dataframes to make the content format universal
* `Spring2022.ipynb` is a jupyter notebook that uses pandas to clean and transform raw data from large csv files 
* `populate.sql` is a sql code file that you will need to access to populate the data tables in PostgreSQL
* `ReadME.md` is the read only file you're currently viewing which contains the instruction manual for this data
* `technical_report.ipynb` is the read only jupyter notebook with the technical descriptiion explaining what was done to the raw data to deliver a cleaner and more easily usable product to analysts as well as consumers

* In folder, `Resources` are the following files:
    1. `courses.csv` is the cleaned and transformed data for courses
    2. `textbooks.csv` is the cleaned and transformed data for textbooks
---


### Credits and Special Thanks

* Dominic Labella for helping clarify how we could most effectively connect the two tables and advising us on the pros and cons between building a junction table in sql and creating a new table with a pd.merge function in pandas - in this case we opted to use the merge

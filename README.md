# Project Name Template

### Project Description

##### Authors:
* William Vann (billthelibrarian)
* Oscar Iwu (oiwuoni)
* John Torgerson (JohnTorgerson)
---

### Instructions:

##### 1. Clone the Repo
    * From github clone the `Project-2-Group-13` repo

##### 2. Securely store your personal gateway to your tools
    * Create file `config.py` where you'll pass your user name, password, and port number into variables

##### 3. Pass your info into the provided variables
    * Edit your config variables to your unique usage paramaters

        user = "postgres"
        password = "<YOUR PostgreSQL Password HERE>"
        port = "<Your PostgreSQL Port Number HERE>"

##### 4. Create the library database
    * In PostgreSQL create a database named "library_db"

##### 5. Create the tables
    * From your new library_db database in PostgreSQL, open a query and run file `APPLEJACK.sql`

##### 6. Populate the tables
    * First, populate table textbooks by importing `textbooks.csv`
    * You must navigate to the Resources folder inside the provded repo you cloned 
    * Toggle the header button to active
    * Choose the comma as the delimiter
    * Repeat the previous four steps exectly, substituing only table courses  and import `courses.csv` in the first bullet point

##### 7. 
<hr>

##### Tools and Supplies:
* csv data tables
* Python, Pandas, PostgreSQL  More?
---

### Guide to Repo Contents:

* `library_cleaning.ipynb` is a jupyter notebook that uses pandas to remove manipulate the dataframes to make the content format universal
* `Spring2022.ipynb` is a jupyter notebook that uses pandas to remove unnecessary raw data from large csv files
* `instructions.md` is a read only file directing a user to run this code correctly to acheive the desired end result
* `REEADME.md` is the read only file you're currently viewing
* `REEADME.md` is the read only file you're currently viewing
* `REEADME.md` is the read only file you're currently viewing

* In folder, `Resources` are the following files:
    1. `courses.csv` is the pared down raw data for courses
    2. `textbooks.csv` is the pared down raw data for textbooks
    3. `more_samples.file` is < describe contents >
---

### Credits and Special Thanks

* Dominic Labella for helping clarify how we could effectively apply a junction table to this data
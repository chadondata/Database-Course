/* 
Employee Skills Database DDL Exercise Solution

Data Definition Language (DDL): Creating Tables
Author: Chad Harper
Contact: caharper@syr.edu
For the latest version of this code visit: 
	http://bit.ly/dbCourseDDL

The diagram used in creating these tables can be found at:
	http://bit.ly/659EmpSkillsDiagram

Legalese:
Copyright 2018 Chad Harper

Permission is hereby granted, free of charge, to 
any person obtaining a copy of this software and 
associated documentation files (the "Software"), 
to deal in the Software without restriction, 
including without limitation the rights to use, 
copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit 
persons to whom the Software is furnished to do so, 
subject to the following conditions:

The above copyright notice and this permission notice 
shall be included in all copies or substantial portions 
of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY 
OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT 
LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS 
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO 
EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE 
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, 
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE 
OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Now, on with the code.

*/

-- Employee Table
CREATE TABLE employee (
	-- Column defintion
	employee_id INT IDENTITY PRIMARY KEY
	, first_name VARCHAR(50) NOT NULL
	, last_name VARCHAR(50) NOT NULL
	, email_address VARCHAR(50) NOT NULL UNIQUE
)

-- Skill table
CREATE TABLE skill (
	-- Column definition
	skill_id INT IDENTITY PRIMARY KEY
	, skill_name VARCHAR(50) NOT NULL UNIQUE
)

-- Skill Level table
CREATE TABLE skill_level (
	-- Column Definition
	skill_level_id INT IDENTITY PRIMARY KEY
	, skill_level_name VARCHAR(50) NOT NULL UNIQUE
	, sort_order VARCHAR(3) NOT NULL
)

CREATE TABLE employee_skill_list (
	-- Column definition
	esl_id INT IDENTITY PRIMARY KEY
	, employee_id INT NOT NULL
	, skill_id INT NOT NULL
	, skill_level_id INT NOT NULL FOREIGN KEY REFERENCES skill_level(skill_level_id)
	-- Constraint definition
	, CONSTRAINT FK1_employee_skill_list FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
	, CONSTRAINT FK2_employee_skill_list FOREIGN KEY (skill_id) REFERENCES skill(skill_id)
	, CONSTRAINT U1_employee_skill_list UNIQUE (employee_id, skill_id)
)









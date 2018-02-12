/*
	Basic CREATE TABLE
	Author: Chad Harper
	License: GPLv3 https://www.gnu.org/licenses/gpl-3.0.en.html
	GitHub: https://github.com/chadondata/Database-Course
	
	Code provided with no warranty and no liability and all that
	
	ChangeLog
	2/12/2018 File Created

*/
CREATE TABLE PostCategory (
	PostCategoryID int identity NOT NULL
	, PostCategoryText varchar(50) NOT NULL
	, PostCategoryDescription varchar(200) NOT NULL
)
GO

CREATE TABLE Post (
	PostID int identity NOT NULL
	, PostText varchar(240) NOT NULL
	, PostTimestamp datetime NOT NULL
	, Post_UserID int NOT NULL
	, Post_PostCategoryID int 
)
GO

SELECT * FROM PostCategory
SELECT * FROM Post

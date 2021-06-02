CREATE DATABASE IF NOT EXISTS rbac;

USE rbac;

CREATE TABLE IF NOT EXISTS users(
userEmail VARCHAR(255) PRIMARY KEY UNIQUE,
firstName VARCHAR(55) NOT NULL,
lastName VARCHAR(55) NOT NULL,
phoneNumber VARCHAR(55)
);

CREATE TABLE IF NOT EXISTS courses(
courseId INT PRIMARY KEY,
subject VARCHAR(55) NOT NULL,
courseNumber INT NOT NULL,
courseSection VARCHAR(55) NOT NULL
);

CREATE TABLE IF NOT EXISTS resourceClasses(
resClassId INT PRIMARY KEY,
resourceName VARCHAR(55) NOT NULL
);

CREATE TABLE IF NOT EXISTS resources( #come back to this 
resourceId INT NOT NULL,
resourceName VARCHAR(55) NOT NULL,
resClassId int NOT NULL, #resourceclass holds hte permissions
courseId int NOT NULL,
primary key(resourceId, resourceName, resClassId),
FOREIGN KEY (resClassId) REFERENCES resourceClasses(resClassId),
FOREIGN KEY (courseId) REFERENCES courses(courseId)
);

CREATE TABLE IF NOT EXISTS operations(
operationAbbr VARCHAR(55) PRIMARY KEY,
operationName VARCHAR(55) NOT NULL UNIQUE
);

#should have multiple
CREATE TABLE IF NOT EXISTS permissions(
permissionId INT PRIMARY KEY,
operationAbbr VARCHAR(55) NOT NULL,
resClassId int,
FOREIGN KEY (resClassId) REFERENCES resourceClasses(resClassId),
FOREIGN KEY (operationAbbr) REFERENCES operations(operationAbbr)
);

CREATE TABLE IF NOT EXISTS roles(
roleId INT NOT NULL PRIMARY KEY,
roleName VARCHAR(55) UNIQUE
);

CREATE TABLE IF NOT EXISTS rolePermissions(
rolePermission INT PRIMARY KEY,
permissionId INT,
roleName VARCHAR(55),
FOREIGN KEY (permissionId) REFERENCES permissions(permissionId),
FOREIGN KEY (roleName) REFERENCES roles(roleName)
);

CREATE TABLE IF NOT EXISTS courseUsers(
courseUserId INT,
userEmail VARCHAR(255),
courseId INT,
primary key(courseUserId, courseId),
FOREIGN KEY (userEmail) REFERENCES users(userEmail),
FOREIGN KEY (courseId) REFERENCES courses(courseId)
);
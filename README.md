# Name of the Project: Patient Information Portal
# Technologies : 
    1. Frontend : ASP.NET Core MVC (.NET 6)
    2. Backend : ASP.NET Core Web API (.NET 6)
    3. Database : MS SQL Server
    4. Design Pattern : Repository pattern
    5. Entity Framework
    6. The user interface is designed with HTML5, CSS3, and Javascript.
# Nuget Packages : 
    In Web API project :
        1. Microsoft.EntityFrameworkCore (6.0.19)
        2. Microsoft.EntityFrameworkCore.SqlServer (6.0.19)
        3. Microsoft.EntityFrameworkCore.Tools (6.0.19)
    For Unit Test : 
        1. AutoFixture
        2. FluentAssertions
        3. Moq
# What this application does : 
    Basically, this application is developed to store patient information. 
    There will be a table that displays all stored patient data. This application provides a small patient entry form. 
    By using this module a user will be able to insert, update, delete, and display patient information. 
# Required tools and environment : 
    Make sure your visual studio is updated, MS SQL Server and dotnet SDK 6.0 are installed. 
# How to install and run the project : 
    Step 01 : Download the project.
    Step 02 : Run the script file "database.sql". File Location: PatientInformationPortal > Backend > database.sql
    Step 03 : Open the .sln file of the web api project with visual studio and run the project. File Location : PatientInformationPortal > Backend > PatientInformationPortal_Backend > PatientInformationPortal_Backend.sln
    Step 04 : Open the .sln file of the Core MVC project with visual studio and run the project. File Location : PatientInformationPortal > Frontend > PatientInformationPortal_Frontend > PatientInformationPortal_Frontend.sln 
    Following these steps, this application should work properly.

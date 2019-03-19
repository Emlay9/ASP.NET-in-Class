# Notes on Setting Up Cient-Server in Visual Studio

1. Create Web Application Project (using separate names for the project and solution)
2. Update NuGet Packages
3. Add a Class Library for the BLL/DAL
4. Add a Class Library Project for the Entities
5. Add a NuGet package for all projects > Entity Framework 6
6. Add references between the projects
    - WebApp needs to access both class libraries
    - BLL/DAL project needs to access the Entities

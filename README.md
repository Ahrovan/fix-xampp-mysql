XAMPP MySQL Auto Fix Script

A batch script that automatically fixes the issue of MySQL not starting in XAMPP by performing these steps:

    Stops Apache and MySQL services.
    Renames the existing data folder to data_old (as a backup).
    Creates a fresh data folder.
    Copies backup files from mysql/backup into the new data folder.
    Copies non-system databases from the old data folder (data_old) into data.
    Copies and replaces ibdata1 from data_old if it exists.
    Removes aria_log.00000001 and aria_log.00000002 to prevent startup issues.
    Restarts the XAMPP Control Panel and starts Apache and MySQL.

Table of Contents

    Getting Started
    Usage
    Important Notes
    Contributing
    License

Getting Started

These instructions will help you run the XAMPP MySQL Auto Fix Script on your local machine to quickly resolve common MySQL startup problems.
Prerequisites

    Windows OS (Tested on Windows 7/10/11).
    XAMPP installed in C:\xampp.
    If you installed XAMPP in another directory, you must edit the paths in the script (e.g., XAMPP_PATH).

Files

    fix_mysql_xampp.cmd – The main batch script that does the repair.

Usage

    Clone or Download this repository to your local machine.

    Open the folder in File Explorer.

    Right-click on fix_mysql_xampp.cmd and select “Run as Administrator.”

    Observe the console output:
        The script will attempt to stop Apache and MySQL.
        It will rename mysql/data to mysql/data_old.
        It will create a fresh mysql/data folder.
        It will copy the contents of mysql/backup to the new mysql/data.
        It will copy user databases (except system databases) from data_old to data.
        It will replace ibdata1 if it’s found in data_old.
        It will remove any aria_log.00000001 or aria_log.00000002 files.
        Finally, it restarts the XAMPP Control Panel and starts MySQL and Apache.

    Check in your XAMPP Control Panel that MySQL is now running.

Important Notes

    Back up your mysql folder before running the script if you have critical data.
    Although the script attempts to preserve all databases by moving them to data_old, it’s always best practice to have a backup.
    If XAMPP is installed in a path other than C:\xampp, update the following variables in the script:

    set XAMPP_PATH=D:\some\other\path\xampp
    set MYSQL_PATH=%XAMPP_PATH%\mysql
    set DATA_PATH=%MYSQL_PATH%\data
    ...

    The script will stop your Apache and MySQL services if they are running. Make sure you don’t have unsaved work dependent on those services before running the script.

Contributing

    Fork this repository.
    Create your feature branch: git checkout -b feature/my-new-feature
    Commit your changes: git commit -m 'Add some feature'
    Push to the branch: git push origin feature/my-new-feature
    Submit a pull request.

Contributions, issues, and feature requests are welcome!
License

This project is open-sourced under the MIT License. See the LICENSE file for details.

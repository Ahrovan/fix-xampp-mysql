Fix MySQL Startup Issue in XAMPP
Table of Contents

    English
        Overview
        Prerequisites
        How to Use
        Important Notes
        License
    فارسی
        مروری کلی
        پیش‌نیازها
        نحوه-استفاده
        نکات-مهم
        لایسنس

English Version
Overview

This repository contains a simple batch script to fix common MySQL startup issues in XAMPP on Windows. It automatically backs up and regenerates data folders and attempts to bring your MySQL server back online in a healthy state.
Prerequisites

    XAMPP for Windows installed at C:\xampp (default path used in script).
    Administrative privileges to run batch scripts and manage processes.

How to Use

    Clone or download this repository to your local machine.

    Place the fix_mysql_startup.bat file inside your XAMPP installation folder (e.g., C:\xampp), or you can keep the default script path as long as the environment variables are correct.

    Right-click on fix_mysql_startup.bat and choose Run as administrator.

    Follow the on-screen instructions. The script will:
        Stop Apache and MySQL if they are running.
        Rename your existing data folder to data_old.
        Create a fresh data folder from the default backup folder.
        Copy your databases (except for system databases like mysql, performance_schema, phpmyadmin) from data_old to data.
        Remove any leftover MySQL log files (like aria_log files) that may cause issues.
        Restart XAMPP and open the control panel.

    Once the script finishes, open XAMPP Control Panel to verify that MySQL starts without errors.

Important Notes

    Make sure you manually back up any critical databases before using the script. While it’s designed to preserve data, it’s always good to have an extra backup.
    By default, the script assumes XAMPP is installed at C:\xampp. If it’s installed elsewhere, edit the path at the top of the script.
    Run the script with Administrator rights to avoid permission issues.

License

This project is provided under the MIT License. See the LICENSE file for more details.
نسخه فارسی
مروری کلی

این ریپازیتوری شامل یک اسکریپت بچ (Batch) ساده برای رفع مشکلات رایج راه‌اندازی MySQL در زمپ (XAMPP) روی ویندوز است. اسکریپت به‌صورت خودکار فولدرهای data را پشتیبان گرفته و مجدداً تولید می‌کند تا سرور MySQL شما به حالت سالم برگردد.
پیش‌نیازها

    نصب زمپ (XAMPP) برای ویندوز در مسیر پیش‌فرض C:\xampp.
    دسترسی ادمین (Administrative privileges) برای اجرای اسکریپت و مدیریت پروسس‌ها.

نحوه استفاده

    این ریپازیتوری را کلون (Clone) یا دانلود کنید.

    فایل fix_mysql_startup.bat را در فولدر نصب XAMPP خود قرار دهید (مثلاً C:\xampp)، یا مطمئن شوید متغیرهای مسیر در ابتدای اسکریپت با مسیر نصب شما هماهنگ باشد.

    روی فایل fix_mysql_startup.bat کلیک راست کرده و Run as Administrator را انتخاب کنید.

    دستورات نمایش داده شده را دنبال کنید. اسکریپت کارهای زیر را انجام می‌دهد:
        سرویس‌های Apache و MySQL را در صورت اجرا متوقف می‌کند.
        فولدر data فعلی را به data_old تغییر نام می‌دهد.
        فولدر جدید data را از فولدر پیش‌فرض backup می‌سازد.
        دیتابیس‌ها (به غیر از دیتابیس‌های سیستمی مثل mysql, performance_schema, phpmyadmin) را از data_old به فولدر جدید data کپی می‌کند.
        فایل‌های لاگ (مانند aria_log) که ممکن است مشکل ایجاد کنند را حذف می‌کند.
        XAMPP را ریستارت کرده و کنترل پنل را باز می‌کند.

    بعد از اتمام کار اسکریپت، کنترل پنل XAMPP را باز کنید و بررسی کنید که MySQL بدون خطا اجرا می‌شود.

نکات مهم

    قبل از اجرای اسکریپت، ترجیحاً از دیتابیس‌های مهم خود بک‌آپ دستی بگیرید. هرچند اسکریپت طوری طراحی شده تا داده‌ها را نگه دارد، ولی گرفتن بک‌آپ اضافی ضرری ندارد.
    اسکریپت به صورت پیش‌فرض مسیر C:\xampp را برای نصب XAMPP در نظر گرفته است. در صورت نیاز، مسیر را در بالای فایل اصلاح کنید.
    اسکریپت را با دسترسی ادمین اجرا کنید تا با مشکلات سطح دسترسی مواجه نشوید.

لایسنس

این پروژه تحت مجوز MIT ارائه می‌شود. برای جزئیات بیشتر فایل LICENSE را ببینید.

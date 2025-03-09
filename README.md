# Fix MySQL Startup Issue in XAMPP

## Table of Contents
- [English](#english)
- [فارسی](#فارسی)

---

## English

### Overview
This repository contains a **batch script** (`fix_mysql_startup.bat`) to fix common **MySQL startup issues** in XAMPP on Windows. It will:
1. Stop running Apache and MySQL processes.
2. Rename the existing `data` folder to `data_old`.
3. Recreate a fresh `data` folder from the default `backup` folder.
4. Copy your user databases (except for system ones like `mysql`, `performance_schema`, `phpmyadmin`) from `data_old` to the new `data`.
5. Remove problematic log files (e.g., `aria_log`).
6. Restart XAMPP and open the control panel for you to verify everything is running properly.

### Prerequisites
1. **XAMPP** installed at `C:\xampp` (or adjust paths in the script).
2. **Administrator privileges** to stop/start services and modify files.

### Usage
1. **Download or clone** this repository.
2. Place `fix_mysql_startup.bat` in your XAMPP installation folder (or update the paths in the script if needed).
3. **Right-click** on `fix_mysql_startup.bat` and select **Run as Administrator**.
4. Wait for the script to complete. It automatically opens the XAMPP Control Panel at the end.
5. Check if **MySQL** starts properly without errors.

### Important Notes
- Always keep **manual backups** of important databases before running the script, even though it’s designed to preserve data.
- If your XAMPP path is not `C:\xampp`, edit the `XAMPP_PATH` at the top of the script.
- The script assumes certain default folders exist (`backup`, `data`, etc.). If your setup is heavily customized, review the commands before running.

### Repository Structure
. ├── fix_mysql_startup.bat (Main script) ├── README.md (This file) └── LICENSE (Optional license file)

### License
Use this script under the [MIT License](LICENSE), or add your own license file.

---

## فارسی
<div dir="rtl">

### مروری کلی
این ریپازیتوری شامل یک اسکریپت **بچ** (`fix_mysql_startup.bat`) برای رفع مشکلات رایج **راه‌اندازی MySQL** در XAMPP روی ویندوز است. این اسکریپت کارهای زیر را انجام می‌دهد:
1. توقف پروسه‌های در حال اجرای Apache و MySQL.
2. تغییر نام پوشه‌ی `data` به `data_old`.
3. ساخت پوشه‌ی جدید `data` از فولدر پیش‌فرض `backup`.
4. کپی دیتابیس‌های کاربر (به جز دیتابیس‌های سیستمی مانند `mysql`, `performance_schema`, `phpmyadmin`) از `data_old` به پوشه‌ی جدید `data`.
5. حذف فایل‌های لاگ مشکل‌ساز (مثل `aria_log`).
6. راه‌اندازی مجدد XAMPP و بازکردن کنترل پنل برای بررسی اجرای صحیح MySQL.

### پیش‌نیازها
1. نصب **XAMPP** در مسیر پیش‌فرض `C:\xampp` (یا اصلاح مسیرها در اسکریپت).
2. داشتن **دسترسی ادمین** (Administrator) برای توقف/اجرای سرویس‌ها و ویرایش فایل‌ها.

### نحوه استفاده
1. این ریپازیتوری را **کلون** یا **دانلود** کنید.
2. فایل `fix_mysql_startup.bat` را در فولدر نصب XAMPP خود قرار دهید (یا مسیرها را در اسکریپت تغییر دهید).
3. روی `fix_mysql_startup.bat` **کلیک راست** کرده و **Run as Administrator** را بزنید.
4. منتظر بمانید تا اسکریپت تمام شود. در پایان، پنل XAMPP به صورت خودکار اجرا می‌شود.
5. چک کنید که **MySQL** بدون خطا اجرا می‌شود.

### نکات مهم
- حتماً قبل از اجرای اسکریپت از دیتابیس‌های مهم خود بک‌آپ دستی تهیه کنید، هرچند اسکریپت طوری طراحی شده که اطلاعات را حفظ کند.
- اگر مسیر نصب XAMPP شما `C:\xampp` نیست، در ابتدای اسکریپت قسمت `XAMPP_PATH` را اصلاح کنید.
- اسکریپت فرض می‌کند پوشه‌های پیش‌فرض (`backup`, `data` و غیره) موجود هستند. اگر پیکربندی زمپ شما سفارشی است، حتماً دستورات را قبل از اجرا بررسی کنید.

### ساختار ریپازیتوری
. ├── fix_mysql_startup.bat (اسکریپت اصلی) ├── README.md (این فایل) └── LICENSE (در صورت نیاز، فایل مجوز)


### لایسنس
می‌توانید از این اسکریپت تحت [مجوز MIT](LICENSE) استفاده کنید یا مجوز دلخواه خود را اضافه کنید.

</div>

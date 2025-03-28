# ExtArrange - File Organizer Script

## 📌 Overview
**ExtArrange** is a Bash script that organizes files in a directory by grouping them into folders based on their file extensions. It automatically detects file types and moves them into appropriate categorized folders.

## 🔧 Features
- Supports **multiple special cases** for better organization.
- Handles **compressed files**, **archives**, **media**, **documents**, **source code**, and more.
- Uses `fd` for fast file discovery.

## 📂 Folder Structure Example
Before running the script:
```
Downloads/
├── file1.jpg
├── file2.mp3
├── archive.tar.gz
├── document.pdf
├── script.sh
├── notes.txt
```
After running the script:
```
Downloads/
├── images/
│   └── file1.jpg
├── audio/
│   └── file2.mp3
├── tar/
│   └── archive.tar.gz
├── documents/
│   └── document.pdf
├── scripts/
│   └── script.sh
├── text_documents/
│   └── notes.txt
```


##  Checkout
- [x] I have read all the contributor guidelines for the repo



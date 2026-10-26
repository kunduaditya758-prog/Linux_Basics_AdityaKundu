#!/bin/bash
# Linux Basics assignment - Aditya Kundu
# all commands i used, run from home folder

mkdir Linux_Basics_AdityaKundu
cd Linux_Basics_AdityaKundu

# task 1 - make test_dir
mkdir test_dir
ls -l

# task 2 - empty file inside test_dir
touch test_dir/example.txt
cd test_dir
ls -l

# task 3 - rename (first time typed wrong name, fixed with mv again)
mv example.txt rename_example.txt
mv rename_example.txt renamed_example.txt
ls -l

# task 4 - full /etc/passwd
cat /etc/passwd

# task 5 - first 5 lines
head -n 5 /etc/passwd

# task 6 - last 5 lines
tail -n 5 /etc/passwd

# task 7 - lines with root
grep -i root /etc/passwd

cd ..

# task 8 - zip test_dir
zip -r test_dir.zip test_dir

# task 9 - unzip into unzipped_dir
unzip test_dir.zip -d unzipped_dir
ls -R unzipped_dir

# task 10 - download file with wget
wget https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore
ls

# task 11 - secure.txt read only for everyone
cd test_dir
touch secure.txt
ls -l
sudo chmod u-w secure.txt
ls -l

# task 12 - env variable (single quotes because of !)
export MY_VAR='Hello, Linux!'
echo $MY_VAR
bash -c 'echo "Child process sees: $MY_VAR"'

# final check
ls -lR ~/Linux_Basics_AdityaKundu


azams@eurusvm:~/dev$ cd bash/bash_scripts/
azams@eurusvm:~/dev/bash/bash_scripts$ sed -n '3p' 09-data.csv 
2,Clarice,firefighter,77985,Holy See (Vatican City State)
azams@eurusvm:~/dev/bash/bash_scripts$ sed -n '3,6p' 09-data.csv 
2,Clarice,firefighter,77985,Holy See (Vatican City State)
3,Cristabel,developer,72543,Bulgaria
4,Marsiella,developer,245349,Mauritius
5,Zondra,police officer,179993,Mozambique
azams@eurusvm:~/dev/bash/bash_scripts$ sed -n '/India/p' 09-data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ sed -n '/Armenia/p' 09-data.csv 
1,Asia,firefighter,55735,Armenia
azams@eurusvm:~/dev/bash/bash_scripts$ sed -n '/developer/p' 09-data.csv 
3,Cristabel,developer,72543,Bulgaria
4,Marsiella,developer,245349,Mauritius
17,Hyacinthe,developer,76595,Malta
18,Paola,developer,159588,Guinea
19,Sean,developer,140808,Antigua and Barbuda
azams@eurusvm:~/dev/bash/bash_scripts$ sed -n -e '2p' -e '4p' 09-data.csv 
1,Asia,firefighter,55735,Armenia
3,Cristabel,developer,72543,Bulgaria
azams@eurusvm:~/dev/bash/bash_scripts$ sed -n '/developer/police officer/p' 09-data.csv 
sed: -e expression #1, char 13: extra characters after command
azams@eurusvm:~/dev/bash/bash_scripts$ sed -n -e '/developer/p' -e '/doctor/p' 09-data.csv 
3,Cristabel,developer,72543,Bulgaria
4,Marsiella,developer,245349,Mauritius
9,Bee,doctor,190159,Australia
13,Merci,doctor,90494,Slovenia
17,Hyacinthe,developer,76595,Malta
18,Paola,developer,159588,Guinea
19,Sean,developer,140808,Antigua and Barbuda
20,Meg,doctor,136814,Saint Helenaazams@eurusvm:~/dev/bash/bash_scripts$ 
azams@eurusvm:~/dev/bash/bash_scripts$ 
azams@eurusvm:~/dev/bash/bash_scripts$ 
azams@eurusvm:~/dev/bash/bash_scripts$ sed -n '10,+3p' 09-data.csv 
9,Bee,doctor,190159,Australia
10,Selma,police officer,111343,Brazil
11,Marika,firefighter,246458,Central African Republic
12,Paulita,worker,248668,Nauru
azams@eurusvm:~/dev/bash/bash_scripts$ sed -n '1~3p' 09-data.csv 
id,firstname,profession,salary,country
3,Cristabel,developer,72543,Bulgaria
6,Tybie,police officer,73146,Indonesia
9,Bee,doctor,190159,Australia
12,Paulita,worker,248668,Nauru
15,Karl,police officer,117559,Bulgaria
18,Paola,developer,159588,Guinea
azams@eurusvm:~/dev/bash/bash_scripts$ sed -n '1~2p' 09-data.csv 
id,firstname,profession,salary,country
2,Clarice,firefighter,77985,Holy See (Vatican City State)
4,Marsiella,developer,245349,Mauritius
6,Tybie,police officer,73146,Indonesia
8,Carilyn,firefighter,220420,Reunion
10,Selma,police officer,111343,Brazil
12,Paulita,worker,248668,Nauru
14,Leeanne,firefighter,80769,Libyan Arab Jamahiriya
16,Brynna,firefighter,236134,Sudan
18,Paola,developer,159588,Guinea
20,Meg,doctor,136814,Saint Helenaazams@eurusvm:~/dev/bash/bash_scripts$ 
azams@eurusvm:~/dev/bash/bash_scripts$ 
azams@eurusvm:~/dev/bash/bash_scripts$ 
azams@eurusvm:~/dev/bash/bash_scripts$ sed -i 's/Indonesia/India/g' 09-data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ sed -i 's/Sudan/India/g' 09-data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ sed -i '7! s/India/Pakistan/g' 09-data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ sed -i '7 s/India/Pakistan/g' 09-data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ sed -i '7 s/Pakistan/India/g' 09-data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ sed -i '/Carilyn/ s/Reunion/India/g' 09-data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ sed -i '/Karl/ s/117559/150000/g' 09-data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ sed '1d' 09-data.csv 
1,Asia,firefighter,55735,Armenia
2,Clarice,firefighter,77985,Holy See (Vatican City State)
3,Cristabel,developer,72543,Bulgaria
4,Marsiella,developer,245349,Mauritius
5,Zondra,police officer,179993,Mozambique
6,Tybie,police officer,73146,India
7,Audrie,firefighter,95892,Iraq
8,Carilyn,firefighter,220420,India
9,Bee,doctor,190159,Australia
10,Selma,police officer,111343,Brazil
11,Marika,firefighter,246458,Central African Republic
12,Paulita,worker,248668,Nauru
13,Merci,doctor,90494,Slovenia
14,Leeanne,firefighter,80769,Libyan Arab Jamahiriya
15,Karl,police officer,150000,Bulgaria
16,Brynna,firefighter,236134,Pakistan
17,Hyacinthe,developer,76595,Malta
18,Paola,developer,159588,Guinea
19,Sean,developer,140808,Antigua and Barbuda
20,Meg,doctor,136814,Saint Helenaazams@eurusvm:~/dev/bash/bash_scripts$ sed '18,20d' 09-data.csv 
id,firstname,profession,salary,country
1,Asia,firefighter,55735,Armenia
2,Clarice,firefighter,77985,Holy See (Vatican City State)
3,Cristabel,developer,72543,Bulgaria
4,Marsiella,developer,245349,Mauritius
5,Zondra,police officer,179993,Mozambique
6,Tybie,police officer,73146,India
7,Audrie,firefighter,95892,Iraq
8,Carilyn,firefighter,220420,India
9,Bee,doctor,190159,Australia
10,Selma,police officer,111343,Brazil
11,Marika,firefighter,246458,Central African Republic
12,Paulita,worker,248668,Nauru
13,Merci,doctor,90494,Slovenia
14,Leeanne,firefighter,80769,Libyan Arab Jamahiriya
15,Karl,police officer,150000,Bulgaria
16,Brynna,firefighter,236134,Pakistan
20,Meg,doctor,136814,Saint Helenaazams@eurusvm:~/dev/bash/bash_scripts$ 
azams@eurusvm:~/dev/bash/bash_scripts$ # delete lines
azams@eurusvm:~/dev/bash/bash_scripts$ sed '/Iraq/d' 09-data.csv 
id,firstname,profession,salary,country
1,Asia,firefighter,55735,Armenia
2,Clarice,firefighter,77985,Holy See (Vatican City State)
3,Cristabel,developer,72543,Bulgaria
4,Marsiella,developer,245349,Mauritius
5,Zondra,police officer,179993,Mozambique
6,Tybie,police officer,73146,India
8,Carilyn,firefighter,220420,India
9,Bee,doctor,190159,Australia
10,Selma,police officer,111343,Brazil
11,Marika,firefighter,246458,Central African Republic
12,Paulita,worker,248668,Nauru
13,Merci,doctor,90494,Slovenia
14,Leeanne,firefighter,80769,Libyan Arab Jamahiriya
15,Karl,police officer,150000,Bulgaria
16,Brynna,firefighter,236134,Pakistan
17,Hyacinthe,developer,76595,Malta
18,Paola,developer,159588,Guinea
19,Sean,developer,140808,Antigua and Barbuda
20,Meg,doctor,136814,Saint Helenaazams@eurusvm:~/dev/bash/bash_scripts$ # delete anyone who belongs to Iraq
azams@eurusvm:~/dev/bash/bash_scripts$ sed '/^$/d' 09-data.csv 
id,firstname,profession,salary,country
1,Asia,firefighter,55735,Armenia
2,Clarice,firefighter,77985,Holy See (Vatican City State)
3,Cristabel,developer,72543,Bulgaria
4,Marsiella,developer,245349,Mauritius
5,Zondra,police officer,179993,Mozambique
6,Tybie,police officer,73146,India
7,Audrie,firefighter,95892,Iraq
8,Carilyn,firefighter,220420,India
9,Bee,doctor,190159,Australia
10,Selma,police officer,111343,Brazil
11,Marika,firefighter,246458,Central African Republic
12,Paulita,worker,248668,Nauru
13,Merci,doctor,90494,Slovenia
14,Leeanne,firefighter,80769,Libyan Arab Jamahiriya
15,Karl,police officer,150000,Bulgaria
16,Brynna,firefighter,236134,Pakistan
17,Hyacinthe,developer,76595,Malta
18,Paola,developer,159588,Guinea
19,Sean,developer,140808,Antigua and Barbuda
20,Meg,doctor,136814,Saint Helenaazams@eurusvm:~/dev/bash/bash_scripts$ sed -i '/^$/d' 09-data.csv # delete empty lines

azams@eurusvm:~/dev/bash/bash_scripts$ sed '/developer/ w 09-dev.csv' 09-data.csv # find developers and write them to a new file
azams@eurusvm:~/dev/bash/bash_scripts$ sed -i '/developer/ w 09-dev.csv' 09-data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ sed '/developer/ w 09-dev.csv' 09-data.csv 
id,firstname,profession,salary,country
1,Asia,firefighter,55735,Armenia
2,Clarice,firefighter,77985,Holy See (Vatican City State)
3,Cristabel,developer,72543,Bulgaria
4,Marsiella,developer,245349,Mauritius
5,Zondra,police officer,179993,Mozambique
6,Tybie,police officer,73146,India
7,Audrie,firefighter,95892,Iraq
8,Carilyn,firefighter,220420,India
9,Bee,doctor,190159,Australia
10,Selma,police officer,111343,Brazil
11,Marika,firefighter,246458,Central African Republic
12,Paulita,worker,248668,Nauru
13,Merci,doctor,90494,Slovenia
14,Leeanne,firefighter,80769,Libyan Arab Jamahiriya
15,Karl,police officer,150000,Bulgaria
16,Brynna,firefighter,236134,Pakistan
17,Hyacinthe,developer,76595,Malta
18,Paola,developer,159588,Guinea
19,Sean,developer,140808,Antigua and Barbuda
20,Meg,doctor,136814,Saint Helenaazams@eurusvm:~/dev/bash/bash_scripts$ 
azams@eurusvm:~/dev/bash/bash_scripts$ 
azams@eurusvm:~/dev/bash/bash_scripts$ sed '/doctor/ w 09-doc.csv' 09-data.csv # find doctors and write them to a new file
id,firstname,profession,salary,country
1,Asia,firefighter,55735,Armenia
2,Clarice,firefighter,77985,Holy See (Vatican City State)
3,Cristabel,developer,72543,Bulgaria
4,Marsiella,developer,245349,Mauritius
5,Zondra,police officer,179993,Mozambique
6,Tybie,police officer,73146,India
7,Audrie,firefighter,95892,Iraq
8,Carilyn,firefighter,220420,India
9,Bee,doctor,190159,Australia
10,Selma,police officer,111343,Brazil
11,Marika,firefighter,246458,Central African Republic
12,Paulita,worker,248668,Nauru
13,Merci,doctor,90494,Slovenia
14,Leeanne,firefighter,80769,Libyan Arab Jamahiriya
15,Karl,police officer,150000,Bulgaria
16,Brynna,firefighter,236134,Pakistan
17,Hyacinthe,developer,76595,Malta
18,Paola,developer,159588,Guinea
19,Sean,developer,140808,Antigua and Barbuda
20,Meg,doctor,136814,Saint Helenaazams@eurusvm:~/dev/bash/bash_scripts$ # find all doctors and write them to a new file
azams@eurusvm:~/dev/bash/bash_scripts$ sed '3 a 9.9,lance,developer,180000,Pakistan' 09-data.csv 
id,firstname,profession,salary,country
1,Asia,firefighter,55735,Armenia
2,Clarice,firefighter,77985,Holy See (Vatican City State)
9.9,lance,developer,180000,Pakistan
3,Cristabel,developer,72543,Bulgaria
4,Marsiella,developer,245349,Mauritius
5,Zondra,police officer,179993,Mozambique
6,Tybie,police officer,73146,India
7,Audrie,firefighter,95892,Iraq
8,Carilyn,firefighter,220420,India
9,Bee,doctor,190159,Australia
10,Selma,police officer,111343,Brazil
11,Marika,firefighter,246458,Central African Republic
12,Paulita,worker,248668,Nauru
13,Merci,doctor,90494,Slovenia
14,Leeanne,firefighter,80769,Libyan Arab Jamahiriya
15,Karl,police officer,150000,Bulgaria
16,Brynna,firefighter,236134,Pakistan
17,Hyacinthe,developer,76595,Malta
18,Paola,developer,159588,Guinea
19,Sean,developer,140808,Antigua and Barbuda
20,Meg,doctor,136814,Saint Helenaazams@eurusvm:~/dev/bash/bash_scripts$ sed '10 a 9.9,lance,developer,180000,Pakistan' 09-data.csv 
id,firstname,profession,salary,country # insert additional data after 10th line data, move everything below
1,Asia,firefighter,55735,Armenia
2,Clarice,firefighter,77985,Holy See (Vatican City State)
3,Cristabel,developer,72543,Bulgaria
4,Marsiella,developer,245349,Mauritius
5,Zondra,police officer,179993,Mozambique
6,Tybie,police officer,73146,India
7,Audrie,firefighter,95892,Iraq
8,Carilyn,firefighter,220420,India
9,Bee,doctor,190159,Australia
9.9,lance,developer,180000,Pakistan
10,Selma,police officer,111343,Brazil
11,Marika,firefighter,246458,Central African Republic
12,Paulita,worker,248668,Nauru
13,Merci,doctor,90494,Slovenia
14,Leeanne,firefighter,80769,Libyan Arab Jamahiriya
15,Karl,police officer,150000,Bulgaria
16,Brynna,firefighter,236134,Pakistan
17,Hyacinthe,developer,76595,Malta
18,Paola,developer,159588,Guinea
19,Sean,developer,140808,Antigua and Barbuda
20,Meg,doctor,136814,Saint Helenaazams@eurusvm:~/dev/bash/bash_scripts$ sed -i '10 a 9.9,lance,developer,180000,Pakistan' 09-data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ sed -i '/Selma/ a 9.9,lance,developer,180000,Pakistan' 09-data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ sed -i '/lance/ c 9.9,Lance,developer,180000,Pakistan' 09-data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ sed -i '1 i Employees-Data' 09-data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ # insert header Employees data on first line , move everything below
azams@eurusvm:~/dev/bash/bash_scripts$ sed '21 r 09-doc.csv' 09-data.csv 
Employees-Data
id,firstname,profession,salary,country
1,Asia,firefighter,55735,Armenia
2,Clarice,firefighter,77985,Holy See (Vatican City State)
3,Cristabel,developer,72543,Bulgaria
4,Marsiella,developer,245349,Mauritius
5,Zondra,police officer,179993,Mozambique
6,Tybie,police officer,73146,India
7,Audrie,firefighter,95892,Iraq
8,Carilyn,firefighter,220420,India
9,Bee,doctor,190159,Australia
9.9,Lance,developer,180000,Pakistan
10,Selma,police officer,111343,Brazil
9.9,Lance,developer,180000,Pakistan
11,Marika,firefighter,246458,Central African Republic
12,Paulita,worker,248668,Nauru
13,Merci,doctor,90494,Slovenia
14,Leeanne,firefighter,80769,Libyan Arab Jamahiriya
15,Karl,police officer,150000,Bulgaria
16,Brynna,firefighter,236134,Pakistan
17,Hyacinthe,developer,76595,Malta
21,Megan,firefighter,55000,Russia
22,Anjum,doctor,136814,Afghanistan
23,Haider,developer,175655,China18,Paola,developer,159588,Guinea
19,Sean,developer,140808,Antigua and Barbuda
20,Meg,doctor,136814,Saint Helenaazams@eurusvm:~/dev/bash/bash_scripts$ sed '23 r 09-doc.csv' 09-data.csv # insert contents of one file into another
Employees-Data
23,Haider,developer,175655,China20,Meg,doctor,136814,Saint Helenaazams@eurusvm:~/dev/bash/bash_scripts$ sed '24 r 09-doc.csv' 09-data.csv 
Employees-Data
id,firstname,profession,salary,country
1,Asia,firefighter,55735,Armenia
2,Clarice,firefighter,77985,Holy See (Vatican City State)
3,Cristabel,developer,72543,Bulgaria
4,Marsiella,developer,245349,Mauritius
5,Zondra,police officer,179993,Mozambique
6,Tybie,police officer,73146,India
7,Audrie,firefighter,95892,Iraq
8,Carilyn,firefighter,220420,India
9,Bee,doctor,190159,Australia
9.9,Lance,developer,180000,Pakistan
10,Selma,police officer,111343,Brazil
9.9,Lance,developer,180000,Pakistan
11,Marika,firefighter,246458,Central African Republic
12,Paulita,worker,248668,Nauru
13,Merci,doctor,90494,Slovenia
14,Leeanne,firefighter,80769,Libyan Arab Jamahiriya
15,Karl,police officer,150000,Bulgaria
16,Brynna,firefighter,236134,Pakistan
17,Hyacinthe,developer,76595,Malta
18,Paola,developer,159588,Guinea
19,Sean,developer,140808,Antigua and Barbuda
20,Meg,doctor,136814,Saint Helena
21,Megan,firefighter,55000,Russia
22,Anjum,doctor,136814,Afghanistan
23,Haider,developer,175655,Chinaazams@eurusvm:~/dev/bash/bash_scripts$ sed -i '24 r 09-doc.csv' 09-data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ # insert contents of 1 file into another after 24th line
azams@eurusvm:~/dev/bash/bash_scripts$ date
Wed 07 Feb 2024 02:32:34 PM PKT
azams@eurusvm:~/dev/bash/bash_scripts$ # insert result of date command into file
azams@eurusvm:~/dev/bash/bash_scripts$ sed '1 e date' 09-data.csv 
Wed 07 Feb 2024 02:33:14 PM PKT
Employees-Data
id,firstname,profession,salary,country
1,Asia,firefighter,55735,Armenia
2,Clarice,firefighter,77985,Holy See (Vatican City State)
3,Cristabel,developer,72543,Bulgaria
4,Marsiella,developer,245349,Mauritius
5,Zondra,police officer,179993,Mozambique
6,Tybie,police officer,73146,India
7,Audrie,firefighter,95892,Iraq
8,Carilyn,firefighter,220420,India
9,Bee,doctor,190159,Australia
9.9,Lance,developer,180000,Pakistan
10,Selma,police officer,111343,Brazil
9.9,Lance,developer,180000,Pakistan
11,Marika,firefighter,246458,Central African Republic
12,Paulita,worker,248668,Nauru
13,Merci,doctor,90494,Slovenia
14,Leeanne,firefighter,80769,Libyan Arab Jamahiriya
15,Karl,police officer,150000,Bulgaria
16,Brynna,firefighter,236134,Pakistan
17,Hyacinthe,developer,76595,Malta
18,Paola,developer,159588,Guinea
19,Sean,developer,140808,Antigua and Barbuda
20,Meg,doctor,136814,Saint Helena
21,Megan,firefighter,55000,Russia
22,Anjum,doctor,136814,Afghanistan
23,Haider,developer,175655,Chinaazams@eurusvm:~/dev/bash/bash_scripts$ sed -i '1 e date' 09-data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ sed -i '1 e pwd' 09-data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ sed '=' 09-data.csv # see line numbers
1
/home/azams/dev/bash/bash_scripts
2
Wed 07 Feb 2024 02:33:29 PM PKT
3
Employees-Data
4
id,firstname,profession,salary,country
5
1,Asia,firefighter,55735,Armenia
6
2,Clarice,firefighter,77985,Holy See (Vatican City State)
7
3,Cristabel,developer,72543,Bulgaria
8
4,Marsiella,developer,245349,Mauritius
9
5,Zondra,police officer,179993,Mozambique
10
6,Tybie,police officer,73146,India
11
7,Audrie,firefighter,95892,Iraq
12
8,Carilyn,firefighter,220420,India
13
9,Bee,doctor,190159,Australia
14
9.9,Lance,developer,180000,Pakistan
15
10,Selma,police officer,111343,Brazil
16
9.9,Lance,developer,180000,Pakistan
17
11,Marika,firefighter,246458,Central African Republic
18
12,Paulita,worker,248668,Nauru
19
13,Merci,doctor,90494,Slovenia
20
14,Leeanne,firefighter,80769,Libyan Arab Jamahiriya
21
15,Karl,police officer,150000,Bulgaria
22
16,Brynna,firefighter,236134,Pakistan
23
17,Hyacinthe,developer,76595,Malta
24
18,Paola,developer,159588,Guinea
25
19,Sean,developer,140808,Antigua and Barbuda
26
20,Meg,doctor,136814,Saint Helena
27
21,Megan,firefighter,55000,Russia
28
22,Anjum,doctor,136814,Afghanistan
29
23,Haider,developer,175655,Chinaazams@eurusvm:~/dev/bash/bash_scripts$ # see line numbers
azams@eurusvm:~/dev/bash/bash_scripts$ # find employees whose contries end with a 'a'


azams@eurusvm:~/dev/bash/bash_scripts$ sed -n '/a$/p' 09-data.csv 
Employees-Data
1,Asia,firefighter,55735,Armenia
3,Cristabel,developer,72543,Bulgaria
6,Tybie,police officer,73146,India
8,Carilyn,firefighter,220420,India
9,Bee,doctor,190159,Australia
13,Merci,doctor,90494,Slovenia
14,Leeanne,firefighter,80769,Libyan Arab Jamahiriya
15,Karl,police officer,150000,Bulgaria
17,Hyacinthe,developer,76595,Malta
18,Paola,developer,159588,Guinea
19,Sean,developer,140808,Antigua and Barbuda
20,Meg,doctor,136814,Saint Helena
21,Megan,firefighter,55000,Russia
23,Haider,developer,175655,Chinaazams@eurusvm:~/dev/bash/bash_scripts$ # find employees whose contries end with a 'a'

azams@eurusvm:~/dev/bash/bash_scripts$ sed -n '/[34]/p' 09-data.csv 
Wed 07 Feb 2024 02:33:29 PM PKT
1,Asia,firefighter,55735,Armenia
3,Cristabel,developer,72543,Bulgaria
4,Marsiella,developer,245349,Mauritius
5,Zondra,police officer,179993,Mozambique
6,Tybie,police officer,73146,India
8,Carilyn,firefighter,220420,India
10,Selma,police officer,111343,Brazil
11,Marika,firefighter,246458,Central African Republic
12,Paulita,worker,248668,Nauru
13,Merci,doctor,90494,Slovenia
14,Leeanne,firefighter,80769,Libyan Arab Jamahiriya
16,Brynna,firefighter,236134,Pakistan
19,Sean,developer,140808,Antigua and Barbuda
20,Meg,doctor,136814,Saint Helena
22,Anjum,doctor,136814,Afghanistan
23,Haider,developer,175655,Chinaazams@eurusvm:~/dev/bash/bash_scripts$ sed -n '/[A-D]/p' 09-data.csv 
Employees-Data
1,Asia,firefighter,55735,Armenia
2,Clarice,firefighter,77985,Holy See (Vatican City State)
3,Cristabel,developer,72543,Bulgaria
7,Audrie,firefighter,95892,Iraq
8,Carilyn,firefighter,220420,India
9,Bee,doctor,190159,Australia
10,Selma,police officer,111343,Brazil
11,Marika,firefighter,246458,Central African Republic
14,Leeanne,firefighter,80769,Libyan Arab Jamahiriya
15,Karl,police officer,150000,Bulgaria
16,Brynna,firefighter,236134,Pakistan
19,Sean,developer,140808,Antigua and Barbuda
22,Anjum,doctor,136814,Afghanistan
23,Haider,developer,175655,Chinaazams@eurusvm:~/dev/bash/bash_scripts$ # find employees whose names start from A B C D
azams@eurusvm:~/dev/bash/bash_scripts$ ls -ltr *.csv
-rw-rw-r-- 1 azams azams  656 Feb  6 15:30 07-data.csv
-rw-rw-r-- 1 azams azams  681 Feb  6 17:05 07-employees.csv
-rw-rw-r-- 1 azams azams  189 Feb  7 14:10 09-dev.csv
-rw-rw-r-- 1 azams azams  101 Feb  7 14:29 09-doc.csv
-rw-rw-r-- 1 azams azams 1064 Feb  7 14:33 09-data.csv
azams@eurusvm:~/dev/bash/bash_scripts$ ls -ltr 09*
-rw-rw-r-- 1 azams azams    0 Feb  7 13:33 09-SED.sh
-rw-rw-r-- 1 azams azams  189 Feb  7 14:10 09-dev.csv
-rw-rw-r-- 1 azams azams  101 Feb  7 14:29 09-doc.csv
-rw-rw-r-- 1 azams azams 1064 Feb  7 14:33 09-data.csv
azams@eurusvm:~/dev/bash/bash_scripts$ # POSIX CLASSES SEE 09-posix
azams@eurusvm:~/dev/bash/bash_scripts$ # sed -n '/[[:digit:]]/p' 09-posix 
azams@eurusvm:~/dev/bash/bash_scripts$ # sed -n '/[[:digit:]]/p' 09-posix 
azams@eurusvm:~/dev/bash/bash_scripts$ # sed -n '/[[:upper:]]/p' 09-posix 
returns particular outputs
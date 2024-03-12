# Cut and display data of 2nd field(column) in the file
azams@eurusvm:~/dev/bash/bash_scripts$ cut -d, -f 2 09-data.csv 
firstname
Asia
Clarice
Cristabel
Marsiella
Zondra
Tybie
Audrie
Carilyn
Bee
Lance
Selma
Lance
Marika
Paulita
Merci
Leeanne
Karl
Brynna
Hyacinthe
Paola
Sean
Meg
Megan
Anjum
Haider


# Change delimiter

azams@eurusvm:~/dev/bash/bash_scripts$ cut -d, -f 1- 09-data.csv --output-delimiter=":"
id:firstname:profession:salary:country
1:Asia:firefighter:55735:Armenia
2:Clarice:firefighter:77985:Holy See (Vatican City State)
3:Cristabel:developer:72543:Bulgaria
4:Marsiella:developer:245349:Mauritius
5:Zondra:police officer:179993:Mozambique
6:Tybie:police officer:73146:India
7:Audrie:firefighter:95892:Iraq
8:Carilyn:firefighter:220420:India
9:Bee:doctor:190159:Australia
9.9:Lance:developer:180000:Pakistan
10:Selma:police officer:111343:Brazil
9.9:Lance:developer:180000:Pakistan
11:Marika:firefighter:246458:Central African Republic
12:Paulita:worker:248668:Nauru
13:Merci:doctor:90494:Slovenia
14:Leeanne:firefighter:80769:Libyan Arab Jamahiriya
15:Karl:police officer:150000:Bulgaria
16:Brynna:firefighter:236134:Pakistan
17:Hyacinthe:developer:76595:Malta
18:Paola:developer:159588:Guinea
19:Sean:developer:140808:Antigua and Barbuda
20:Meg:doctor:136814:Saint Helena
21:Megan:firefighter:55000:Russia
22:Anjum:doctor:136814:Afghanistan
23:Haider:developer:175655:China
azams@eurusvm:~/dev/bash/bash_scripts$ cut -d, -f 1- 09-data.csv --output-delimiter="|"
id|firstname|profession|salary|country
1|Asia|firefighter|55735|Armenia
2|Clarice|firefighter|77985|Holy See (Vatican City State)
3|Cristabel|developer|72543|Bulgaria
4|Marsiella|developer|245349|Mauritius
5|Zondra|police officer|179993|Mozambique
6|Tybie|police officer|73146|India
7|Audrie|firefighter|95892|Iraq
8|Carilyn|firefighter|220420|India
9|Bee|doctor|190159|Australia
9.9|Lance|developer|180000|Pakistan
10|Selma|police officer|111343|Brazil
9.9|Lance|developer|180000|Pakistan
11|Marika|firefighter|246458|Central African Republic
12|Paulita|worker|248668|Nauru
13|Merci|doctor|90494|Slovenia
14|Leeanne|firefighter|80769|Libyan Arab Jamahiriya
15|Karl|police officer|150000|Bulgaria
16|Brynna|firefighter|236134|Pakistan
17|Hyacinthe|developer|76595|Malta
18|Paola|developer|159588|Guinea
19|Sean|developer|140808|Antigua and Barbuda
20|Meg|doctor|136814|Saint Helena
21|Megan|firefighter|55000|Russia
22|Anjum|doctor|136814|Afghanistan
23|Haider|developer|175655|China
azams@eurusvm:~/dev/bash/bash_scripts$ cut -d| -f 1- 09-data.csv --output-delimiter=","
cut: option requires an argument -- 'd'
Try 'cut --help' for more information.
-f: command not found
azams@eurusvm:~/dev/bash/bash_scripts$ cut -d, -f 1- 09-data.csv --output-delimiter=","
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
23,Haider,developer,175655,China



# Further isolate AWK

azams@eurusvm:~/dev/bash/bash_scripts$ ls -ltr
total 120
-rw-rw-r-- 1 azams azams   940 Feb  1 18:20  01-install.sh
-rwxrwxr-x 1 azams azams   209 Feb  2 16:12  02-freeRam.sh
-rwxrwxr-x 1 azams azams  1605 Feb  2 17:31  03-freeDiskMail.sh
-rw-rw-r-- 1 azams azams  1012 Feb  2 17:57 '04-compress&archive.sh'
-rwxrwxr-x 1 azams azams  1658 Feb  6 14:11  05-install.sh
-rwxrwxr-x 1 azams azams   996 Feb  6 14:55  06-createUser.sh
-rw-rw-r-- 1 azams azams   656 Feb  6 15:30  07-data.csv
-rw-rw-r-- 1 azams azams    39 Feb  6 15:37  07-multi.txt
-rw-rw-r-- 1 azams azams   681 Feb  6 17:05  07-employees.csv
-rwxrwxr-x 1 azams azams   180 Feb  6 17:19  07-file.awk
-rwxrwxr-x 1 azams azams   598 Feb  6 17:40  07-file2.awk
-rw-rw-r-- 1 azams azams   557 Feb  6 18:05  00-bestPractice.sh
-rwxrwxr-x 1 azams azams   149 Feb  7 13:33  08-clock.sh
-rw-rw-r-- 1 azams azams   189 Feb  7 14:10  09-dev.csv
-rw-rw-r-- 1 azams azams   101 Feb  7 14:29  09-doc.csv
-rw-rw-r-- 1 azams azams    62 Feb  7 14:50  09-posix
-rw-rw-r-- 1 azams azams 19908 Feb  7 15:08  09-SED.sh
-rw-rw-r-- 1 azams azams  6739 Feb  7 15:48  10-FIND.sh
-rw-rw-r-- 1 azams azams 20012 Feb  7 16:27  07-AWK.sh
-rw-rw-r-- 1 azams azams   983 Feb  7 16:28  09-data.csv
-rw-rw-r-- 1 azams azams   298 Feb  7 16:32  11-CUT.sh
azams@eurusvm:~/dev/bash/bash_scripts$ ls -ltr | awk '{print $1}'
total
-rw-rw-r--
-rwxrwxr-x
-rwxrwxr-x
-rw-rw-r--
-rwxrwxr-x
-rwxrwxr-x
-rw-rw-r--
-rw-rw-r--
-rw-rw-r--
-rwxrwxr-x
-rwxrwxr-x
-rw-rw-r--
-rwxrwxr-x
-rw-rw-r--
-rw-rw-r--
-rw-rw-r--
-rw-rw-r--
-rw-rw-r--
-rw-rw-r--
-rw-rw-r--
-rw-rw-r--
azams@eurusvm:~/dev/bash/bash_scripts$ ls -ltr | awk '{print $1}' | cut -c2,3,4
ota
rw-
rwx
rwx
rw-
rwx
rwx
rw-
rw-
rw-
rwx
rwx
rw-
rwx
rw-
rw-
rw-
rw-
rw-
rw-
rw-
rw-



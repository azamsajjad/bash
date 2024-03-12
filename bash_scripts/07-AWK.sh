azams@eurusvm:~/dev/bash/bash_scripts$ awk '/Romona/{print $0}' data.csv 
102,Romona,Glenden,Romona.Glenden@yopmail.com,police officer
azams@eurusvm:~/dev/bash/bash_scripts$ awk '/106/{print $0}' data.csv 
106,Dorothy,Christal,Dorothy.Christal@yopmail.com,police officer
azams@eurusvm:~/dev/bash/bash_scripts$ awk '/106/{print NR, $0}' data.csv 
8 106,Dorothy,Christal,Dorothy.Christal@yopmail.com,police officer
azams@eurusvm:~/dev/bash/bash_scripts$ awk '/Dorothy/{print NR, $0}' data.csv 
8 106,Dorothy,Christal,Dorothy.Christal@yopmail.com,police officer
azams@eurusvm:~/dev/bash/bash_scripts$ awk 'NR==6 {print NR, $0}' data.csv 
6 104,Dorene,Monaco,Dorene.Monaco@yopmail.com,police officer
azams@eurusvm:~/dev/bash/bash_scripts$ # awk 'pattern/condition {action}' data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ awk 'NR==6,NR==3 {print NR, $0}' data.csv 
6 104,Dorene,Monaco,Dorene.Monaco@yopmail.com,police officer
7 105,Zsa Zsa,Lay,Zsa Zsa.Lay@yopmail.com,firefighter
8 106,Dorothy,Christal,Dorothy.Christal@yopmail.com,police officer
9 107,Rhoda,Paine,Rhoda.Paine@yopmail.com,developer
10 108,Viviene,Afton,Viviene.Afton@yopmail.com,firefighter
11 109,Gilligan,Codding,Gilligan.Codding@yopmail.com,worker
12 110,Nollie,Jary,Nollie.Jary@yopmail.com,worker
azams@eurusvm:~/dev/bash/bash_scripts$ awk 'NR==3,NR==6 {print NR, $0}' data.csv 
3 101,Harmonia,McCutcheon,Harmonia.McCutcheon@yopmail.com,doctor
4 102,Romona,Glenden,Romona.Glenden@yopmail.com,police officer
5 103,Kamilah,Alarise,Kamilah.Alarise@yopmail.com,worker
6 104,Dorene,Monaco,Dorene.Monaco@yopmail.com,police officer
azams@eurusvm:~/dev/bash/bash_scripts$ awk 'NR==0 {print NR}' data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ vim data.csv 
azams@eurusvm:~/dev/bash/bash_scripts$ vim data.csv 


# tell me which lines are empty in a document
azams@eurusvm:~/dev/bash/bash_scripts$ awk 'NF==0 {print NR}' data.csv 
10
14
15


# search for specific user
azams@eurusvm:~/dev/bash/bash_scripts$ awk '/Jackie|Romona|Zsa/{print NR, $0}' 07-data.csv 
2 100,Jackie,Taam,Jackie.Taam@yopmail.com,firefighter
4 102,Romona,Glenden,Romona.Glenden@yopmail.com,police officer
7 105,Zsa Zsa,Lay,Zsa Zsa.Lay@yopmail.com,firefighter
azams@eurusvm:~/dev/bash/bash_scripts$ awk 'BEGIN{IGNORECASE=1} /jackie|romona|zsa/{print NR, $0}' 0
7-data.csv 
2 100,Jackie,Taam,Jackie.Taam@yopmail.com,firefighter
4 102,Romona,Glenden,Romona.Glenden@yopmail.com,police officer
7 105,Zsa Zsa,Lay,Zsa Zsa.Lay@yopmail.com,firefighter

# print rows which has alphabet a in his name
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, '$2 ~ /a/ {print $0}' 07-data.csv
id,firstname,lastname,email,profession
100,Jackie,Taam,Jackie.Taam@yopmail.com,firefighter
101,Harmonia,McCutcheon,Harmonia.McCutcheon@yopmail.com,doctor
102,Romona,Glenden,Romona.Glenden@yopmail.com,police officer
103,Kamilah,Alarise,Kamilah.Alarise@yopmail.com,worker
105,Zsa Zsa,Lay,Zsa Zsa.Lay@yopmail.com,firefighter
107,Rhoda,Paine,Rhoda.Paine@yopmail.com,developer
109,Gilligan,Codding,Gilligan.Codding@yopmail.com,worker


# for CSV, tell awk that delimiter is a comma
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, '$2 ~ /R/ {print $0}' 07-data.csv
102,Romona,Glenden,Romona.Glenden@yopmail.com,police officer
107,Rhoda,Paine,Rhoda.Paine@yopmail.com,developer

# print employees whose salary is greater than 50000
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, '$NF>50000 {print $0}' 07-data.csv

# multiple-delimiters
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F[,:] '{print $2}' 07-multi.txt 
 example of
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F[,:-] '{print $2}' 07-multi.txt 
 example of
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F[,:-] '{print $3}' 07-multi.txt 
 multiple

 # how to get only status of a service
 azams@eurusvm:~/dev/bash/bash_scripts$ systemctl status atd
● atd.service - Deferred execution scheduler
     Loaded: loaded (/lib/systemd/system/atd.service; enabled; vendor preset: enabled)
     Active: active (running) since Tue 2024-02-06 14:11:32 PKT; 1h 27min ago
       Docs: man:atd(8)
    Process: 728 ExecStartPre=/usr/bin/find /var/spool/cron/atjobs -type f -name =* -not -newercc />
   Main PID: 769 (atd)
      Tasks: 1 (limit: 4594)
     Memory: 972.0K
     CGroup: /system.slice/atd.service
             └─769 /usr/sbin/atd -f

Feb 06 14:11:32 eurusvm systemd[1]: Starting Deferred execution scheduler...
Feb 06 14:11:32 eurusvm systemd[1]: Started Deferred execution scheduler.
azams@eurusvm:~/dev/bash/bash_scripts$ systemctl status atd | awk 'NR==3 {print $2}'
active


# get file names or ls -1
azams@eurusvm:~/dev/bash/bash_scripts$ ls -lt | awk '{print $NF}'
40
07-awk.sh
07-multi.txt
07-data.csv
06-createUser.sh
05-install.sh
04-compress&archive.sh
03-freeDiskMail.sh
02-freeRam.sh
01-install.sh
azams@eurusvm:~/dev/bash/bash_scripts$ ls -lt | awk 'NR>1 {print $NF}'
07-awk.sh
07-multi.txt
07-data.csv
06-createUser.sh
05-install.sh
04-compress&archive.sh
03-freeDiskMail.sh
02-freeRam.sh
01-install.sh



# for a time range, get logs
azams@eurusvm:~/dev/bash/bash_scripts$ cat /var/log/syslog | awk '$3>="14:26:00" && $3<="14:30:00" {print $0}'
Feb  6 14:26:15 eurusvm systemd[1]: Starting Message of the Day...
Feb  6 14:26:19 eurusvm 50-motd-news[3313]:  * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
Feb  6 14:26:19 eurusvm 50-motd-news[3313]:    just raised the bar for easy, resilient and secure K8s cluster deployment.
Feb  6 14:26:19 eurusvm 50-motd-news[3313]:    https://ubuntu.com/engage/secure-kubernetes-at-the-edge
Feb  6 14:26:19 eurusvm systemd[1]: motd-news.service: Succeeded.
Feb  6 14:26:19 eurusvm systemd[1]: Finished Message of the Day.
Feb  6 14:26:25 eurusvm systemd[1]: Starting Cleanup of Temporary Directories...
Feb  6 14:26:25 eurusvm systemd[1]: systemd-tmpfiles-clean.service: Succeeded.
Feb  6 14:26:25 eurusvm systemd[1]: Finished Cleanup of Temporary Directories.
Feb  6 14:29:12 eurusvm PackageKit: daemon quit
Feb  6 14:29:12 eurusvm systemd[1]: packagekit.service: Succeeded.


# get files modified in february
azams@eurusvm:~/dev/bash/bash_scripts$ ls -lt | awk '$6=="Feb"'
-rw-rw-r-- 1 azams azams 4161 Feb  6 15:37 07-awk.sh
-rw-rw-r-- 1 azams azams   39 Feb  6 15:37 07-multi.txt
-rw-rw-r-- 1 azams azams  656 Feb  6 15:30 07-data.csv
-rwxrwxr-x 1 azams azams  996 Feb  6 14:55 06-createUser.sh
-rwxrwxr-x 1 azams azams 1658 Feb  6 14:11 05-install.sh
-rw-rw-r-- 1 azams azams 1012 Feb  2 17:57 04-compress&archive.sh
-rwxrwxr-x 1 azams azams 1605 Feb  2 17:31 03-freeDiskMail.sh
-rwxrwxr-x 1 azams azams  209 Feb  2 16:12 02-freeRam.sh
-rw-rw-r-- 1 azams azams  940 Feb  1 18:20 01-install.sh
azams@eurusvm:~/dev/bash/bash_scripts$ ls -lt | awk '$6=="Jan"'

# Replace a word
# use awk built-in functions
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, '{gsub("Dorothy","Rupert"); print $0}' 07-data.csv 
id,firstname,lastname,email,profession
100,Jackie,Taam,Jackie.Taam@yopmail.com,firefighter
101,Harmonia,McCutcheon,Harmonia.McCutcheon@yopmail.com,doctor
102,Romona,Glenden,Romona.Glenden@yopmail.com,police officer
103,Kamilah,Alarise,Kamilah.Alarise@yopmail.com,worker
104,Dorene,Monaco,Dorene.Monaco@yopmail.com,police officer
105,Zsa Zsa,Lay,Zsa Zsa.Lay@yopmail.com,firefighter
106,Rupert,Christal,Rupert.Christal@yopmail.com,police officer
107,Rhoda,Paine,Rhoda.Paine@yopmail.com,developer

108,Viviene,Afton,Viviene.Afton@yopmail.com,firefighter
109,Gilligan,Codding,Gilligan.Codding@yopmail.com,worker
110,Nollie,Jary,Nollie.Jary@yopmail.com,worker


azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, '{gsub("Harmonia","Paine"); print $0}' 07-data.csv 
id,firstname,lastname,email,profession
100,Jackie,Taam,Jackie.Taam@yopmail.com,firefighter
101,Paine,McCutcheon,Paine.McCutcheon@yopmail.com,doctor
102,Romona,Glenden,Romona.Glenden@yopmail.com,police officer
103,Kamilah,Alarise,Kamilah.Alarise@yopmail.com,worker
104,Dorene,Monaco,Dorene.Monaco@yopmail.com,police officer
105,Zsa Zsa,Lay,Zsa Zsa.Lay@yopmail.com,firefighter
106,Dorothy,Christal,Dorothy.Christal@yopmail.com,police officer
107,Rhoda,Paine,Rhoda.Paine@yopmail.com,developer

108,Viviene,Afton,Viviene.Afton@yopmail.com,firefighter
109,Gilligan,Codding,Gilligan.Codding@yopmail.com,worker
110,Nollie,Jary,Nollie.Jary@yopmail.com,worker



# find length of a field in a given column
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, '{print $2, length($2)}' 07-data.csv
firstname 9
Jackie 6
Harmonia 8
Romona 6
Kamilah 7
Dorene 6
Zsa Zsa 7
Dorothy 7
Rhoda 5
Viviene 7
Gilligan 8
Nollie 6

# lowercase
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, 'NR>1 {print tolower($2)}' 07-data.csv 
jackie
harmonia
romona
kamilah
dorene
zsa zsa
dorothy
rhoda

viviene
gilligan
nollie


# awk BEGIN{start_action} END{stop_action}
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, 'BEGIN{print "--------EMPLOYEES DATA-------"} {print 
$0} END{print "---------The End----------"}' 07-data.csv 

--------EMPLOYEES DATA-------
id,firstname,lastname,email,profession
100,Jackie,Taam,Jackie.Taam@yopmail.com,firefighter
101,Harmonia,McCutcheon,Harmonia.McCutcheon@yopmail.com,doctor
102,Romona,Glenden,Romona.Glenden@yopmail.com,police officer
103,Kamilah,Alarise,Kamilah.Alarise@yopmail.com,worker
104,Dorene,Monaco,Dorene.Monaco@yopmail.com,police officer
105,Zsa Zsa,Lay,Zsa Zsa.Lay@yopmail.com,firefighter
106,Dorothy,Christal,Dorothy.Christal@yopmail.com,police officer
107,Rhoda,Paine,Rhoda.Paine@yopmail.com,developer

108,Viviene,Afton,Viviene.Afton@yopmail.com,firefighter
109,Gilligan,Codding,Gilligan.Codding@yopmail.com,worker
110,Nollie,Jary,Nollie.Jary@yopmail.com,worker
---------The End----------


# Other programming concepts we can use in awk
- variables
- if-else
- array
- For Loop
- While Loop
- Functions

# find total sum of salary
# find avg salary
# how to ignore errors
# count no. of users






# find total sum of salary

# ------------------------------VARIABLES WITH AWK----------------------------------

# execute for all lines collectively
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, 'BEGIN{sum=0} {} END{print sum}' 07-data.csv 
0
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, 'BEGIN{sum=0} {} END{print "Sum of Salary: " sum}' 07
-data.csv 
Sum of Salary: 0
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, 'BEGIN{sum=0} {sum=sum+$NF} END{print "Sum of Salary:
 " sum}' 07-data.csv 
Sum of Salary: 0
# execute for all lines individually
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, 'BEGIN{sum=0} {print sum} END{}' 07-data.csv 
0
0
0
0
0
0
0
0
0
0
0
0
0
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, 'BEGIN{sum=0} {print sum=$NF} END{}' 07-employees.csv
 
91916
52577
104912
92679
115418
91864
51437
55043
50929
103285
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, 'BEGIN{sum=0} {sum=sum+$NF} END{print "Sum of Salary: " sum}' 07-employees.csv 
Sum of Salary: 810060

azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, '{sum=sum+$NF} END{print "Sum of Salary: " sum}' 07-e
mployees.csv 
Sum of Salary: 810060



# find total employees
#                                         skip line 1 && count only if No. of Fields in a line > 0
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, 'NR>1 {if($NF>0)count++} END{print "Total Employees are: " count}' 07-employees.csv 
Total Employees are: 10

id,firstname,lastname,email,salary
100,Aryn,MacIntosh,Aryn.MacIntosh@yopmail.com,91916
101,Danika,Hourigan,Danika.Hourigan@yopmail.com,52577
102,Jessy,Eachern,Jessy.Eachern@yopmail.com,104912
103,Dede,Berard,Dede.Berard@yopmail.com,92679
104,Florie,Aurelio,Florie.Aurelio@yopmail.com,115418
105,Kathi,Christine,Kathi.Christine@yopmail.com,91864
106,Deane,Sprage,Deane.Sprage@yopmail.com,51437
107,Elie,Hoban,Elie.Hoban@yopmail.com,55043
108,Britni,Medrek,Britni.Medrek@yopmail.com,50929
109,Lisette,Adore,Lisette.Adore@yopmail.com,103285
---





# find avg salary

azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, 'NR>1 {if($NF>0)count++; sum+=$NF} END{print "Average
 Salary is: " sum/count}' 07-employees.csv 
Average Salary is: 81006

# print no. of lines
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, '{} END{print NR}' 07-employees.csv 
12

# print length of each line

azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, '{print length($0)}' 07-employees.csv 
34
51
53
50
45
52
53
47
43
49
50
0


# Print length of longest line

azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, '{print length($0)}' 07-employees.csv 
34
51
53
50
45
52
53
47
43
49
50
0
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, '{if(length($0)>max)max=length($0)} END{print "Length of longest line is: " max}' 07-employees.csv 
Length of longest line is: 53

# Print HIGH for salary>60k else LOW
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, '{if($NF>60000)$7="HIGH";else $7="LOW"; print $0}' 07
-employees.csv 
id firstname lastname email salary  HIGH
100 Aryn MacIntosh Aryn.MacIntosh@yopmail.com 91916  HIGH
101 Danika Hourigan Danika.Hourigan@yopmail.com 52577  LOW
102 Jessy Eachern Jessy.Eachern@yopmail.com 104912  HIGH
103 Dede Berard Dede.Berard@yopmail.com 92679  HIGH
104 Florie Aurelio Florie.Aurelio@yopmail.com 115418  HIGH
105 Kathi Christine Kathi.Christine@yopmail.com 91864  HIGH
106 Deane Sprage Deane.Sprage@yopmail.com 51437  LOW
107 Elie Hoban Elie.Hoban@yopmail.com 55043  LOW
108 Britni Medrek Britni.Medrek@yopmail.com 50929  LOW
109 Lisette Adore Lisette.Adore@yopmail.com 103285  HIGH


# print total salary paid to developers

azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, '{if($5=="developer")sum+=$NF} END{print "Total Salar
y paid to developers: " sum}' 07-employees.csv 
Total Salary paid to developers: 208047

id,firstname,lastname,email,profession,salary
100,Blinni,Alcott,Blinni.Alcott@yopmail.com,developer,107535
101,Ashlee,Bettine,Ashlee.Bettine@yopmail.com,developer,100512
102,Hope,Danby,Hope.Danby@yopmail.com,police officer,76104
103,Hermione,Francene,Hermione.Francene@yopmail.com,police officer,58915
104,Janenna,Philipp,Janenna.Philipp@yopmail.com,firefighter,82270
105,Aeriela,Daegal,Aeriela.Daegal@yopmail.com,doctor,103696
106,Alie,Dulciana,Alie.Dulciana@yopmail.com,police officer,93954
107,Magdalena,Fosque,Magdalena.Fosque@yopmail.com,worker,82832
108,Mildrid,Philipp,Mildrid.Philipp@yopmail.com,doctor,66640
109,Myriam,Rurik,Myriam.Rurik@yopmail.com,police officer,90925
-------------------------------------------------------------------------------

# BETTER TO USE A AWK FILE INSTEAD TO COMMAND LINE AWK - cli AWK CAN SOMETIMES GET MESSY
azams@eurusvm:~/dev/bash/bash_scripts$ awk -F,  -f 07-file.awk 07-employees.csv 
----Start of File----
id firstname lastname email profession salary HIGH
100 Blinni Alcott Blinni.Alcott@yopmail.com developer 107535 HIGH
101 Ashlee Bettine Ashlee.Bettine@yopmail.com developer 100512 HIGH
102 Hope Danby Hope.Danby@yopmail.com police officer 76104 HIGH
103 Hermione Francene Hermione.Francene@yopmail.com police officer 58915 HIGH
104 Janenna Philipp Janenna.Philipp@yopmail.com firefighter 82270 HIGH
105 Aeriela Daegal Aeriela.Daegal@yopmail.com doctor 103696 HIGH
106 Alie Dulciana Alie.Dulciana@yopmail.com police officer 93954 HIGH
107 Magdalena Fosque Magdalena.Fosque@yopmail.com worker 82832 HIGH
108 Mildrid Philipp Mildrid.Philipp@yopmail.com doctor 66640 HIGH
109 Myriam Rurik Myriam.Rurik@yopmail.com police officer 90925 HIGH
----END of File----

BEGIN{
    print "----Start of File----"
}
{
    if($NF>50000)
        $7="HIGH"
    else 
        $7="LOW"
    print $0
}
END{
    print "----END of File----"
}

-------------------------------------------------------------------------------


azams@eurusvm:~/dev/bash/bash_scripts$ ./07-file2.awk 07-employees.csv 
Hello world
id,firstname,lastname,email,profession,salary
100,Blinni,Alcott,Blinni.Alcott@yopmail.com,developer,107535
101,Ashlee,Bettine,Ashlee.Bettine@yopmail.com,developer,100512
102,Hope,Danby,Hope.Danby@yopmail.com,police
103,Hermione,Francene,Hermione.Francene@yopmail.com,police
104,Janenna,Philipp,Janenna.Philipp@yopmail.com,firefighter,82270
105,Aeriela,Daegal,Aeriela.Daegal@yopmail.com,doctor,103696
106,Alie,Dulciana,Alie.Dulciana@yopmail.com,police
107,Magdalena,Fosque,Magdalena.Fosque@yopmail.com,worker,82832
108,Mildrid,Philipp,Mildrid.Philipp@yopmail.com,doctor,66640
109,Myriam,Rurik,Myriam.Rurik@yopmail.com,police

azams@eurusvm:~/dev/bash/bash_scripts$ cat 07-file2.awk 
#!/bin/awk -f
BEGIN{
    print "Hello world"
}
# Action
{
    print $1
}


-------------------------------------------------------------------------------
azams@eurusvm:~/dev/bash/bash_scripts$ ./07-file2.awk 07-employees.csv 
Hello world
0
1
Marks in maths 40
Marks in English 50
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
1 2
300



#!/bin/awk -f


# Functions
function add(x, y) {
    print x + y
}


# BEGIN
BEGIN{
    # Variables
    name = "Paul"
    age = 20
    print "Hello world"
    # array
    arr1[0] = 1
    arr1[1] = 2

    marks["English"] = 50
    marks["maths"] = 40

    # For Loop
    for(i in arr1)
        print i
    
    for(subject in marks)
        print "Marks in " subject, marks[subject]

    for(i=1; i<10; i++)
        print i

    # while loop
    count = 10
    while(count<=15){
        print count
        count++
    }

}



# Action
{}



# END
END{
    print arr1[0], arr1[1]
    add(100, 200)
}

-------------------------------------------------------------------------------

azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, '{print NR " : " $NF}' 09-data.csv 
1 : country
2 : Armenia
3 : Holy See (Vatican City State)
4 : Bulgaria
5 : Mauritius
6 : Mozambique
7 : India
8 : Iraq
9 : India
10 : Australia
11 : Pakistan
12 : Brazil
13 : Pakistan
14 : Central African Republic
15 : Nauru
16 : Slovenia
17 : Libyan Arab Jamahiriya
18 : Bulgaria
19 : Pakistan
20 : Malta
21 : Guinea
22 : Antigua and Barbuda
23 : Saint Helena
24 : Russia
25 : Afghanistan
26 : China



azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, '{if($4>170000) print $0}' 09-data.csv 
id,firstname,profession,salary,country
4,Marsiella,developer,245349,Mauritius
5,Zondra,police officer,179993,Mozambique
8,Carilyn,firefighter,220420,India
9,Bee,doctor,190159,Australia
9.9,Lance,developer,180000,Pakistan
9.9,Lance,developer,180000,Pakistan
11,Marika,firefighter,246458,Central African Republic
12,Paulita,worker,248668,Nauru
16,Brynna,firefighter,236134,Pakistan
23,Haider,developer,175655,China



azams@eurusvm:~/dev/bash/bash_scripts$ awk -F, '{if($2=="Zondra"){$4=180000} print $0}' 09-data.csv 
id,firstname,profession,salary,country
1,Asia,firefighter,55735,Armenia
2,Clarice,firefighter,77985,Holy See (Vatican City State)
3,Cristabel,developer,72543,Bulgaria
4,Marsiella,developer,245349,Mauritius
5 Zondra police officer 180000 Mozambique
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


azams@eurusvm:~/dev/bash/bash_scripts$ awk 'NR=="8" , NR=="10" {print $0}' 09-data.csv 
7,Audrie,firefighter,95892,Iraq
8,Carilyn,firefighter,220420,India
9,Bee,doctor,190159,Australia


azams@eurusvm:~/dev/bash/bash_scripts$ awk 'NF==0 {print NR}' 09-data.csv 
20
20th line is empty

azams@eurusvm:~/dev/bash/bash_scripts$ awk 'END {print NR}' 09-data.csv 
27
total number of lines



azams@eurusvm:~/dev/bash/bash_scripts$ awk 'BEGIN{while(i<10){i++; print "num is " i}}'
num is 1
num is 2
num is 3
num is 4
num is 5
num is 6
num is 7
num is 8
num is 9
num is 10

azams@eurusvm:~/dev/bash/bash_scripts$ awk 'BEGIN{for(i=0;i<=10;i++) print i;}'
0
1
2
3
4
5
6
7
8
9
10
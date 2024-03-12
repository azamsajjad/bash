PAM is a centralized way for applications to authenticate their users
it uses libraries to offer modular, configurable support for anything

[root@aLinux2023 pam.d]# ls /usr/lib64/security/
pam_access.so     pam_issue.so       pam_pwquality.so       pam_time.so
pam_cap.so        pam_keyinit.so     pam_rhosts.so          pam_timestamp.so
pam_chroot.so     pam_lastlog.so     pam_rootok.so          pam_tty_audit.so
pam_console.so    pam_limits.so      pam_securetty.so       pam_umask.so
pam_debug.so      pam_listfile.so    pam_selinux.so         pam_unix.so
pam_deny.so       pam_localuser.so   pam_selinux_permit.so  pam_unix_acct.so
pam_echo.so       pam_loginuid.so    pam_sepermit.so        pam_unix_auth.so
pam_env.so        pam_mail.so        pam_setquota.so        pam_unix_passwd.so
pam_exec.so       pam_mkhomedir.so   pam_shells.so          pam_unix_session.so
pam_faildelay.so  pam_motd.so        pam_sss.so             pam_userdb.so
pam_faillock.so   pam_namespace.so   pam_sss_gss.so         pam_usertype.so
pam_filter        pam_nologin.so     pam_stress.so          pam_warn.so
pam_filter.so     pam_permit.so      pam_succeed_if.so      pam_wheel.so
pam_ftp.so        pam_postgresok.so  pam_systemd.so         pam_xauth.so
pam_group.so      pam_pwhistory.so   pam_systemd_home.so


ubuntu
vagrant@eurusvg:~
$ ll /lib/x86_64-linux-gnu/security/
pam_access.so      pam_filter.so     pam_mail.so       pam_selinux.so     pam_umask.so
pam_cap.so         pam_ftp.so        pam_mkhomedir.so  pam_sepermit.so    pam_unix.so
pam_debug.so       pam_group.so      pam_motd.so       pam_setquota.so    pam_userdb.so
pam_deny.so        pam_issue.so      pam_namespace.so  pam_shells.so      pam_usertype.so
pam_echo.so        pam_keyinit.so    pam_nologin.so    pam_stress.so      pam_warn.so
pam_env.so         pam_lastlog.so    pam_permit.so     pam_succeed_if.so  pam_wheel.so
pam_exec.so        pam_limits.so     pam_pwhistory.so  pam_systemd.so     pam_xauth.so
pam_extrausers.so  pam_listfile.so   pam_rhosts.so     pam_time.so
pam_faildelay.so   pam_localuser.so  pam_rootok.so     pam_timestamp.so
pam_faillock.so    pam_loginuid.so   pam_securetty.so  pam_tty_audit.so







[root@aLinux2023 pam.d]# man pam_mkhomedir 
DESCRIPTION
       The pam_mkhomedir PAM module will create a users home directory if it does not
       exist when the session begins. This allows users to be present in central
       database (such as NIS, kerberos or LDAP) without using a distributed file system
       or pre-creating a large number of directories. The skeleton directory (usually
       /etc/skel/) is used to copy default files and also sets a umask for the
       creation.

       The new users home directory will not be removed after logout of the user.
EXAMPLES
       A sample /etc/pam.d/login file:

             auth       requisite   pam_securetty.so
             auth       sufficient  pam_ldap.so
             auth       required    pam_unix.so
             auth       required    pam_nologin.so
             account    sufficient  pam_ldap.so
             account    required    pam_unix.so
             password   required    pam_unix.so
             session    required    pam_mkhomedir.so skel=/etc/skel/ umask=0022
             session    required    pam_unix.so
             session    optional    pam_lastlog.so
             session    optional    pam_mail.so standard





[root@aLinux2023 pam.d]# ll
total 88
-rw-r--r--. 1 root root 272 Jan 30  2023 atd
-rw-r--r--. 1 root root 232 Jan 29 03:53 config-util
-rw-r--r--. 1 root root 617 Jan 29 03:53 fingerprint-auth
-rw-r--r--. 1 root root 676 Jan 29  2023 login
-rw-r--r--. 1 root root 154 Jan 29 03:53 other
-rw-r--r--. 1 root root 168 Feb  1  2023 passwd
-rw-r--r--. 1 root root 663 Jan 29 03:53 password-auth
-rw-r--r--. 1 root root 300 Jan 29 03:53 postlogin
-rw-r--r--. 1 root root 640 Jan 29  2023 remote
-rw-r--r--. 1 root root 143 Jan 29  2023 runuser
-rw-r--r--. 1 root root 138 Jan 29  2023 runuser-l
-rw-r--r--. 1 root root  36 Jun  8  2023 screen
-rw-r--r--. 1 root root 646 Jan 29 03:53 smartcard-auth
lrwxrwxrwx. 1 root root  25 Mar 11 12:05 smtp -> /etc/alternatives/mta-pam
-rw-r--r--. 1 root root  76 Jan 16 16:47 smtp.postfix
-rw-r--r--. 1 root root 727 Dec 14 16:28 sshd
-rw-r--r--. 1 root root 214 May 10  2021 sssd-shadowutils
-rw-r--r--. 1 root root 540 Jan 29  2023 su
-rw-r--r--. 1 root root 137 Jan 29  2023 su-l
-rw-r--r--. 1 root root 238 Jan 20 00:53 sudo
-rw-r--r--. 1 root root 178 Jan 20 00:53 sudo-i
-rw-r--r--. 1 root root 663 Jan 29 03:53 system-auth
-rw-r--r--. 1 root root  84 Jan 31  2023 vlock


[root@aLinux2023 pam.d]# cat su-l
#%PAM-1.0
auth		include		su
account		include		su
password	include		su
session		optional	pam_keyinit.so force revoke
session		include		su
#################################################################################
session requisite/required/optional/sufficient/include pam_mkhomedir.so umask=077
#################################################################################
auth: identifies modules used during authentication
account: maps to pam_acct_mgmt function
password: this groups modules associated with pam_chauthok function
session: this groups modules associated with pam_open_session function
#################################################################################










#################################################################################
#################################################################################
vim /etc/pam.d/common-password
EXAMPLES
       For an example of the use of this module, we show how it may be stacked with the
       password component of pam_unix(8).

        #
        # These lines stack two password type modules. In this example the
        # user is given 3 opportunities to enter a strong password. The
        # "use_authtok" argument ensures that the pam_unix module does not
        # prompt for a password, but instead uses the one provided by
        # pam_pwquality.
        #
        password required pam_pwquality.so retry=3
        password required pam_unix.so use_authtok

       Another example is for the case that you want to use sha256 password encryption:

        #
        # These lines allow modern systems to support passwords of at least 14
        # bytes with extra credit of 2 for digits and 2 for others the new
        # password must have at least three bytes that are not present in the
        # old password
        #
        password required pam_pwquality.so \
                      difok=3 minlen=15 dcredit=2 ocredit=2
        password required pam_unix.so use_authtok nullok sha256

       And here is another example in case you don't want to use credits:

        #
        # These lines require the user to select a password with a minimum
        # length of 8 and with at least 1 digit number, 1 upper case letter,
        # and 1 other character
        #
        password required pam_pwquality.so \
                      dcredit=-1 ucredit=-1 ocredit=-1 lcredit=0 minlen=8
        password required pam_unix.so use_authtok nullok sha256
#################################################################################
#################################################################################

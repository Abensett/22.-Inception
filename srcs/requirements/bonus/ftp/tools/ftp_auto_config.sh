
if [ ! -f "/etc/vsftpd/vsftpd.conf.bak" ]; then

    # create the folder if it doesn't exist
    mkdir -p /var/www/wordpress
    # create a backup of the original file to make sure that we can restore it
    cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.bak
    # add the user to the userlist
    adduser $FTP_USR --disabled-password
    # set the password for the user
    echo "$FTP_USR:$FTP_PWD" | /usr/sbin/chpasswd &> /dev/null
    # set the permissions for the user
    chown -R $FTP_USR:$FTP_USR /var/www/wordpress
    # add the user to the userlist
    echo $FTP_USR | tee -a /etc/vsftpd.userlist &> /dev/null
fi

/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf

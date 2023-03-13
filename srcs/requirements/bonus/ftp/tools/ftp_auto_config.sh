
if [ ! -f "/etc/vsftpd/vsftpd.conf.bak" ]; then

    mkdir -p /var/www/html

    cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.bak

    adduser $FTP_USR --disabled-password
    echo "$FTP_USR:$FTP_PWD" | /usr/sbin/chpasswd &> /dev/null
    chown -R $FTP_USR:$FTP_USR /var/www/html
    chmod  755 /var/www/html

    echo $FTP_USR | tee -a /etc/vsftpd.userlist &> /dev/null

fi

/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf

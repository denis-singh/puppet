class vsftpd::repo {

   yumrepo { 'local' :
                ensure                          =>      present,
                name                            =>      local,
                enabled                         =>      1,
                gpgcheck                        =>      1,
                baseurl                         =>      "http://192.168.88.2/repo/",
                gpgkey                          =>      "http://192.168.88.2/repo/RPM-GPG-KEY-redhat-release",
        }



}

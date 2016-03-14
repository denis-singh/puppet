class vsftpd {


		require  vsftpd::params

		Yumrepo <||>			->		Package <||>

		package { 'vsftpd' :
			ensure			=>		installed,
			allow_virtual		=>		true,
			before			=>		File['vsftpd'],
		}
		
		file 	{ 'vsftpd' :
			ensure			=>		present,
			path			=>		'/etc/vsftpd/vsftpd.conf',
			owner			=>		root,
			mode			=>		0600,
			content			=>		template('vsftpd/vsftpd.erb'),
		}		
			
			

		
		service { 'vsftpd' :
			ensure			=>		stopped,
			enable			=>		true,
			subscribe		=>		File['vsftpd'],
		}		



}







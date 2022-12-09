#find out why Apache is returning a 500 error.
exec { 'fix /var/www/html/wp-settings.php' :
  command => 'sed -i "s/class-wp-locale.phpp/class-wp-locale.php/g" /var/www/html/wp-settings.php',
}

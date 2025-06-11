echo "=== Reset Zoo Staff Member's Password ==="

read -p "Username: " uname
read -s -p "New Password: " password
echo

ldappasswd -x -D cn=admin,dc=ptzoo,dc=local -W \ # Uses LDAP to reset the password
  -S "uid=$uname,ou=People,dc=ptzoo,dc=local"

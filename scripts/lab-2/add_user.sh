echo "=== Add Zoo Staff Member to LDAP ==="

read -p "Username: " uname
read -p "Full Name: " fname
read -s -p "Password: " password
echo

# Extract Username 
given="$(echo $fname | awk '{print $1}')"
surname="$(echo $fname | awk '{print $NF}')"

# Create and fill LDIF file
cat <<EOF > /tmp/${uname}.ldif
dn: uid=$uname,ou=People,dc=ptzoo,dc=local
objectClass: inetOrgPerson
uid: $uname
sn: $surname
givenName: $given
cn: $fname
displayName: $fname
userPassword: $password
EOF

# Add the user to the LDAP
ldapadd -x -D cn=admin,dc=ptzoo,dc=local -W -f /tmp/${uname}.ldif

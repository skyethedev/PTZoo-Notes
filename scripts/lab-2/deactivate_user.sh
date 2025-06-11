echo "=== Deactivate Zoo Staff Account ==="

read -p "Username: " uname

ldapmodify -x -D cn=admin,dc=ptzoo,dc=local -W <<EOF
dn: uid=$uname,ou=People,dc=ptzoo,dc=local
changetype: modify
replace: userPassword
userPassword: disabled
EOF

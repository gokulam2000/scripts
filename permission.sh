echo "enter the name of the file or directory"
read p

if [ -f $p ];
then
    getfacl $p
    echo "Do you want to cahnge the permissions?(yes/no)"
    read answer1
    if [ "$answer1" = yes ];then
    echo "Enter the owner  permissions"
    read o

    echo "Enter the group  permissions"
    read g

    echo "Enter others  permissions"
    read t
    chmod $o$g$t $p
    getfacl $p
else
        echo "no changes"
    getfacl $p
    fi

else
    touch $p
    echo "File created successfully"
    echo "Do you want to change the permissions?(yes/no)" 
    read answer
    if [ "$answer" = yes ]; then
            echo "enter owner permission"
            read ow

    echo "Enter group  permissions"
    read gp

 echo "Enter  others  permissions"
    read ot
            read $perm
            chmod $ow$gp$ot $p
            getfacl $p
    else
    echo "no changes"
    fi
    getfacl $p
fi


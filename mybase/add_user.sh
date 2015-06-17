# $1 - user id
# $2 - group id
# $3 - user name
groupadd --gid $2 $3

if [ $? -ne 0 ] ; then
  echo "Error creating group with exit code: $?"
fi

useradd --shell /bin/bash \
        --home-dir /home/$3 \
        --uid $1 \
        --gid $2 $3 && \

if [ $? -ne 0 ] ; then
  echo "Error adding user"
  exit 1
fi

echo $3:$3 | chpasswd

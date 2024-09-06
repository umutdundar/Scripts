#find . -name "*" -type 'f' -size -1k -delete
#find . -type f -size -10240c -exec rm -f {} +

find . -type f -size -10240c -exec rm -f {} +
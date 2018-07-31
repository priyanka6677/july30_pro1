
#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating www.nexa_container$i container.."
    sleep 1
    docker run --name www.nexa_container$i -d -it --rm nexa_img2 /bin/bash
    echo "www.nexa_container$i container has been created!"
	echo "=============================="
done

#initialize connection and set baud rate
exec 3<> /dev/cu.usbmodem621
stty -F /dev/cu.usbmodem621 115200
stty -f /dev/cu.usbmodem621 115200
stty -f /dev/cu.usbmodem621 speed


#echo G1 Z-190.00 F500 > /dev/cu.usbmodem621


while read -r line < /dev/cu.usbmodem621; do
  # $line is the line read, do something with it
  echo $statuscode
  statuscode=$line

        if [ "$statuscode" == "ok" ]; then
                echo G1 Y100.00 F500 > /dev/cu.usbmodem621
                echo G1 Y150.00 F500 > /dev/cu.usbmodem621
        elif [ "$statuscode" == "no" ]; then
                break
        fi

done

#define device
dev="/dev/cu.usbmodem621"

#initialize connection and set baud rate
exec 3<> $dev
stty -F $dev 115200
stty -f $dev 115200
stty -f $dev speed


while read -r line < $dev; do
  # $line is the line read, do something with it
  echo $statuscode
  statuscode=$line

        if [ "$statuscode" == "ok" ]; then
		echo G1 Z92.00 F300 > $dev
                echo G1 Z80.00 F300 > $dev
        elif [ "$statuscode" == "no" ]; then
                break
        fi

done

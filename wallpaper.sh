#!/bin/zsh

export TZ=UTC

#${time}
year=`date -v-1H +%Y`
month=`date -v-1H +%m`
day=`date -v-1H +%d`
hour=`date -v-1H +%H`
minutes=`date -v-1H +%M`
mins=${minutes}
time="${hour}${mins:0:1}000"

curl "https://himawari8-dl.nict.go.jp/himawari8/img/D531106/4d/550/${year}/${month}/${day}/${time}_0_0.png" -o 0_0.png
curl "https://himawari8-dl.nict.go.jp/himawari8/img/D531106/4d/550/${year}/${month}/${day}/${time}_1_0.png" -o 1_0.png
curl "https://himawari8-dl.nict.go.jp/himawari8/img/D531106/4d/550/${year}/${month}/${day}/${time}_2_0.png" -o 2_0.png
curl "https://himawari8-dl.nict.go.jp/himawari8/img/D531106/4d/550/${year}/${month}/${day}/${time}_3_0.png" -o 3_0.png

curl "https://himawari8-dl.nict.go.jp/himawari8/img/D531106/4d/550/${year}/${month}/${day}/${time}_0_1.png" -o 0_1.png
curl "https://himawari8-dl.nict.go.jp/himawari8/img/D531106/4d/550/${year}/${month}/${day}/${time}_1_1.png" -o 1_1.png
curl "https://himawari8-dl.nict.go.jp/himawari8/img/D531106/4d/550/${year}/${month}/${day}/${time}_2_1.png" -o 2_1.png
curl "https://himawari8-dl.nict.go.jp/himawari8/img/D531106/4d/550/${year}/${month}/${day}/${time}_3_1.png" -o 3_1.png

curl "https://himawari8-dl.nict.go.jp/himawari8/img/D531106/4d/550/${year}/${month}/${day}/${time}_0_2.png" -o 0_2.png
curl "https://himawari8-dl.nict.go.jp/himawari8/img/D531106/4d/550/${year}/${month}/${day}/${time}_1_2.png" -o 1_2.png
curl "https://himawari8-dl.nict.go.jp/himawari8/img/D531106/4d/550/${year}/${month}/${day}/${time}_2_2.png" -o 2_2.png
curl "https://himawari8-dl.nict.go.jp/himawari8/img/D531106/4d/550/${year}/${month}/${day}/${time}_3_2.png" -o 3_2.png

curl "https://himawari8-dl.nict.go.jp/himawari8/img/D531106/4d/550/${year}/${month}/${day}/${time}_0_3.png" -o 0_3.png
curl "https://himawari8-dl.nict.go.jp/himawari8/img/D531106/4d/550/${year}/${month}/${day}/${time}_1_3.png" -o 1_3.png
curl "https://himawari8-dl.nict.go.jp/himawari8/img/D531106/4d/550/${year}/${month}/${day}/${time}_2_3.png" -o 2_3.png
curl "https://himawari8-dl.nict.go.jp/himawari8/img/D531106/4d/550/${year}/${month}/${day}/${time}_3_3.png" -o 3_3.png

montage [0-3]_0.png [0-3]_1.png [0-3]_2.png [0-3]_3.png -tile 4x4 -geometry +0+0 Earth.png
convert Earth.png -gravity center -background black -extent 4188x2618 Earth-Resized.jpg 

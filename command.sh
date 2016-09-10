docker run -ti --volume=$(pwd):/workspace -u $(id -u):$(id -g) caffe:cpu  bash

python style.py -s ./images/style/starry_night.jpg  -c ./Foto_Tessera.jpg  -g -1 -v -o ./outputs


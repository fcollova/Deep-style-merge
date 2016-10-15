sudo lshw -c video

#Driver 
nvidia-settings

#enable uvm
sudo modprobe nvidia_352_uvm

# CUDA version
nvcc --version


docker build -t caffe:gpu .

docker run -ti --volume=$(pwd):/workspace -u $(id -u):$(id -g) caffe:cpu  bash


#Download the model (-m option) before with script download_model.sh
#CPU
python style.py -s ./images/style/starry_night.jpg -m vgg19  -c ./Foto_Tessera.jpg  -g -1
docker run -ti --volume=$(pwd):/workspace --device /dev/nvidia0:/dev/nvidia0 --device /dev/nvidiactl:/dev/nvidiactl --device /dev/nvidia-uvm:/dev/nvidia-uvm caffe:gpu  bash


#GPU
nvidia-docker run -ti --volume=$(pwd):/workspace caffe:gpu  bash
python style.py -s ./images/style/starry_night.jpg -m vgg19 -c ./albero.jpg  -g 0 







# GT-MOS
Our new UEFI os is based of [Poncho OS](https://github.com/Absurdponcho/PonchoOS)

##  Building
Requriments : Docker, QEMU (Optional)
1) Create Docker image```docker build buildenv -t gtmos-buildenv```
2) Start Docker

Make sure ```%cd%``` or ```$pwd``` is set to this repo's root

* Windows CMD: ```docker run --rm -it -v %cd%:/root/env gtmos-buildenv```
* Mac / Linux: ```docker run --rm -it -v $pwd:/root/env gtmos-buildenv```
3) Build
```
cd gnu-efi
make bootloader
cd ../kernel
```
(First time) : ```make setup```
```
make kernel
make buildimg
```
Exit Docker ```exit```

The built img will be located in ```path/to/repo/root/kernel/GT-MOS.img```

## Running
* With QEMU
If not in kernel folder allready```cd kernel```then
* Windows CMD:```run2.bat``` I think you can just type it in
* Mac / Linux:```make run```


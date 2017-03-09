dir=$(pwd)
clear
echo "\033[32;1m
       ...::|[ \033[31;1mEttercap On Android\033[32;1m ]|::...
"
echo "\n\n"
echo "\033[32;1m[\033[31;1m#\033[32;1m]\033[37;1m Setting Permisions User..."
cd /
mount -o remount,rw /system;
mount -o remount,rw /data;

echo "\033[32;1m[\033[31;1m#\033[32;1m]\033[37;1m Setting Data..."
cd /
cd data/
mkdir ettercap/
cd $dir/
mv share /data/ettercap/
mv bin/* /data/ettercap
echo "\033[32;1m[\033[31;1m#\033[32;1m]\033[37;1m Setting Binary..."
cd /data/ettercap/
mv fak /system/bin
cd /system/bin
rename fak ettercap

echo "\033[32;1m[\033[31;1m#\033[32;1m]\033[37;1m Setting Permisions File..."

cd /data/ettercap/
chmod 777 *
cd /system/bin
chmod 777 ettercap

echo "\033[32;1m
       ...::|[ \033[31;1mInstalling Done\033[32;1m ]|::...\033[0m
"

cd $dir
rm -rf bin

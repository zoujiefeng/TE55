@echo off
echo "  ____        _ _     _ _               ______ ____  _      "
echo " |  _ \      (_) |   | (_)             |  ____|  _ \| |     "
echo " | |_) |_   _ _| | __| |_ _ __   __ _  | |__  | |_) | |     "
echo " |  _ <| | | | | |/ _\` | | '_ \ / _\` | |  __| |  _ <| |   "
echo " | |_) | |_| | | | (_| | | | | | (_| | | |    | |_) | |____ "
echo " |____/ \__,_|_|_|\__,_|_|_| |_|\__, | |_|    |____/|______|"
echo "                                 __/ |                      "
echo "                                |___/                       "

set p=%~dp0

cd .\Trace32\TimeStampGenerator

perl TimeStampGenerator.pl -bsw %*

cd %p%

scons -j%NUMBER_OF_PROCESSORS% fbl

pause
::1.0
@echo off
setlocal enableextensions
setlocal enabledelayedexpansion

::dotnetcheck
:: if dotnet is not downloaded > go to ::downloaddotnet
::depotdownloadercheck


set rootdir=%cd%
cd %temp%
if not exist .Assets (
    mkdir .Assets
)
cd .Assets
curl -s -L "https://raw.githubusercontent.com/Ancientkingg/r6manifest/master/R6Downloader.Bat" --output dontget.rickrolled
set /p first=< dontget.rickrolled
del /f dontget.rickrolled 
cd %rootdir%
set /p second=< R6Downloader.bat
if %second%==%first% (
    goto mainmenu
) else (
    cls
    echo Update found!
    title Update found!
    ping localhost -n 3 >NUL
    cls
    curl -L "https://raw.githubusercontent.com/Ancientkingg/r6manifest/master/R6Downloader.Bat" --output R6Downloader.bat
    ping localhost -n 3 >NUL
    cls
    echo Update completed! Please restart your R6Downloader...
    title Update completed!
    echo.
    echo.
    pause
    exit
)





:mainmenu
cls
MODE CON COLS=103 LINES=13
echo                                    Rainbow Six Siege Downloader
echo                 For any help/feedback join us on our Discord: https://discord.gg/mJKgGQe
echo                                   You need to own a Steam copy!
echo.
echo -------------------------------------------------------------------------------------------------------
echo What would you like to download?    
echo -------------------------------------------------------------------------------------------------------
echo 1 = Entire Game                     
echo 2 = HD Textures                     
echo 3 = Extra Languages                 
echo 4 = Definitely not get rickrolled   
echo -------------------------------------------------------------------------------------------------------
set /p option="Enter Selection:"

if %option%==1 (
    cls
    goto siegemenu
)
if %option%==2 (
    cls
    goto HDtextures
)
if %option%==3 (
    cls
    goto extralocalization
)
if %option%==4 (
    cls
    goto hack
)
if /I %option%==exit (
    exit
)
goto mainmenu





:siegemenu
cls
MODE CON COLS=67 LINES=26
echo -------------------------------------------------------------------
echo Select the version of Rainbow Six Siege you would like to download:
echo -------------------------------------------------------------------
echo.
echo [32m0 = Original Y1S0
echo [31m1 = Black Ice Y1S1 coming soon
echo [31m2 = Dust Line Y1S2-coming soon
echo [32m3 = Skull Rain Y1S3
echo [31m4 = Red Crow Y1S4-coming soon
echo [31m5 = Velvet Shell Y2S1-coming soon
echo [31m6 = Operation Health Y2S2-coming soon
echo [32m7 = Blood Orchid Y2S3
echo [31m8 = White Noise Y2S4-coming soon
echo [32m9 = Chimera Y3S1 (Outbreak)
echo [31m10 = Para Bellum Y3S2-coming soon
echo [31m11 = Grim Sky Y3S3-coming soon
echo [31m12 = Wind Bastion Y3S4-coming soon
echo [32m13 = Burnt Horizon Y4S1 (Rainbow Is Magic)
echo [32m14 = Phantom Sight Y4S2 (Showdown)
echo [31m15 = Ember Rise Y4S3-coming soon
echo [31m16 = Shifting Tides Y4S4-coming soon
echo [31m17 = Void Edge Y5S1-coming soon
echo [31m18 = Steel Wave Y5S2-coming soon
echo [32mback = Return to main menu...[0m
echo.
echo -------------------------------------------------------------------
set /p version="Enter Version:"

if /I %version%==back (
    goto mainmenu
) else (
    set /p username="Enter Steam Username:"
)

if %version%==0 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 8358812283631269928 -username %username% -remember-password -dir "Downloads\Original_Y1S0" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 3893422760579204530 -username %username% -remember-password -dir "Downloads\Original_Y1S0" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==3 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 5819137024728546741 -username %username% -remember-password -dir "Downloads\SkullRain_Y1S3" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 5851804596427790505 -username %username% -remember-password -dir "Downloads\SkullRain_Y1S3" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==7 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 6708129824495912434 -username %username% -remember-password -dir "Downloads\BloodOrchid_Y2S3" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 1613631671988840841 -username %username% -remember-password -dir "Downloads\BloodOrchid_Y2S3" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==9 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 5071357104726974256 -username %username% -remember-password -dir "Downloads\Chimera_Y3S1" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 4701787239566783972 -username %username% -remember-password -dir "Downloads\Chimera_Y3S1" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==13 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 8356277316976403078 -username %username% -remember-password -dir "Downloads\BurntHorizon_Y4S1" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 5935578581006804383 -username %username% -remember-password -dir "Downloads\BurntHorizon_Y4S1" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==14 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 693082837425613508 -username %username% -remember-password -dir "Downloads\PhantomSight_Y4S2" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 5408324128694463720 -username %username% -remember-password -dir "Downloads\PhantomSight_Y4S2" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
goto mainmenu





:HDtextures
cls
MODE CON COLS=67 LINES=26
echo -------------------------------------------------------------------
echo Select the version of Rainbow Six Siege you would like to download:
echo -------------------------------------------------------------------
echo.
echo [32m0 = Original Y1S0
echo [31m1 = Black Ice Y1S1 coming soon
echo [31m2 = Dust Line Y1S2-coming soon
echo [32m3 = Skull Rain Y1S3
echo [31m4 = Red Crow Y1S4-coming soon
echo [31m5 = Velvet Shell Y2S1-coming soon
echo [31m6 = Operation Health Y2S2-coming soon
echo [32m7 = Blood Orchid Y2S3
echo [31m8 = White Noise Y2S4-coming soon
echo [32m9 = Chimera Y3S1 (Outbreak)
echo [31m10 = Para Bellum Y3S2-coming soon
echo [31m11 = Grim Sky Y3S3-coming soon
echo [31m12 = Wind Bastion Y3S4-coming soon
echo [32m13 = Burnt Horizon Y4S1 (Rainbow Is Magic)
echo [32m14 = Phantom Sight Y4S2 (Showdown)
echo [31m15 = Ember Rise Y4S3-coming soon
echo [31m16 = Shifting Tides Y4S4-coming soon
echo [31m17 = Void Edge Y5S1-coming soon
echo [31m18 = Steel Wave Y5S2-coming soon
echo [32mback = Return to main menu...[0m
echo.
echo -------------------------------------------------------------------
set /p version="Enter Version:"

if /I %version%=="back" (
    cls
    goto mainmenu
) else (
    set /p username="Enter Steam Username:"
)

if %version%==0 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 8394183851197739981 -username %username% -remember-password -dir "Downloads\Original_Y1S0" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==3 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 3267970968757091405 -username %username% -remember-password -dir "Downloads\SkullRain_Y1S3" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==7 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 6420469519659049757 -username %username% -remember-password -dir "Downloads\BloodOrchid_Y2S3" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==9 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 1668513364192382097 -username %username% -remember-password -dir "Downloads\Chimera_Y3S1" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==13 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 888629411354320742 -username %username% -remember-password -dir "Downloads\BurntHorizon_Y4S1" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==14 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 4107080515154236795 -username %username% -remember-password -dir "Downloads\PhantomSight_Y4S2" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)





:extralocalization

MODE CON COLS=67 LINES=13
echo -------------------------------------------------------------
echo Which voice line languages you want to download?
echo -------------------------------------------------------------
echo 1 = French
echo 2 = Italian
echo 3 = German
echo 4 = Spanish
echo 5 = Brasilian
echo 6 = Japanese
echo 7 = Russian
echo 0 = Return to main menu.
echo -------------------------------------------------------------
set /p language="Enter language:"

if %language%==0 (
    cls
    goto mainmenu
)

if %language%==1 (
    cls
    set depot=359553
    set manifest=379201990182673961
    echo French is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
if %language%==2 (
    cls
    set depot=359554
    set manifest=7015749936618767871
    echo Italian is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
if %language%==3 (
    cls
    set depot=359555
    set manifest=9103781936104145156
    echo German is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
if %language%==4 (
    cls
    set depot=359556
    set manifest=3323378213398656976
    echo Spanish is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
if %language%==5 (
    cls
    set depot=359557
    set manifest=3124010063296699270
    echo Brasilian is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
if %language%==6 (
    cls
    set depot=377235
    set manifest=5460615762069731497
    echo Japanese is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
if %language%==7 (
    cls
    set depot=377236
    set manifest=3790966697198053253
    echo Russian is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
goto mainmenu





:extraversion
cls
MODE CON COLS=67 LINES=26
echo -------------------------------------------------------------------
echo Please select the version you want to install the voicelines for...
echo -------------------------------------------------------------------
echo.
echo [32m0 = Original Y1S0
echo [31m1 = Black Ice Y1S1 coming soon
echo [31m2 = Dust Line Y1S2-coming soon
echo [32m3 = Skull Rain Y1S3
echo [31m4 = Red Crow Y1S4-coming soon
echo [31m5 = Velvet Shell Y2S1-coming soon
echo [31m6 = Operation Health Y2S2-coming soon
echo [32m7 = Blood Orchid Y2S3
echo [31m8 = White Noise Y2S4-coming soon
echo [32m9 = Chimera Y3S1 (Outbreak)
echo [31m10 = Para Bellum Y3S2-coming soon
echo [31m11 = Grim Sky Y3S3-coming soon
echo [31m12 = Wind Bastion Y3S4-coming soon
echo [32m13 = Burnt Horizon Y4S1 (Rainbow Is Magic)
echo [32m14 = Phantom Sight Y4S2 (Showdown)
echo [31m15 = Ember Rise Y4S3-coming soon
echo [31m16 = Shifting Tides Y4S4-coming soon
echo [31m17 = Void Edge Y5S1-coming soon
echo [31m18 = Steel Wave Y5S2-coming soon
echo [32mback = Return to main menu...[0m
echo.
echo -------------------------------------------------------------------
set /p version="Enter Version:"

if /I %version%==back (
    cls
    goto mainmenu
) else (
    set /p username="Enter Steam Username:"
)

if %version%==0 (
    cls
    set dir=Original_Y1S0
)
if %version%==3 (
    cls
    set dir=SkullRain_Y1S3
)
if %version%==7 (
    cls
    set dir=BloodOrchid_Y2S3
)
if %version%==9 (
    cls
    set dir=Chimera_Y3S1
)
if %version%==13 (
    cls
    set dir=BurntHorizon_Y4S1
)
if %version%==14 (
    cls
    set dir=PhantomSight_Y4S2
    
)

dotnet DepotDownloader.dll -app 359550 -depot %depot% -manifest %manifest% -username %username% -remember-password -dir "Downloads\%dir%_Extra_Languages" -validate -max-servers 15 -max-downloads 10
pause
cls
echo Download complete!
    
move Downloads\%dir%_Extra_Languages\sounddata\pc\*.* Downloads\%dir%\sounddata\pc
rmdir /Q /S %dir%_Extra_Languages





:hack
MODE CON COLS=67 LINES=4
echo -----------------------------------------------------------
echo Are you sure you definitely do not want to get rickrolled?
echo -----------------------------------------------------------
set /p rickroll="Yes or No?"

if /I %rickroll%==yes (
    cls
    start https://www.youtube.com/watch?v=dQw4w9WgXcQ
)
if /I %rickroll%==" yes" (
    cls
    start https://www.youtube.com/watch?v=dQw4w9WgXcQ
)
if /I %rickroll%==no (
    goto mainmenu
)
if /I %rickroll%==" no" (
    goto mainmenu
)

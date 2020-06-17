@echo off

:mainmenu
cls
echo Rainbow Six Siege Downloader - For any help/feedback join us on our Discord: https://discord.gg/mJKgGQe
echo !You need to own a Steam copy!
echo
echo
echo
echo What would you like to download?
echo -----------------------------------------------------------
echo 1 = Entire Game
echo 2 = HD Textures
echo 3 = Extra Languages 
echo 4 = Definitely not get rickrolled
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
goto mainmenu


:siegemenu
cls
echo Select the version of Rainbow Six Siege you would like to download:
echo -----------------------------------------------------------
echo 0 = Original Y1S0
echo 1 = Black Ice Y1S1 (comimg soon)
echo 2 = Dust Line Y1S2 (comimg soon)
echo 3 = Skull Rain Y1S3
echo 4 = Red Crow Y1S4 (comimg soon)
echo 5 = Velvet Shell Y2S1 (comimg soon)
echo 6 = Operation Health Y2S1 (comimg soon)
echo 5 = Velvet Shell Y2S1 (comimg soon)
echo 3 = Blood Orchid 2.3.1.1
echo 4 = Chimera 3.1.0 (Outbreak)
echo 5 = Burnt Horizon 4.1.0 (Rainbow Is Magic)
echo 6 = Phantom Sight 4.2.0 (Showdown)
echo back = Return to main menu.

set /p version="Enter Version:"

if %version%=="back" (
    cls
    goto mainmenu
)

set /p username="Enter Steam Username:"
if %version%==1 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 8358812283631269928 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 3893422760579204530 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
    if %version%==2 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 5819137024728546741 -username %username% -remember-password -dir "Downloads\Y1S3_4.2_SkullRain" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 5851804596427790505 -username %username% -remember-password -dir "Downloads\Y1S3_4.2_SkullRain" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==3 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 6708129824495912434 -username %username% -remember-password -dir "Downloads\Y2S3_2.3.1.1_BloodOrchid" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 1613631671988840841 -username %username% -remember-password -dir "Downloads\Y2S3_2.3.1.1_BloodOrchid" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==4 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 5071357104726974256 -username %username% -remember-password -dir "Downloads\Y3S1_3.1.0_Chimera" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 4701787239566783972 -username %username% -remember-password -dir "Downloads\Y3S1_3.1.0_Chimera" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==5 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 8356277316976403078 -username %username% -remember-password -dir "Downloads\Y4S1_4.1.0_BurntHorizon" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 5935578581006804383 -username %username% -remember-password -dir "Downloads\Y4S1_4.1.0_BurntHorizon" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==6 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 693082837425613508 -username %username% -remember-password -dir "Downloads\Y4S2_4.2.0_PhantomSight" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 5408324128694463720 -username %username% -remember-password -dir "Downloads\Y4S2_4.2.0_PhantomSight" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
goto siegemenu

:HDtextures
echo Which version of Siege are you downloading HD textures for?
echo -----------------------------------------------------------
echo 1 = Vanilla 1.0
echo 2 = Skull Rain 4.2
echo 3 = Blood Orchid 2.3.1.1
echo 4 = Chimera 3.1.0 (Outbreak)
echo 5 = Burnt Horizon 4.1.0 (Rainbow Is Magic)
echo 6 = Phantom Sight 4.2.0 (Showdown)
echo 0 = Return to main menu...
set /p version="Enter Version:"
if %version%==0 (
    cls
    goto mainmenu
)

set /p username="Enter Steam Username:"

if %version%==1 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 8394183851197739981 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==2 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 3267970968757091405 -username %username% -remember-password -dir "Downloads\Y1S3_4.2_SkullRain" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==3 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 6420469519659049757 -username %username% -remember-password -dir "Downloads\Y2S3_2.3.1.1_BloodOrchid" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==4 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 1668513364192382097 -username %username% -remember-password -dir "Downloads\Y3S1_3.1.0_Chimera" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==5 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 888629411354320742 -username %username% -remember-password -dir "Downloads\Y4S1_4.1.0_BurntHorizon" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==6 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 4107080515154236795 -username %username% -remember-password -dir "Downloads\Y4S2_4.2.0_PhantomSight" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)


:extralocalization
echo Which voice line languages you want to download?
echo -----------------------------------------------------------
echo 1 = French
echo 2 = Italian
echo 3 = German
echo 4 = Spanish
echo 5 = Brasilian
echo 6 = Japanese
echo 7 = Russian
echo 0 = Return to main menu.

set /p language="Enter language:"
if %language%==0 (
        cls
        goto mainmenu
)
    
set /p username="Enter Steam Username:"

if %language%==1 (
    cls
    set depot=359553
    echo Language is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
if %language%==2 (
    cls
    set depot=359554
    echo Language is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
if %language%==3 (
    cls
    set depot=359555
    echo Language is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
if %language%==4 (
    cls
    set depot=359556
    echo Language is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
if %language%==5 (
    cls
    set depot=359557
    echo Language is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
if %language%==6 (
    cls
    set depot=377235
    echo Language is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
if %language%==7 (
    cls
    set depot=377236
    echo Language is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
goto mainmenu


:extraversion
echo Which version of Siege are you downloading extra languages for?
echo -----------------------------------------------------------
echo 1 = Vanilla 1.0
echo 2 = Skull Rain 4.2
echo 3 = Blood Orchid 2.3.1.1
echo 4 = Chimera 3.1.0 (outbreak)
echo 5 = Burnt Horizon 4.1.0 (Rainbow Is Magic)
echo 6 = Phantom Sight 4.2.0 (Showdown)
echo 0 = Return to main menu.
set /p version="Enter Version:"
if %version%==0 (
    cls
    goto mainmenu
)

if %version%==1 (
    cls
    set manifest=940838089858119714
    set dir=x
)

if %version%==1 (
    dotnet DepotDownloader.dll -app 359550 -depot %depot% -manifest %manifest% -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla_Extra_Languages" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    move Downloads\Y1S0_Vanilla_Extra_Languages\sounddata\pc\*.* Downloads\Y1S0_Vanilla\sounddata\pc
    rmdir /Q /S Y1S0_Vanilla_Extra_Languages
    echo Install complete!
    goto mainmenu
)
if %version%==2 (
    dotnet DepotDownloader.dll -app 359550 -depot x -manifest %manifest% -username %username% -remember-password -dir "Downloads\Y1S3_4.2_SkullRain_Extra_Languages" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    move Downloads\Y1S3_4.2_SkullRain_Extra_Languages\sounddata\pc\*.* Downloads\Y1S3_4.2_SkullRain\sounddata\pc
    rmdir /Q /S Y1S3_4.2_SkullRain_Extra_Languages
    echo Install complete!
    goto mainmenu
)
if %version%==3 (
    dotnet DepotDownloader.dll -app 359550 -depot x -manifest %manifest% -username %username% -remember-password -dir "Downloads\Y2S3_2.3.1.1_BloodOrchid_Extra_Languages" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    move Downloads\Y2S3_2.3.1.1_BloodOrchid_Extra_Languages\sounddata\pc\*.* Downloads\Y2S3_2.3.1.1_BloodOrchid\sounddata\pc
    rmdir /Q /S Y2S3_2.3.1.1_BloodOrchid_Extra_Languages
    echo Install complete!
    goto mainmenu
)
if %version%==4 (
    dotnet DepotDownloader.dll -app 359550 -depot x -manifest %manifest% -username %username% -remember-password -dir "Downloads\Y3S1_3.1.0_Chimera_Extra_Languages" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    move Downloads\Y3S1_3.1.0_Chimera_Extra_Languages\sounddata\pc\*.* Downloads\Y3S1_3.1.0_Chimera\sounddata\pc
    rmdir /Q /S Y3S1_3.1.0_Chimera_Extra_Languages
    echo Install complete!
    goto mainmenu
)
if %version%==5 (
    dotnet DepotDownloader.dll -app 359550 -depot x -manifest %manifest% -username %username% -remember-password -dir "Downloads\Y4S1_4.1.0_BurntHorizon_Extra_Languages" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    move Downloads\Y4S1_4.1.0_BurntHorizon_Extra_Languages\sounddata\pc\*.* Downloads\Y4S1_4.1.0_BurntHorizon\sounddata\pc
    rmdir /Q /S Y4S1_4.1.0_BurntHorizon_Extra_Languages
    echo Install complete!
    goto mainmenu
)
if %version%==6 (
    dotnet DepotDownloader.dll -app 359550 -depot x -manifest %manifest% -username %username% -remember-password -dir "Downloads\Y4S2_4.2.0_PhantomSight_Extra_Languages" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    move Downloads\Y4S2_4.2.0_PhantomSight_Extra_Languages\sounddata\pc\*.* Downloads\Y4S2_4.2.0_PhantomSight\sounddata\pc
    rmdir /Q /S Y4S2_4.2.0_PhantomSight_Extra_Languages
    echo Install complete!
    goto mainmenu
)
goto extralocalization


:hack
echo Are you sure you definitely do not want to get rickrolled?
echo --------------------------------------------------------
set /p rickroll="Yes or No?"
if %rickroll%==Yes (
    cls
    start https://www.youtube.com/watch?v=dQw4w9WgXcQ
)
if %rickroll%==yes (
    cls
    start https://www.youtube.com/watch?v=dQw4w9WgXcQ
)
if %rickroll%==" yes" (
    cls
    start https://www.youtube.com/watch?v=dQw4w9WgXcQ
)
if %rickroll%==" Yes" (
    cls
    start https://www.youtube.com/watch?v=dQw4w9WgXcQ
)
goto mainmenu
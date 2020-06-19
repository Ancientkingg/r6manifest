::Dev1.0
@echo off
setlocal enableextensions

::dotnetcheck
:: if dotnet is not downloaded > go to ::downloaddotnet
::depotdownloadercheck

set rootdir=%cd%
cd %temp%
if not exist .Assets (
    mkdir .Assets
)
cd .Assets
curl -s -L "https://raw.githubusercontent.com/Ancientkingg/r6manifest/master/R6DownloaderDev.Bat" --output dontget.rickrolled
set /p first=< dontget.rickrolled
del /f dontget.rickrolled 
cd %rootdir%
set /p second=< %~nx0
if %second%==%first% (
    goto mainmenu
) else (
    cls
    echo Update found!
    title Update found!
    ping localhost -n 2 >NUL
    cls
    goto choice
)
:choice
set choice=
echo It is recommended you update to the last version
echo.
set /p choice=An update has been found! Would you like to update now?[Y/N] 
if /I "%choice%"=="Y" goto update
if /I "%choice%"=="N" goto mainmenu

:update
set output=%~nx0
curl -L "https://raw.githubusercontent.com/Ancientkingg/r6manifest/master/R6DownloaderDev.Bat" --output %output%
ping localhost -n 2 >NUL
cls
echo Update completed! Please restart your R6Downloader...
title Update completed!
echo.
echo.
echo Shutting down...
ping localhost -n 2 >NUL
pause
exit



:mainmenu
cls
MODE CON COLS=103 LINES=13
echo                                    Rainbow Six Siege Downloader
echo                 For any help/feedback join us on our Discord: https://discord.gg/FJccJNd
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
title Rainbow Six Siege Downloader - Game Downloads
mode con: cols=67 lines=36
echo Select the version of Rainbow Six Siege you would like to download.
echo -------------------------------------------------------------------
echo [0m1 = Vanilla 1.0
echo.
echo Year 1:
echo [0m1 = [96mBlack Ice (Y1S1)
echo [0m2 = [33mDust Line (Y1S2)
echo [0m3 = [32mSkull Rain 4.2  (Y1S3)
echo [0m4 = [91mRed Crow (Y1S4)[0m
echo.
echo Year 2:
echo [0m5 = [35mVelvet Shell (Y2S1)
echo [0m6 = [94mOperation Health (Y2S2)
echo [0m7 = [91mBlood Orchid 2.3.1.1 (Y2S3)
echo [0m8 = White Noise (Y2S4)[0m
echo.
echo Year 3
echo [0m9 = [93mChimera 3.1.0 (Outbreak) (Y3S1)
echo [0m10 = [92mPara Bellum (Y3S2)
echo [0m11 = Grim Sky (Y3S3)
echo [0m12 = [33mWind Bastion (Y3S4)[0m
echo.
echo Year 4
echo [0m13 = [31mBurnt Horizon 4.1.0 (Rainbow Is Magic) (Y4S1)
echo [0m14 = [34mPhantom Sight 4.2.0 (Showdown) (Y4S2)
echo [0m15 = [32mEmber Rise (Y4S3)
echo [0m16 = [96mShifting Tides (Y4S4)[0m
echo.
echo Year 5
echo [0m17 = [35mVoid Edge (Y5S1)[0m
echo.
echo [0mback = Return to main menu...[0m
echo.
echo -------------------------------------------------------------------
set /p version="Enter Version:"

if /I %version%==back (
    goto mainmenu
) else (
    set /p username="Enter Steam Username:"
)

if %version%==0 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 8358812283631269928 -username %username% -remember-password -dir "Downloads\Y1S0_Original" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 3893422760579204530 -username %username% -remember-password -dir "Downloads\Y1S0_Original" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==1 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 5188997148801516344 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 7932785808040895147 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
goto mainmenu
)
if %version%==2 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 2303064029242396590 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 2206497318678061176 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
goto mainmenu
)
if %version%==3 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 5819137024728546741 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 5851804596427790505 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==4 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 3576607363557872807 -username %username% -remember-password -dir "Downloads\Y1S4_RedCrow" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 8569920171217002292 -username %username% -remember-password -dir "Downloads\Y1S4_RedCrow" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
goto mainmenu
)
if %version%==5 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 2248734317261478192 -username %username% -remember-password -dir "Downloads\Y2S1_VelvetShell" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 8006071763917433748 -username %username% -remember-password -dir "Downloads\Y2S1_VelvetShell" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
goto mainmenu
)
if %version%==6 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 5875987479498297665 -username %username% -remember-password -dir "Downloads\Y2S2_Health" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 708773000306432190 -username %username% -remember-password -dir "Downloads\Y2S2_Health" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
goto mainmenu
)
if %version%==7 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 6708129824495912434 -username %username% -remember-password -dir "Downloads\Y2S3_BloodOrchid" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 1613631671988840841 -username %username% -remember-password -dir "Downloads\Y2S3_BloodOrchid" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==8 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 2066250193950057921 -username %username% -remember-password -dir "Downloads\Y2S4_WhiteNoise" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 2783803489764777627 -username %username% -remember-password -dir "Downloads\Y2S4_WhiteNoise" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
goto mainmenu
)
if %version%==9 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 5071357104726974256 -username %username% -remember-password -dir "Downloads\Y3S1_Chimera" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 4701787239566783972 -username %username% -remember-password -dir "Downloads\Y3S1_Chimera" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==10 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 8312108283310615233 -username %username% -remember-password -dir "Downloads\Y3S2_ParaBellum" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 8765715607275074515 -username %username% -remember-password -dir "Downloads\Y3S2_ParaBellum" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
goto mainmenu
)
if %version%==11 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 7286067994760020542 -username %username% -remember-password -dir "Downloads\Y3S3_GrimSky" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 4133951394045241747 -username %username% -remember-password -dir "Downloads\Y3S3_GrimSky" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
goto mainmenu
)
if %version%==12 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 6502258854032233436 -username %username% -remember-password -dir "Downloads\Y3S4_WindBastion" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 7659555540733025386 -username %username% -remember-password -dir "Downloads\Y3S4_WindBastion" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
goto mainmenu
)
if %version%==13 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 8356277316976403078 -username %username% -remember-password -dir "Downloads\Y4S1_BurntHorizon" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 5935578581006804383 -username %username% -remember-password -dir "Downloads\Y4S1_BurntHorizon" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==14 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 693082837425613508 -username %username% -remember-password -dir "Downloads\Y4S2_PhantomSight" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 5408324128694463720 -username %username% -remember-password -dir "Downloads\Y4S2_PhantomSight" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==15 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 7309481042294838052 -username %username% -remember-password -dir "Downloads\Y4S3_EmberRise" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 5429930338066808153 -username %username% -remember-password -dir "Downloads\Y4S3_EmberRise" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
goto mainmenu
)
if %version%==16 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 299124516841461614 -username %username% -remember-password -dir "Downloads\Y4S4_ShiftingTides" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 1842268638395240106 -username %username% -remember-password -dir "Downloads\Y4S4_ShiftingTides" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
goto mainmenu
)
if %version%==17 (
    dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 8007091753837589034 -username %username% -remember-password -dir "Downloads\Y5S1_VoidEdge" -validate -max-servers 15 -max-downloads 10
    dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 2810676266503656332 -username %username% -remember-password -dir "Downloads\Y5S1_VoidEdge" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
goto mainmenu
)
goto mainmenu





:HDtextures
cls
mode con: cols=59 lines=22
title  Rainbow Six Siege Downloader - 4k Textures Downloads
echo Which version of Siege are you downloading 4K textures for?
echo -----------------------------------------------------------
echo 0 = Vanilla 1.0
echo 1 = Black Ice
echo 2 = Dust Line
echo 3 = Skull Rain 4.2
echo 4 = Red Crow
echo 5 = Velvet Shell
echo 6 = Operation Health
echo 7 = Blood Orchid 2.3.1.1
echo 8 = White Noise
echo 9 = Chimera 3.1.0 (outbreak)
echo 10 = Para Bellum
echo 11 = Grim Sky
echo 12 = Wind Bastion
echo 13 = Burnt Horizon 4.1.0 (Rainbow Is Magic)
echo 14 = Phantom Sight 4.2.0 (Showdown)
echo 15 = Ember Rise
echo 16 = Shifting Tides
echo 17 = Void Edge
echo back = Return to main menu.
set /p version="Enter Version:"

if /I %version%==back (
    goto mainmenu
) else (
    set /p username="Enter Steam Username:"
)

if %version%==0 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 8394183851197739981 -username %username% -remember-password -dir "Downloads\Y1S0_Original" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==1 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 3756048967966286899 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
goto mainmenu
)   
if %version%==2 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 1338949402410764888 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
goto mainmenu
)
if %version%==3 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 3267970968757091405 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==4 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 1825939060444887403 -username %username% -remember-password -dir "Downloads\Y1S4_RedCrow" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==5 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 3196596628759979362 -username %username% -remember-password -dir "Downloads\Y2S1_VelvetShell" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==6 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 7497579858536910279 -username %username% -remember-password -dir "Downloads\Y2S2_Health" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==7 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 6420469519659049757 -username %username% -remember-password -dir "Downloads\Y2S3_BloodOrchid" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==8 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 1118649577165385479 -username %username% -remember-password -dir "Downloads\Y2S4_WhiteNoise" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==9 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 1668513364192382097 -username %username% -remember-password -dir "Downloads\Y3S1_Chimera" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==10 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 204186978012641075 -username %username% -remember-password -dir "Downloads\Y3S2_ParaBellum" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==11 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 3378966402050009606 -username %username% -remember-password -dir "Downloads\Y3S3_GrimSky" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==12 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 2243348760021617592 -username %username% -remember-password -dir "Downloads\Y3S4_WindBastion" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==13 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 888629411354320742 -username %username% -remember-password -dir "Downloads\Y4S1_BurntHorizon" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==14 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 4107080515154236795 -username %username% -remember-password -dir "Downloads\Y4S2_PhantomSight" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==15 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 8340682081776225833 -username %username% -remember-password -dir "Downloads\Y4S3_EmberRise" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==16 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 6048763664997452513 -username %username% -remember-password -dir "Downloads\Y4S4_ShiftingTides" -validate -max-servers 15 -max-downloads 10
    pause
    cls
    echo Download complete!
    goto mainmenu
)
if %version%==17 (
    dotnet DepotDownloader.dll -app 359550 -depot 377239 -manifest 2194493692563107142 -username %username% -remember-password -dir "Downloads\Y5S1_VoidEdge" -validate -max-servers 15 -max-downloads 10
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
    echo French is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
if %language%==2 (
    cls
    set depot=359554
    echo Italian is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
if %language%==3 (
    cls
    set depot=359555
    echo German is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
if %language%==4 (
    cls
    set depot=359556
    echo Spanish is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
if %language%==5 (
    cls
    set depot=359557
    echo Brasilian is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
if %language%==6 (
    cls
    set depot=377235
    echo Japanese is selected!
    ping localhost -n 2 >NUL
    goto extraversion
)
if %language%==7 (
    cls
    set depot=377236
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
echo 0 = Vanilla 1.0
echo 1 = Black Ice
echo 2 = Dust Line
echo 3 = Skull Rain 4.2
echo 4 = Red Crow
echo 5 = Velvet Shell
echo 6 = Operation Health
echo 7 = Blood Orchid 2.3.1.1
echo 8 = White Noise
echo 9 = Chimera 3.1.0 (outbreak)
echo 10 = Para Bellum
echo 11 = Grim Sky
echo 12 = Wind Bastion
echo 13 = Burnt Horizon 4.1.0 (Rainbow Is Magic)
echo 14 = Phantom Sight 4.2.0 (Showdown)
echo 15 = Ember Rise
echo 16 = Shifting Tides
echo 17 = Void Edge
echo.
echo -------------------------------------------------------------------
set /p version="Enter Version:"

if /I %version%==back (
    cls
    goto mainmenu
) 

if %version%==0 (
    cls
    set dir=Y1S0_Original
    if %depot%==359553 (
        set manifest=940838089858119714
    )
    if %depot%==359554 (
        set manifest=7179158265062294015
    )
    if %depot%==359555 (
        set manifest=3953006809848583127
    )
    if %depot%==359556 (
        set manifest=6248979332984503061
    )
    if %depot%==359557 (
        set manifest=4246528818872796970
    )
     if %depot%==377235 (
        set manifest=3426628477659109421
    )
     if %depot%==377236 (
        set manifest=4326401341058506434
    )
    echo Y1S0 is selected!
    ping localhost -n 2 >NUL
)
if %version%==1 (
    cls
    set dir=Y1S1_BlackIce
    goto notsupported
    if %depot%==359553 (
        set manifest=
    )
    if %depot%==359554 (
        set manifest=
    )
    if %depot%==359555 (
        set manifest=
    )
    if %depot%==359556 (
        set manifest=
    )
    if %depot%==359557 (
        set manifest=
    )
     if %depot%==377235 (
        set manifest=
    )
     if %depot%==377236 (
        set manifest=
    )
    echo Y1S1 BlackIce is selected!
    ping localhost -n 2 >NUL
)
if %version%==2 (
    cls
    set dir=Y1S2_DustLine
    goto notsupported
    if %depot%==359553 (
        set manifest=
    )
    if %depot%==359554 (
        set manifest=
    )
    if %depot%==359555 (
        set manifest=
    )
    if %depot%==359556 (
        set manifest=
    )
    if %depot%==359557 (
        set manifest=
    )
     if %depot%==377235 (
        set manifest=
    )
     if %depot%==377236 (
        set manifest=
    )
    echo Y1S2 Dustline is selected!
    ping localhost -n 2 >NUL
)
if %version%==3 (
    cls
    set dir=Y1S3_SkullRain
    if %depot%==359553 (
        set manifest=5132022816747475711
    )
    if %depot%==359554 (
        set manifest=1819965373025810009
    )
    if %depot%==359555 (
        set manifest=1926652807113950777
    )
    if %depot%==359556 (
        set manifest=3102063947541599011
    )
    if %depot%==359557 (
        set manifest=1002387473375422601
    )
     if %depot%==377235 (
        set manifest=4940468394032132183
    )
     if %depot%==377236 (
        set manifest=792795160700208918
    )
    echo Y1S3 Skull Rain is selected!
    ping localhost -n 2 >NUL
)
if %version%==4 (
    cls
    set dir=Y1S4_RedCrow
    goto notsupported
    if %depot%==359553 (
        set manifest=
    )
    if %depot%==359554 (
        set manifest=
    )
    if %depot%==359555 (
        set manifest=
    )
    if %depot%==359556 (
        set manifest=
    )
    if %depot%==359557 (
        set manifest=
    )
     if %depot%==377235 (
        set manifest=
    )
     if %depot%==377236 (
        set manifest=
    )
    echo Y1S4 Red Crow is selected!
    ping localhost -n 2 >NUL
)
if %version%==5 (
    cls
    set dir=Y2S1_VelvetShell
    goto notsupported
    if %depot%==359553 (
        set manifest=
    )
    if %depot%==359554 (
        set manifest=
    )
    if %depot%==359555 (
        set manifest=
    )
    if %depot%==359556 (
        set manifest=
    )
    if %depot%==359557 (
        set manifest=
    )
     if %depot%==377235 (
        set manifest=
    )
     if %depot%==377236 (
        set manifest=
    )
    echo Y2S1 Velvet Shell is selected!
    ping localhost -n 2 >NUL
)
if %version%==6 (
    cls
    set dir=Y2S2_Health
    goto notsupported
    if %depot%==359553 (
        set manifest=
    )
    if %depot%==359554 (
        set manifest=
    )
    if %depot%==359555 (
        set manifest=
    )
    if %depot%==359556 (
        set manifest=
    )
    if %depot%==359557 (
        set manifest=
    )
     if %depot%==377235 (
        set manifest=
    )
     if %depot%==377236 (
        set manifest=
    )
    echo Y2S2 Health is selected!
    ping localhost -n 2 >NUL
)
if %version%==7 (
    cls
    set dir=Y2S3_BloodOrchid
    if %depot%==359553 (
        set manifest=838721240709370593
    )
    if %depot%==359554 (
        set manifest=517536193576958217
    )
    if %depot%==359555 (
        set manifest=3953006809848583127
    )
    if %depot%==359556 (
        set manifest=5021367039292610416
    )
    if %depot%==359557 (
        set manifest=8777677445681226676
    )
     if %depot%==377235 (
        set manifest=1264611426492480643
    )
     if %depot%==377236 (
        set manifest=4326401341058506434
    )
    echo Y2S3 Blood Orchid is selected!
    ping localhost -n 2 >NUL
)
if %version%==8 (
    cls
    set dir=Y2S4_WhiteNoise
    goto notsupported
    if %depot%==359553 (
        set manifest=
    )
    if %depot%==359554 (
        set manifest=
    )
    if %depot%==359555 (
        set manifest=
    )
    if %depot%==359556 (
        set manifest=
    )
    if %depot%==359557 (
        set manifest=
    )
     if %depot%==377235 (
        set manifest=
    )
     if %depot%==377236 (
        set manifest=
    )
    echo Y2S4 White Noise is selected!
    ping localhost -n 2 >NUL
)
if %version%==9 (
    cls
    set dir=Y3S1_Chimera
    goto notsupported
    if %depot%==359553 (
        set manifest=6830763708591031513
    )
    if %depot%==359554 (
        set manifest=8951270584274959688
    )
    if %depot%==359555 (
        set manifest=365667853833643908
    )
    if %depot%==359556 (
        set manifest=723936785330189072
    )
    if %depot%==359557 (
        set manifest=4967060442376701942
    )
     if %depot%==377235 (
        set manifest=8184994692095456862
    )
     if %depot%==377236 (
        set manifest=5994322749665877802
    )
    echo Y3S1 Chimera is selected!
    ping localhost -n 2 >NUL
)
if %version%==10 (
    cls
    set dir=Y3S2_ParaBellum
    goto notsupported
    if %depot%==359553 (
        set manifest=
    )
    if %depot%==359554 (
        set manifest=
    )
    if %depot%==359555 (
        set manifest=
    )
    if %depot%==359556 (
        set manifest=
    )
    if %depot%==359557 (
        set manifest=
    )
     if %depot%==377235 (
        set manifest=
    )
     if %depot%==377236 (
        set manifest=
    )
    echo Y3S2 is selected!
    ping localhost -n 2 >NUL
)
if %version%==11 (
    cls
    set dir=Y3S3_GrimSky
    goto notsupported
    if %depot%==359553 (
        set manifest=
    )
    if %depot%==359554 (
        set manifest=
    )
    if %depot%==359555 (
        set manifest=
    )
    if %depot%==359556 (
        set manifest=
    )
    if %depot%==359557 (
        set manifest=
    )
     if %depot%==377235 (
        set manifest=
    )
     if %depot%==377236 (
        set manifest=
    )
    echo Y3S3 Grim Sky is selected!
    ping localhost -n 2 >NUL
)
if %version%==12 (
    cls
    set dir=Y3S4_WindBastion
    goto notsupported
    if %depot%==359553 (
        if %depot%==359553 (
        set manifest=
    )
    if %depot%==359554 (
        set manifest=
    )
    if %depot%==359555 (
        set manifest=
    )
    if %depot%==359556 (
        set manifest=
    )
    if %depot%==359557 (
        set manifest=
    )
     if %depot%==377235 (
        set manifest=
    )
     if %depot%==377236 (
        set manifest=
    )
    )
    if %depot%==359554 (
        if %depot%==359553 (
        set manifest=
    )
    if %depot%==359554 (
        set manifest=
    )
    if %depot%==359555 (
        set manifest=
    )
    if %depot%==359556 (
        set manifest=
    )
    if %depot%==359557 (
        set manifest=
    )
     if %depot%==377235 (
        set manifest=
    )
     if %depot%==377236 (
        set manifest=
    )
    )
    if %depot%==359555 (
        set manifest=
    )
    if %depot%==359556 (
        set manifest=
    )
    if %depot%==359557 (
        set manifest=
    )
     if %depot%==377235 (
        set manifest=
    )
     if %depot%==377236 (
        set manifest=
    )
    echo Y3S4 Wind Bastion is selected!
    ping localhost -n 2 >NUL
)
if %version%==13 (
    cls
    set dir=Y4S1_BurntHorizon
    if %depot%==359553 (
        set manifest=2489165098014835664
    )
    if %depot%==359554 (
        set manifest=5912470135426316642
    )
    if %depot%==359555 (
        set manifest=6166102473910342218
    )
    if %depot%==359556 (
        set manifest=8980928302668128431
    )
    if %depot%==359557 (
        set manifest=5742909617569886590
    )
     if %depot%==377235 (
        set manifest=6205462284383635854
    )
     if %depot%==377236 (
        set manifest=5305534200661405563
    )
    echo Y4S1 Burnt Horizon is selected!
    ping localhost -n 2 >NUL
)
if %version%==14 (
    cls
    set dir=Y4S2_PhantomSight
    if %depot%==359553 (
        set manifest=8209966773310799535
    )
    if %depot%==359554 (
        set manifest=5551310338808720316
    )
    if %depot%==359555 (
        set manifest=2945239480726569964
    )
    if %depot%==359556 (
        set manifest=3119251800260595817
    )
    if %depot%==359557 (
        set manifest=2060894578496472402
    )
     if %depot%==377235 (
        set manifest=735237222551525964
    )
     if %depot%==377236 (
        set manifest=8063779007427415388
    )
    echo Y4S2 Phantom Sight is selected!
    ping localhost -n 2 >NUL
    
)
if %version%==15 (
    cls
    set dir=Y4S3_EmberRise
    goto notsupported
    if %depot%==359553 (
        set manifest=
    )
    if %depot%==359554 (
        set manifest=
    )
    if %depot%==359555 (
        set manifest=
    )
    if %depot%==359556 (
        set manifest=
    )
    if %depot%==359557 (
        set manifest=
    )
     if %depot%==377235 (
        set manifest=
    )
     if %depot%==377236 (
        set manifest=
    )
    echo Y4S3 Ember Rise is selected!
    ping localhost -n 2 >NUL
)
if %version%==16 (
    cls
    set dir=Y4S4_ShiftingTides
    goto notsupported
    if %depot%==359553 (
        set manifest=
    )
    if %depot%==359554 (
        set manifest=
    )
    if %depot%==359555 (
        set manifest=
    )
    if %depot%==359556 (
        set manifest=
    )
    if %depot%==359557 (
        set manifest=
    )
     if %depot%==377235 (
        set manifest=
    )
     if %depot%==377236 (
        set manifest=
    )
    echo Y4S4 Shifting Tides is selected!
    ping localhost -n 2 >NUL
)
if %version%==17 (
    cls
    set dir=Y5S1_VoidEdge
    if %depot%==359553 (
        set manifest=
    )
    if %depot%==359554 (
        set manifest=
    )
    if %depot%==359555 (
        set manifest=
    )
    if %depot%==359556 (
        set manifest=
    )
    if %depot%==359557 (
        set manifest=
    )
     if %depot%==377235 (
        set manifest=
    )
     if %depot%==377236 (
        set manifest=
    )
    echo Y5S1 Void Edge is selected!
    ping localhost -n 2 >NUL
)

cls
set /p username="Enter Steam Username:"
dotnet DepotDownloader.dll -app 359550 -depot %depot% -manifest %manifest% -username %username% -remember-password -dir "Downloads\%dir%_Extra_Languages" -validate -max-servers 15 -max-downloads 10
pause
cls
echo Download complete!
    
move Downloads\%dir%_Extra_Languages\sounddata\pc\*.* Downloads\%dir%\sounddata\pc
rmdir /Q /S Downloads\%dir%_Extra_Languages
goto extralocalization


:notsupported
cls
MODE CON COLS=80 LINES=15
echo.
echo.
echo Unfortunately %dir% has not been added yet!
echo "       ,-,--.    _,.---._                                              "
echo "     ,-.'-  _\ ,-.' , -  `.    .-.,.---.    .-.,.---.   ,--.-.  .-,--. "
echo "    /==/_ ,_.'/==/_,  ,  - \  /==/  `   \  /==/  `   \ /==/- / /=/_ /  "
echo "    \==\  \  |==|   .=.     ||==|-, .=., ||==|-, .=., |\==\, \/=/. /   "
echo "     \==\ -\ |==|_ : ;=:  - ||==|   '='  /|==|   '='  / \==\  \/ -/    "
echo "     _\==\ ,\|==| , '='     ||==|- ,   .' |==|- ,   .'   |==|  ,_/     "
echo "    /==/\/ _ |\==\ -    ,_ / |==|_  . ,'. |==|_  . ,'.   \==\-, /      "
echo "    \==\ - , / '.='. -   .'  /==/  /\ ,  )/==/  /\ ,  )  /==/._/       "
echo "     `--`---'    `--`--''    `--`-`--`--' `--`-`--`--'   `--`-`        "

pause
goto mainmenu


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

@echo off
chcp 65001
rem Impostato le variabili iniziali
set TempCamIP1=110
set RegularCamIP1=10
set Subnet=XXX
Set NetworkIP=10.0.
set TempPass=Aa142358
Set RegularPass=QwErTy132465
Set EmailPassword=qwerty123456
Set MTU=1422
set startworkday=08:00
set endworkday=20:00
set FTPLogin=-
set FTPPass=-
set MashineName=-
set ShowTitleName=-
set FTPADRESS=10.0.0.9
set PingAdress=10.0.0.10
set TempDirectory=C:\Temp
set 1NVRIP=10.0.0.10
set NVRLogin=admin
set NVRPassword=admin
set passwordshop1=UctJBDMBEAwkCu
set NameShop1=XXXXXXXXXXXXX
set CyrrilicNameShop1=Nome
set CyrrilicNameShop255=Nome
rem Non chiediamo nulla di seguito
set GWCamFTP=
set GWCamPhone=
set GWCamEmail=
set GWCamPIR=

:START-MENU
CLS
color 02
echo                   "@@@$@@@@$$$@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@$@@@$$@@@@@@@"
echo                   "@@#=:.       :-=*@@@=::::*@*::::::::::::::::*@=:::::::::::::=@@@@#=-:      .:=*@"
echo                   "@=             :#@@@-    +@+                +@-             -@@#:             .*"
echo                   "@-    -$@@@$#*+@@@@@-    +@@$$$$$=    -$$$$$@@-    *$$$$$$$$@@#     -*$$$$#=-*@@"
echo                   "@=        ::-=+*@@@@-    +@@@@@@@+    -@@@@@@@-             +@=    :@@@@@@@@@@@@"
echo                   "@@#+-:.         .*@@-    +@@@@@@@+    -@@@@@@@-             +@=    :@@@@@@@@@@@@"
echo                   "@@=*#@@@@@$#-    -@@-    +@@@@@@@+    -@@@@@@@-    *@@@@@@@@@@*     =$@@@@$*=*@@"
echo                   "+.     ::::.     *@@-    +@@@@@@@+    -@@@@@@@-             -@@*.             .*"
echo                   "$*=::        .:=$@@@-    +@@@@@@@+    -@@@@@@@-             -@@@@*-:.      .:=#@"
echo                   "@@@$@@@@$$$@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@$@@@$$@@@@@@@"
echo      ************************************************************************************************************
echo                                             DAHUA HTTP API CONFIGURATOR\CONTROLER
echo      ************************************************************************************************************
echo                                     Menu di avvio per la selezione della modalità operativa. 
echo      ************************************************************************************************************
echo      1 - Modalità impostazioni della fotocamera                              Coded by: Giuseppe Turturro
echo                                                                              E-mail:   info.g.turturro@gmail.com
echo      ------------------------------------------------------------------------------------------------------------ 
echo. 
echo. 
echo. 
echo.
echo. 
echo. 
echo. 
echo. 
echo.
echo.
echo      p - Esci
CHOICE /N /C 1p
if %errorlevel%==1 GoTO MENU-0
if %errorlevel%==2 GoTO DelandExit




:MENU-0
CLS
rem colore rosso
color 4F 
echo      ************************************************************************************************************
echo                                                DAHUA HTTP API CONFIGURATOR
echo      ************************************************************************************************************
echo                                                      menu principale. 
echo      ************************************************************************************************************
echo.
echo      0 - Cancella tutte le variabili.
echo      1 - Imposta una password temporanea                                   Task - "%TempPass%"
echo      2 - Imposta una password permanente                                   Task - "%RegularPass%"
echo      3 - Imposta MTU                                                       Task - "%MTU%"
echo      4 - Imposta la rete                                                   Dato  - "%NetworkIP%%Subnet%.0"
echo. 
echo      -----------------------------------------------------------------------------------------------------------
echo.
echo      a - Specifica la sottorete                                            Dato - "%Subnet%"
echo      s - Specificare il nome della macchina                                Dato - "%MashineName%"
echo      d - Imposta il nome del title                                         Dato - "%ShowTitleName%"
echo      f - Impostare login e password per FTP                                Login:%FTPLogin%
echo                                                                            Password:%FTPPass%
echo.
echo      g - Impostare la data dell'operazione                                 Inizio: %startworkday%
echo                                                                            Fine:  %endworkday%
echo.
echo      -----------------------------------------------------------------------------------------------------------
echo      5 - Regola la fotocamera %NetworkIP%%Subnet%.%TempCamIP1%   
echo      6 - Cambio temporaneo IP
echo      7 - Modificare l'IP che verrà assegnato
echo.
echo      9 - TORNA AL MENU INIZIALE  (Configurazione telecamera/Gestione NVR)
echo      p - Esci
CHOICE /N /C 0123asdfg45678p
if %errorlevel%==1 GoTO ClearVAR
if %errorlevel%==2 GoTo SetTempPass
if %errorlevel%==3 GoTO SetRegularPass
if %errorlevel%==4 GoTo SetMTU
if %errorlevel%==5 GoTO SetSubnet
if %errorlevel%==6 GoTo SetMashineName
if %errorlevel%==7 GoTO SetTitleName
if %errorlevel%==8 GoTo SetFTPCredential
if %errorlevel%==9 GoTo SetSchedule
if %errorlevel%==10 GoTO SetNetworkIP
if %errorlevel%==11 GoTo ConfigGWCam
if %errorlevel%==12 GoTo SetTempCamIP1
if %errorlevel%==13 GoTo SetRegularCamIP1
if %errorlevel%==14 GoTo START-MENU
if %errorlevel%==15 GoTo DelandExit



:SetNetworkIP
cls
color 1F
echo      ************************************************************************************************************
echo                                                DAHUA HTTP API CONFIGURATOR
echo      ************************************************************************************************************
echo                                              Modifica dell'indirizzo di rete
echo      ************************************************************************************************************
echo      Inserisci l'indirizzo della rete con cui devi lavorare. Ma inserisci solo i primi 2 caratteri esadecimali 
echo      dell'indirizzo. Il terzo esattetto è impostato separatamente. Il parametro B è la sottorete. 
echo      Il punto alla fine è obbligatorio! XXX.XXX.
echo      Esempio: 192.168. o 10.0. o 172.16.  
echo.
echo.
echo      Attuale Dato di rete: %NetworkIP%
echo      Indirizzo della 1 camera: %NetworkIP%%Subnet%.%TempCamIP1%
echo.
echo.
echo.
set /p NetworkIP=Inserisci l'indirizzo di rete:
GoTO MENU-0




:SetTempCamIP1
cls
color 1F
echo      ************************************************************************************************************
echo                                                DAHUA HTTP API CONFIGURATOR
echo      ************************************************************************************************************
echo                                  Modifica dell'indirizzo temporaneo della telecamera
echo      ************************************************************************************************************
echo      Inserire l'indirizzo attualmente impostato sulla telecamera. Questo indirizzo verrà utilizzato per tutti 
echo      i comandi presenti in questo programma.
echo      Esempio: 110 o 2 o 254
echo.
echo.
echo      Attuale identificativo della telecamera: %TempCamIP1%
echo      Indirizzo della telecamera: %NetworkIP%%Subnet%.%TempCamIP1%
echo.
echo.
echo.
set /p TempCamIP1=Immettere l'indirizzo della telecamera (3 cifre):
GoTO MENU-0



:SetRegularCamIP1
cls
color 1F
echo      ************************************************************************************************************
echo                                                DAHUA HTTP API CONFIGURATOR
echo      ************************************************************************************************************
echo                                Modifica dell'indirizzo permanente della telecamera
echo      ************************************************************************************************************
echo      Immettere l'indirizzo che verrà impostato sulla telecamera dopo aver chiamato il comando appropriato. 
echo      Questo indirizzo verrà utilizzato per il comando che modificherà l'indirizzo IP da temporaneo a permanente.
echo.
echo      Esempio: 10 o 2 o 254
echo.
echo.
echo      Attuale identificativo della camera: %RegularCamIP1%
echo      L'indirizzo completo della telecamera: %NetworkIP%%Subnet%.%RegularCamIP1%
echo.
echo.
echo.
set /p RegularCamIP1=Immettere l'indirizzo della telecamera (3 cifre):
GoTO MENU-0


:ClearVAR
set Subnet=XXX
Set NetworkIP=10.0.
set TempPass=Aa142358
Set RegularPass=Tvvf14235867
Set MTU=1422
set startworkday=08:00
set endworkday=20:00
set FTPLogin=-
set FTPPass=-
set MashineName=-
set ShowTitleName=-
set GWCamFTP=
set GWCamPhone=
set GWCamEmail=
set GWCamPIR=
set TempCamIP1=109
set RegularCamIP1=10
set PingAdress=10.0.0.10
GoTO MENU-0


:SetTempPass
cls
color 1F
echo      ************************************************************************************************************
echo                                                DAHUA HTTP API CONFIGURATOR
echo      ************************************************************************************************************
echo                                                   Password temporanea. 
echo      ************************************************************************************************************
echo      Immettere la password con cui verranno eseguiti tutti i comandi.
echo      Questa password era Task durante l'inizializzazione iniziale della telecamera nel programma IPConfig
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p TempPass=Inserisci la password:
GoTO MENU-0


:SetRegularPass
cls
color 1F
echo      ************************************************************************************************************
echo                                                DAHUA HTTP API CONFIGURATOR
echo      ************************************************************************************************************
echo                                                    Password permanente.
echo      ************************************************************************************************************
echo      Inserire la password che verrà impostata sulla telecamera al termine delle impostazioni.
echo.   
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p RegularPass=Password permanente:
GoTO MENU-0


:SetMTU
cls
color 1F
echo      ************************************************************************************************************
echo                                                DAHUA HTTP API CONFIGURATOR
echo      ************************************************************************************************************
echo                                                         Cambia MTU 
echo      ************************************************************************************************************
echo      Immettere la dimensione massima del pacchetto senza frammentazione "MTU"
echo      Quindi selezionare:
echo					0 - Imposta MTU senza controllare
echo					1 - Verifica con PING
echo      Se il controllo non va a buon fine, il programma richiederà di inserire nuovamente il valore MTU.
echo      È necessario immettere il valore seguente. 
echo      Non appena il valore è corretto, il programma andrà al menu principale
echo.
echo.
echo.
echo.
set /p MTU=Inserisci l'MTU:
CHOICE /N /T 10 /C 01 /D 0 /M "Continua - 0, Verifica - 1"
if %errorlevel%==1 GoTo MENU-0
ping %PingAdress% -t -l %MTU% -f -n 1
if %errorlevel%==0 GoTo MENU-0
if %errorlevel%==1 GoTo MTUtoBig
:MTUtoBig
cls
echo      ************************************************************************************************************
echo                                                DAHUA HTTP API CONFIGURATOR
echo      ************************************************************************************************************
echo                                            !!!Il valore MTU è troppo grande!!!
echo      ************************************************************************************************************
echo      Specificare un valore MTU inferiore
echo.	  
echo.	  
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p MTU=Inserisci l'MTU:
ping %PingAdress% -t -l %MTU% -f -n 1
if %errorlevel%==0 GoTo MENU-0
if %errorlevel%==1 GoTo MTUtoBig




:SetSubnet
cls
color 1F
echo      ************************************************************************************************************
echo                                                DAHUA HTTP API CONFIGURATOR
echo      ************************************************************************************************************
echo                                                        Sottorete
echo      ************************************************************************************************************
echo      Immettere l'indirizzo della sottorete. Questo è il terzo esatetto del tuo indirizzo IP locale.
echo      Di seguito è riportato l'indirizzo del gateway. Specificare la sottorete in base all'indirizzo del gateway.
    ipconfig | findstr /i "Gateway"
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p Subnet=Inserisci la sottorete:
set subnetset=YES
set /a Subnet=%Subnet%
Set FTPPass=%passwordshop1%
Set FTPLogin=%NameShop1%
Set MashineName=%NameShop1%
Set ShowTitleName=%CyrrilicNameShop1%
GoTO MENU-0



:SetMashineName
cls
color 1F
echo      ************************************************************************************************************
echo                                                DAHUA HTTP API CONFIGURATOR
echo      ************************************************************************************************************
echo                                                   Nome della telecamera
echo      ************************************************************************************************************
echo      Inserisci il nome.
echo      Ad esempio: Stryi_pl_Rynok_36
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p MashineName=Inserisci il nome:
GoTO MENU-0


:SetTitleName
cls
color 1F
echo      ************************************************************************************************************
echo                                                DAHUA HTTP API CONFIGURATOR
echo      ************************************************************************************************************
echo                                                         Title 
echo      ************************************************************************************************************
echo      Inserisci il nome premi "Invio".
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p ShowTitleName=Inserisci il titolo:
echo %ShowTitleName%|clip
GoTO MENU-0

:SetFTPCredential
cls
color 1F
echo      ************************************************************************************************************
echo                                                DAHUA HTTP API CONFIGURATOR
echo      ************************************************************************************************************
echo                                                 Login e password per FTP
echo      ************************************************************************************************************
echo      Immettere il login e la password che verranno utilizzati per connettersi all'FTP.
echo      Copiali dal documento che hai appena aperto
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
start FTP.txt
set /p FTPLogin=Inserisci il tuo login:
set /p FTPPass=Inserisci la password:
GoTO MENU-0

:SetSchedule
cls
color 1F
echo      ************************************************************************************************************
echo                                                DAHUA HTTP API CONFIGURATOR
echo      ************************************************************************************************************
echo                                                    Modalità schedule
echo      ************************************************************************************************************
echo      Inserisci gli orari nel formato HH:mm
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p startworkday=Inserire l'orario di inizio:
set /p endworkday=Inserisci l'orario di fine:
GoTO MENU-0

:ConfigGWCam
cls
color b0
set GWCamFTP=
set GWCamPhone=
echo      ************************************************************************************************************
echo                                                DAHUA HTTP API CONFIGURATOR
echo      ************************************************************************************************************
echo                                           Camera settings menu %NetworkIP%%Subnet%.%TempCamIP1%
echo      ************************************************************************************************************
if not defined subnetset echo Nessun Dato di sottorete. Ulteriori azioni senza questo parametro sono inutili.
if not defined subnetset Choice /N /T 10 /D N /M "Dopo 10 secondi si apriranno le impostazioni della sottorete"
if not defined subnetset GoTo SetSubnet
echo      0 - Regolazione automatica
echo      1 - Cambia solo indirizzo IP e password.
echo      2 - Modifica individualmente ogni parametro specifico
echo      3 - Informazioni dalla MicroSD
echo      4 - Riavvia la fotocamera
echo      5 - Fai uno screenshot
echo      p - Torna al menu principale
echo.
echo.
echo.
echo.
CHOICE /N /C 012p345 /M "Seleziona l'azione sopra descritta ˄ ˄ ˄ ˄ ˄ ˄ ˄"
if %errorlevel%==1 GoTO GWCamAutoConfigure
if %errorlevel%==2 GoTo GWCamIP&PASSConfigure
if %errorlevel%==3 GoTo GWCamSinglyConfigurefirst
if %errorlevel%==4 GoTo MENU-0
if %errorlevel%==5 GoTo GWCamGetMicroSD
if %errorlevel%==6 GoTo GWCamReboot
if %errorlevel%==7 GoTo GWGetSnapshotandSendfromEmail


:GWCamGetMicroSD
Echo     Verifica presenza MicroSD
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/storageDevice.cgi?action=factory.getCollect"
CHOICE /N /T 10 /C yn /D n /M "Mostrare informazioni dettagliate su MicroSD? y/n"
if %errorlevel%==2 GoTo GWCamSkipAllInfoMicroSD
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/storageDevice.cgi?action=getDeviceAllInfo"
Choice /N /T 10 /D N /M "Se non si digita niente per 10 secondi si aprirà il menu precedente"
GoTO ConfigGWCam
:GWCamSkipAllInfoMicroSD
GoTo ConfigGWCam



:GWCamReboot
Echo     Sto riavviando la fotocamera
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/magicBox.cgi?action=reboot"
Choice /N /T 10 /D N /M "Fra 10 secondi si aprirà il menu principale"
GoTO MENU-0



:GWGetSnapshotandSendfromEmail
set GWFileName=screen_%ShowTitleName%.jpg
set GWMailSubject=Foto dalla Camere - %ShowTitleName%
set GWMailBody=Inviato: %TIME:~0,2%:%TIME:~3,2% Fotocamera: vista generale
set GWMailAttach=%TempDirectory%\%GWFileName%
curl -o "%TempDirectory%\%GWFileName%" --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/snapshot.cgi?"
CHOICE /N /T 30 /C ynr /D n /M "Inviare foto via e-mail?  y/n/ r - a giugiutu@gmail.com"
if %errorlevel%==2 GoTo ConfigGWCam
if %errorlevel%==1 set /p GWMailTo=Inserisci l'indirizzo email a cui inviarelo screen:
if %errorlevel%==1 Goto GWSendTo
if %errorlevel%==3 Goto GWSendToRomanKret
:GWSendTo
mailalert  -r "%GWMailTo%" -s "%GWMailSubject%" -b "%GWMailBody%" -a "%GWMailAttach%"
GoTo ConfigGWCam
:GWSendToRomanKret
set GWMailTo=giugiutu@gmail.com
mailalert  -r "%GWMailTo%" -s "%GWMailSubject%" -b "%GWMailBody%" -a "%GWMailAttach%"
GoTo ConfigGWCam





:GWCamAutoConfigure
CHOICE /N /C yn /M "Questa fotocamera possiede FTP? y/n"
if %errorlevel%==1 set GWCamFTP=YES
if defined GWCamFTP CHOICE /N /C yn /M "L'oggetto verrà visualizzato sui telefoni? y/n"
if %errorlevel%==1 set GWCamPhone=YES
CHOICE /N /T 30 /C yn /D y /M "Configurare la posta elettronica?  y/n"
if %errorlevel%==1 set GWCamEmail=YES
CHOICE /N /T 30 /C yn /D y /M "Impostare una notifica PIR all'apertura di un TT? y/n"
if %errorlevel%==1 set GWCamPIR=YES
if defined GWCamPIR set /p PIRWorkDayStart=Inserisci l'orario di inizio (feriali) meno 10 minuti (08:50):
if defined GWCamPIR set /p PIRWorkDayEnd=Immettere ora l'ora di fine (feriali) PIR + 119 min (10:49):
if defined GWCamPIR set /p PIRSatStart=Inserisci l'orario di inizio il sabato meno 10 minuti (08:50):
if defined GWCamPIR set /p PIRSatEnd=Immettere ora l'ora di fine di sabato PIR + 119 min (10:49):
if defined GWCamPIR set /p PIRSunStart=Inserisci l'orario di inizio la domenica meno 10 minuti (09:50):
if defined GWCamPIR set /p PIRSunEnd=Immettere ora l'ora di fine di domenica PIR + 119 min (11:49):
Choice /N /T 10 /D N /M "Dopo 10 secondi verranno apportati aggiustamenti"
Echo      Configuro con riavvio automatico
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&AutoMaintain.AutoRebootEnable=true"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&AutoMaintain.AutoRebootDay=1"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&AutoMaintain.AutoRebootHour=7&AutoMaintain.AutoRebootMinute=0"
Echo      Accendo e configuro NTP
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&NTP.Address=10.0.0.1"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&NTP.Port=123"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&NTP.TimeZone=2"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&NTP.Enable=true"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&NTP.UpdatePeriod=5"
Echo     Regolo il passaggio all'ora legale e invernale
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTEnd.Hour=4"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTEnd.Month=10"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTEnd.Week=-1"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTEnd.Day=0"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTEnd.Year=2018"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTStart.Hour=3"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTStart.Month=3"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTStart.Week=-1"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTStart.Day=0"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTStart.Year=2018"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTEnable=true"
Echo      Ho impostato la image mode "Regular"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&VideoInOptions[0].NightOptions.SwitchMode=4"
Echo      Modifico la codifica e il bitrate
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Encode[0].ExtraFormat[0].Video.BitRate=192&Encode[0].ExtraFormat[0].Video.BitRateControl=CBR&Encode[0].ExtraFormat[0].Video.Compression=H.265&Encode[0].ExtraFormat[0].Video.Height=480&Encode[0].ExtraFormat[0].Video.Profile=Main&Encode[0].ExtraFormat[0].Video.Quality=6&Encode[0].ExtraFormat[2].AudioEnable=true&Encode[0].MainFormat[0].Video.BitRateControl=VBR&Encode[0].MainFormat[0].Video.GOP=20&Encode[0].MainFormat[0].Video.Profile=Main&Encode[0].MainFormat[0].Video.Quality=6&Encode[0].MainFormat[1].Video.BitRateControl=VBR&Encode[0].MainFormat[1].Video.GOP=20&Encode[0].MainFormat[1].Video.Profile=Main&Encode[0].MainFormat[1].Video.Quality=6&Encode[0].MainFormat[2].Video.BitRateControl=VBR&Encode[0].MainFormat[2].Video.GOP=20&Encode[0].MainFormat[2].Video.Profile=Main&Encode[0].MainFormat[2].Video.Quality=6&Encode[0].MainFormat[3].Video.Profile=Main&Encode[0].ExtraFormat[0].Video.GOP=20"
Echo      Modifico la qualità e i ritardi delle istantanee
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Encode[0].SnapFormat[0].Video.FPS=0.010000&Encode[0].SnapFormat[0].Video.Quality=6&Encode[0].SnapFormat[1].Video.Quality=6
if defined GWCamFTP Echo      Ho impostato la posizione per il salvataggio delle istantanee su FTP
if defined GWCamFTP curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&RecordStoragePoint[0].TimingSnapShot.Local=false&RecordStoragePoint[0].TimingSnapShot.Remote=true"
Echo      Sto cambiando il nome del titolo
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&VideoWidget[0].ChannelTitle.EncodeBlend=true&ChannelTitle[0].Name=%ShowTitleName%"
Echo      Cambio la posizione del tempo e il nome del titolo
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&VideoWidget[0].ChannelTitle.Rect[0]=5383&VideoWidget[0].ChannelTitle.Rect[1]=395&VideoWidget[0].ChannelTitle.Rect[2]=8170&VideoWidget[0].ChannelTitle.Rect[3]=974&VideoWidget[0].TimeTitle.Rect[0]=5617&VideoWidget[0].TimeTitle.Rect[1]=0&VideoWidget[0].TimeTitle.Rect[2]=8170&VideoWidget[0].TimeTitle.Rect[3]=526"
Echo     Spengo il DHCP
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Network.eth0.DhcpEnable=false"
Echo     Cambio l'MTU
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Network.eth0.MTU=%MTU%"
Echo     Cambio la maschera di sottorete
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Network.eth0.SubnetMask=255.255.255.0"
Echo     Cambio il gateway
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Network.eth0.DefaultGateway=%NetworkIP%%Subnet%.1"
Echo     Cambio il nome macchina della fotocamera
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&General.MachineName=General_View_%MashineName%"
Echo     Cambio il formato della data e il separatore
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.TimeFormat=dd/MM/yyyy%%20HH:mm:ss"
Echo     Attivo il rilevamento del movimento e cambio la programmazione del rilevatore di movimento video
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&MotionDetect[0].Enable=true&MotionDetect[0].EventHandler.AlarmOutEnable=false"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&MotionDetect[0].EventHandler.TimeSection[0][0]=1%%2000:00:00-%startworkday%:00&MotionDetect[0].EventHandler.TimeSection[1][0]=1%%2000:00:00-%startworkday%:00&MotionDetect[0].EventHandler.TimeSection[2][0]=1%%2000:00:00-%startworkday%:00&MotionDetect[0].EventHandler.TimeSection[3][0]=1%%2000:00:00-%startworkday%:00&MotionDetect[0].EventHandler.TimeSection[4][0]=1%%2000:00:00-%startworkday%:00&MotionDetect[0].EventHandler.TimeSection[5][0]=1%%2000:00:00-%startworkday%:00&MotionDetect[0].EventHandler.TimeSection[6][0]=1%%2000:00:00-%startworkday%:00"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&MotionDetect[0].EventHandler.TimeSection[0][1]=1%%20%endworkday%:00-23:59:59&MotionDetect[0].EventHandler.TimeSection[1][1]=1%%20%endworkday%:00-23:59:59&MotionDetect[0].EventHandler.TimeSection[2][1]=1%%20%endworkday%:00-23:59:59&MotionDetect[0].EventHandler.TimeSection[3][1]=1%%20%endworkday%:00-23:59:59&MotionDetect[0].EventHandler.TimeSection[4][1]=1%%20%endworkday%:00-23:59:59&MotionDetect[0].EventHandler.TimeSection[5][1]=1%%20%endworkday%:00-23:59:59&MotionDetect[0].EventHandler.TimeSection[6][1]=1%%20%endworkday%:00-23:59:59"
Echo     Accendo la notifica e-mail relativa all'errore uscita dalla scheda MicroSD
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&StorageFailure.Enable=true"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&StorageFailure.EventHandler.AlarmOutEnable=false"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&StorageFailure.EventHandler.MailEnable=true"
Echo     Attivo le notifiche e-mail sui conflitti IP
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&IPConflict.Enable=true"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&IPConflict.EventHandler.AlarmOutEnable=false"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&IPConflict.EventHandler.RecordEnable=false"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&IPConflict.EventHandler.MailEnable=true"
Echo     Cambio il programma di registrazione video
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Record[0].TimeSection[0][0]=6%%2000:00:00-%startworkday%:00&Record[0].TimeSection[0][1]=6%%20%endworkday%:00-23:59:59&Record[0].TimeSection[1][0]=6%%2000:00:00-%startworkday%:00&Record[0].TimeSection[1][1]=6%%20%endworkday%:00-23:59:59&Record[0].TimeSection[2][0]=6%%2000:00:00-%startworkday%:00&Record[0].TimeSection[2][1]=6%%20%endworkday%:00-23:59:59&Record[0].TimeSection[3][0]=6%%2000:00:00-%startworkday%:00&Record[0].TimeSection[3][1]=6%%20%endworkday%:00-23:59:59&Record[0].TimeSection[4][0]=6%%2000:00:00-%startworkday%:00&Record[0].TimeSection[4][1]=6%%20%endworkday%:00-23:59:59&Record[0].TimeSection[5][0]=6%%2000:00:00-%startworkday%:00&Record[0].TimeSection[5][1]=6%%20%endworkday%:00-23:59:59&Record[0].TimeSection[6][0]=6%%2000:00:00-%startworkday%:00&Record[0].TimeSection[6][1]=6%%20%endworkday%:00-23:59:59&Record[0].TimeSection[7][0]=6%%2000:00:00-%startworkday%:00&Record[0].TimeSection[7][1]=6%%20%endworkday%:00-23:59:59"
Echo     Cambio il programma di registrazione delle istantanee
if not defined GWCamFTP curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Snap[0].TimeSection[0][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[1][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[2][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[3][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[4][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[5][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[6][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[7][0]=4%%2000:00:00-23:59:59"
if defined GWCamFTP curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Snap[0].TimeSection[0][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[1][0]=1%%2009:58:20-09:59:00&Snap[0].TimeSection[1][1]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[2][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[3][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[4][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[5][0]=1%%2009:58:20-09:59:00&Snap[0].TimeSection[5][1]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[6][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[7][0]=4%%2000:00:00-23:59:59"
if defined GWCamFTP Echo     Accendo FTP e inserisco login e password
if defined GWCamFTP if defined GWCamPhone curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&NAS[0].UserName=%FTPLogin%&NAS[0].Password=%FTPPass%&NAS[0].Address=%FTPADRESS%&NAS[0].Enable=true"
if defined GWCamFTP if not defined GWCamPhone curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&NAS[0].UserName=2%FTPLogin%&NAS[0].Password=%FTPPass%&NAS[0].Address=%FTPADRESS%&NAS[0].Enable=true"
if defined GWCamEmail Echo      Sto configurando le impostazioni e-mail
if defined GWCamEmail curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Email.Address=smtp.gmail.com&Email.Anonymous=false&Email.AttachEnable=true&Email.Authentication=true&Email.Enable=true&Email.HealthReport.Enable=false&Email.HealthReport.Interval=60&Email.OnlyAttachment=false&Email.Password=%EmailPassword%&Email.Port=465&Email.SendInterv=7200&Email.SslEnable=true&Email.Title=General_View_%MashineName%&Email.TlsEnable=false&Email.SendAddress=%Subnet%.company.departament@gmail.com&Email.Receivers[0]=%Subnet%.company.departament@gmail.com&Email.UserName=%Subnet%.company.departament@gmail.com"
if defined GWCamPIR Echo      Sto impostando una notifica PIR sull'apertura di un TT
if defined GWCamPIR curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Alarm[0].Enable=false&Alarm[0].Name=Input&Alarm[1].Enable=true&Alarm[1].EventHandler.AlarmOutEnable=false&Alarm[1].EventHandler.Dejitter=0&Alarm[1].EventHandler.ExAlarmOutEnable=false&Alarm[1].EventHandler.MailEnable=true&Alarm[1].EventHandler.SnapshotEnable=false&Alarm[1].EventHandler.TimeSection[0][0]=1%%20%PIRSunStart%:00-%PIRSunEnd%:00&Alarm[1].EventHandler.TimeSection[1][0]=1%%20%PIRWorkDayStart%:00-%PIRWorkDayEnd%:00&Alarm[1].EventHandler.TimeSection[2][0]=1%%20%PIRWorkDayStart%:00-%PIRWorkDayEnd%:00&Alarm[1].EventHandler.TimeSection[3][0]=1%%20%PIRWorkDayStart%:00-%PIRWorkDayEnd%:00&Alarm[1].EventHandler.TimeSection[4][0]=1%%20%PIRWorkDayStart%:00-%PIRWorkDayEnd%:00&Alarm[1].EventHandler.TimeSection[5][0]=1%%20%PIRWorkDayStart%:00-%PIRWorkDayEnd%:00&Alarm[1].EventHandler.TimeSection[6][0]=1%%20%PIRSatStart%:00-%PIRSatEnd%:00&Alarm[1].Name=PIR"
Echo     Impostazioni automatiche completate!
CHOICE /N /C yn /M "Fare uno screenshot? y/n"
if %errorlevel%==2 GoTo GWAutoCamIP&PASSConfigure
set GWFileName=screen-%ShowTitleName%.jpg
set GWMailSubject=Foto dalle telecamere - %ShowTitleName%
set GWMailBody=Inviato: %TIME:~0,2%:%TIME:~3,2%  Fotocamera: vista generale
set GWMailAttach=%TempDirectory%\%GWFileName%
curl -o "%TempDirectory%\%GWFileName%" --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/snapshot.cgi?"
CHOICE /N /T 30 /C ynr /D n /M "Inviare foto via e-mail?  y/n/ r - a giugiutu@gmail.com"
if %errorlevel%==2 GoTo GWAutoCamIP&PASSConfigure
if %errorlevel%==1 set /p GWMailTo=Inserisci l'indirizzo email a cui inviare lo screen:
if %errorlevel%==1 Goto GWAutoSendTo
if %errorlevel%==3 Goto GWAutoSendToRomanKret
:GWAutoSendTo
mailalert  -r "%GWMailTo%" -s "%GWMailSubject%" -b "%GWMailBody%" -a "%GWMailAttach%"
GoTo GWAutoCamIP&PASSConfigure
:GWAutoSendToRomanKret
set GWMailTo=giugiutu@gmail.com
mailalert  -r "%GWMailTo%" -s "%GWMailSubject%" -b "%GWMailBody%" -a "%GWMailAttach%"

:GWAutoCamIP&PASSConfigure
CHOICE /N /C yn /M "Cambiare IP e password? y/n"
if %errorlevel%==2 GoTo ConfigGWCam
Echo     Sto cambiando la password
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/userManager.cgi?action=modifyPassword&name=admin&pwd=%RegularPass%&pwdOld=%TempPass%"
Echo     Cambio l'indirizzo della telecamera
curl --user admin:%RegularPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Network.eth0.IPAddress=%NetworkIP%%Subnet%.%RegularCamIP1%"
Choice /N /T 15 /D N /M "Через 15 сек. буде відкрито головне меню"
GoTO MENU-0

:GWCamIP&PASSConfigure
Echo     Sto cambiando la password
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/userManager.cgi?action=modifyPassword&name=admin&pwd=%RegularPass%&pwdOld=%TempPass%"
Echo     Cambio l'indirizzo della telecamera
curl --user admin:%RegularPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Network.eth0.IPAddress=%NetworkIP%%Subnet%.%RegularCamIP1%"
Choice /N /T 15 /D N /M "Dopo 15 secondi si aprirà il menu principale"
GoTO MENU-0

:GWCamSinglyConfigurefirst
cls
color 75
set GWCamFTP=
set GWCamPhone=
set GWCamImageSettingRegular=No
set GWCamEncoding=No
set GWCamQualityTimingSnapshot=No
set GWCamLocationSnapshotFTP=No
set GWCamChangeTitleName=No
set GWCamChangePositionTimeTitle=No
set GWCamOffDHCP=No
set GWCamChangeMTU=No
set GWCamChangeIPfromTemptoRegular=No
set GWCamChangeIPfromTemptoUserDefined=No
set GWCamChangeMask=No
set GWCamChangeGateway=No
set GWCamChangeGatewayfromTemptoUserDefined=No
set GWCamChangeMashineName=No
set GWCamChangeDateFormat=No
set GWCamChangeMDSettingandSheduler=No
set GWCamEnableSDErrorEmail=No
set GWCamEnableIPConfEmail=No
set GWCamChangeVideoSheduler=No
set GWCamChangeSnapSheduler=No
set GWCamChangeFTPSetting=No
set GWCamChangePassword=No
set GWCamAutoRebootOff=No
set GWCamNTP=No
set GWCamDST=No
set GWCamPIR=
set GWCamEmail=
:GWCamSinglyConfigure
cls
color 75
echo      ************************************************************************************************************
echo                                                DAHUA HTTP API CONFIGURATOR
echo      ************************************************************************************************************
echo                          Modifica di ciascuna impostazione specifica per la fotocamera %NetworkIP%%Subnet%.%TempCamIP1%
echo      ************************************************************************************************************
if not defined subnetset echo Nessuna Dato di sottorete. Ulteriori azioni senza questo parametro verranno ignorate.
if not defined subnetset Choice /N /T 10 /D N /M "Dopo 10 secondi si apriranno le impostazioni della sottorete"
if not defined subnetset GoTo SetSubnet
echo      q - Questa fotocamera invia foto tramite FTP                           Dato: %GWCamFTP%
echo      w - Viene visualizzata sui telefoni?                                   Dato: %GWCamPhone%
echo      1 - Configura il riavvio automatico                                    Esegui:  %GWCamAutoRebootOff%
echo      2 - Configura NTP                                                      Esegui:  %GWCamNTP%
echo      3 - Impostazione del passaggio all'ora legale/solare                   Esegui:  %GWCamDST%
echo      e - Imposta la image mode "Regular"                                    Esegui:  %GWCamImageSettingRegular%
echo      r - Imposta la codifica e il bitrate                                   Esegui:  %GWCamEncoding%
echo      t - Imposta la qualità e la latenza dell'istantanea                    Esegui:  %GWCamQualityTimingSnapshot%
echo      y - Imposta la posizione per salvare le istantanee su FTP              Esegui:  %GWCamLocationSnapshotFTP%
echo      u - Cambia il nome del titolo                                          Esegui:  %GWCamChangeTitleName%
echo      i - Cambia l'ora e il titolo                                           Esegui:  %GWCamChangePositionTimeTitle%
echo      a - Disattiva DHCP                                                     Esegui:  %GWCamOffDHCP%
echo      s - Cambia MTU                                                         Esegui:  %GWCamChangeMTU%
echo      d - Cambia l'indirizzo della telecamera                                Esegui:  %GWCamChangeIPfromTemptoRegular%
echo      f - Cambia l'indirizzo della telecamera manualmente                    Esegui:  %GWCamChangeIPfromTemptoUserDefined%
echo      g - Cambia la maschera di sottorete                                    Esegui:  %GWCamChangeMask%
echo      h - Cambia porta                                                       Esegui:  %GWCamChangeGateway%
echo      j - Cambia il gateway in personalizzato                                Esegui:  %GWCamChangeGatewayfromTemptoUserDefined%
echo      k - Modificare il nome macchina della telecamera                       Esegui:  %GWCamChangeMashineName%
echo      l - Cambia il formato della data e il separatore                       Esegui:  %GWCamChangeDateFormat%
echo      z - Modificare la programmazione video del rilevatore di movimento     Esegui:  %GWCamChangeMDSettingandSheduler%
echo      x - Notifica e-mail in caso di malfunzionamento della MicroSD          Esegui:  %GWCamEnableSDErrorEmail%
echo      c - Abilita le notifiche e-mail sui conflitti IP                       Esegui:  %GWCamEnableIPConfEmail%
echo      v - Cambia programma di registrazione video                            Esegui:  %GWCamChangeVideoSheduler%
echo      b - Modificare il programma di registrazione delle istantanee          Esegui:  %GWCamChangeSnapSheduler%
echo      n - Attiva FTP e inserisci login e password                            Esegui:  %GWCamChangeFTPSetting%
echo      m - Cambia la password                                                 Esegui:  %GWCamChangePassword%
echo      4 - Configura E-mail                                                   Esegui:  %GWCamEmail%
echo      5 - Configura una notifica PIR sull'apertura di un TT                  Esegui:  %GWCamPIR%
echo.
echo      o - Esci, torna al menù precedente
echo      p - Esci, torna al menù principale
CHOICE /N /C qwertyuiasdfghjklzxcvbnmop12345 /M "Cosa fare? "
if %errorlevel%==1 GoTO GWCamQuestionAboutFTP
if %errorlevel%==2 GoTo GWCamQuestionAboutPhone
if %errorlevel%==3 GoTo GWCamImageSettingRegular
if %errorlevel%==4 GoTo GWCamEncoding
if %errorlevel%==5 GoTo GWCamQualityTimingSnapshot
if %errorlevel%==6 GoTo GWCamLocationSnapshotFTP
if %errorlevel%==7 GoTo GWCamChangeTitleName
if %errorlevel%==8 GoTo GWCamChangePositionTimeTitle
if %errorlevel%==9 GoTo GWCamOffDHCP
if %errorlevel%==10 GoTo GWCamChangeMTU
if %errorlevel%==11 GoTo GWCamChangeIPfromTemptoRegular
if %errorlevel%==12 GoTo GWCamChangeIPfromTemptoUserDefined
if %errorlevel%==13 GoTo GWCamChangeMask
if %errorlevel%==14 GoTo GWCamChangeGateway
if %errorlevel%==15 GoTo GWCamChangeGatewayfromTemptoUserDefined
if %errorlevel%==16 GoTo GWCamChangeMashineName
if %errorlevel%==17 GoTo GWCamChangeDateFormat
if %errorlevel%==18 GoTo GWCamChangeMDSettingandSheduler
if %errorlevel%==19 GoTo GWCamEnableSDErrorEmail
if %errorlevel%==20 GoTo GWCamEnableIPConfEmail
if %errorlevel%==21 GoTo GWCamChangeVideoSheduler
if %errorlevel%==22 GoTo GWCamChangeSnapSheduler
if %errorlevel%==23 GoTo GWCamChangeFTPSetting
if %errorlevel%==24 GoTo GWCamChangePassword
if %errorlevel%==25 GoTo ConfigGWCam
if %errorlevel%==26 GoTo MENU-0
if %errorlevel%==27 GoTo GWCamAutoRebootOff
if %errorlevel%==28 GoTo GWCamNTP
if %errorlevel%==29 GoTo GWCamDST
if %errorlevel%==30 GoTo GWCamEmail
if %errorlevel%==31 GoTo GWCamPIR

:GWCamAutoRebootOff
Echo      Configuro il riavvio automatico
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&AutoMaintain.AutoRebootEnable=true"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&AutoMaintain.AutoRebootDay=1"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&AutoMaintain.AutoRebootHour=7&AutoMaintain.AutoRebootMinute=0"
if %errorlevel%==0 set GWCamAutoRebootOff=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamNTP
Echo      Accendo e configuro NTP
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&NTP.Address=10.0.0.1"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&NTP.Port=123"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&NTP.TimeZone=2"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&NTP.Enable=true"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&NTP.UpdatePeriod=5"
if %errorlevel%==0 set GWCamNTP=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamDST
Echo     Regola il passaggio all'ora legale e invernale
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTEnd.Hour=4"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTEnd.Month=10"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTEnd.Week=-1"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTEnd.Day=0"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTEnd.Year=2018"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTStart.Hour=3"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTStart.Month=3"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTStart.Week=-1"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTStart.Day=0"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTStart.Year=2018"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.DSTEnable=true"
if %errorlevel%==0 set GWCamDST=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamQuestionAboutFTP
CHOICE /N /C yn /M "Questa fotocamera possiede FTP? y/n"
if %errorlevel%==2 set GWCamFTP=
if %errorlevel%==1 set GWCamFTP=YES
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamQuestionAboutPhone
if defined GWCamFTP CHOICE /N /C yn /M "Deve essere utilizzata su telefoni?  y/n"
if defined GWCamFTP if %errorlevel%==1 set GWCamPhone=YES
if defined GWCamFTP Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
if defined GWCamFTP GoTo GWCamSinglyConfigure
if not defined GWCamFTP Echo      Parametro Task non impostato "Questa fotocamera invia foto tramite FTP?
if not defined GWCamFTP echo      0 - Vai a impostare questa opzione
if not defined GWCamFTP echo      1 - Torna al menu precedente
if not defined GWCamFTP CHOICE /N /C 01 /M "Cosa fare?"
if not defined GWCamFTP if %errorlevel%==1 GoTO GWCamQuestionAboutFTP
if not defined GWCamFTP if %errorlevel%==2 GoTo GWCamSinglyConfigure


:GWCamImageSettingRegular
Echo      Ho impostato la image mode "Regular"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&VideoInOptions[0].NightOptions.SwitchMode=4"
if %errorlevel%==0 set GWCamImageSettingRegular=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamEncoding
Echo      Modifico la codifica e il bitrate
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Encode[0].ExtraFormat[0].Video.BitRate=192&Encode[0].ExtraFormat[0].Video.BitRateControl=CBR&Encode[0].ExtraFormat[0].Video.Compression=H.265&Encode[0].ExtraFormat[0].Video.Height=480&Encode[0].ExtraFormat[0].Video.Profile=Main&Encode[0].ExtraFormat[0].Video.Quality=6&Encode[0].ExtraFormat[2].AudioEnable=true&Encode[0].MainFormat[0].Video.BitRateControl=VBR&Encode[0].MainFormat[0].Video.GOP=20&Encode[0].MainFormat[0].Video.Profile=Main&Encode[0].MainFormat[0].Video.Quality=6&Encode[0].MainFormat[1].Video.BitRateControl=VBR&Encode[0].MainFormat[1].Video.GOP=20&Encode[0].MainFormat[1].Video.Profile=Main&Encode[0].MainFormat[1].Video.Quality=6&Encode[0].MainFormat[2].Video.BitRateControl=VBR&Encode[0].MainFormat[2].Video.GOP=20&Encode[0].MainFormat[2].Video.Profile=Main&Encode[0].MainFormat[2].Video.Quality=6&Encode[0].MainFormat[3].Video.Profile=Main&Encode[0].ExtraFormat[0].Video.GOP=20"
if %errorlevel%==0 set GWCamEncoding=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure


:GWCamQualityTimingSnapshot
Echo      Modifico la qualità e i ritardi delle istantanee
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Encode[0].SnapFormat[0].Video.FPS=0.010000&Encode[0].SnapFormat[0].Video.Quality=6&Encode[0].SnapFormat[1].Video.Quality=6
if %errorlevel%==0 set GWCamQualityTimingSnapshot=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamLocationSnapshotFTP
if defined GWCamFTP Echo      Ho impostato la posizione per il salvataggio delle istantanee su FTP
if defined GWCamFTP curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&RecordStoragePoint[0].TimingSnapShot.Local=false&RecordStoragePoint[0].TimingSnapShot.Remote=true"
if defined GWCamFTP if %errorlevel%==0 set GWCamLocationSnapshotFTP=Yes
if defined GWCamFTP Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
if defined GWCamFTP GoTo GWCamSinglyConfigure
if not defined GWCamFTP Echo      Parametro Task non impostato "Questa fotocamera invia foto tramite FTP?
if not defined GWCamFTP echo      0 - Vai a impostare questa opzione
if not defined GWCamFTP echo      1 - Torna al menu precedente
if not defined GWCamFTP CHOICE /N /C 01 /M "Cosa fare?"
if not defined GWCamFTP if %errorlevel%==1 GoTO GWCamQuestionAboutFTP
if not defined GWCamFTP if %errorlevel%==2 GoTo GWCamSinglyConfigure

:GWCamChangeTitleName
Echo      Sto cambiando il nome del titolo
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&VideoWidget[0].ChannelTitle.EncodeBlend=true&ChannelTitle[0].Name=%ShowTitleName%"
if %errorlevel%==0 set GWCamChangeTitleName=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamChangePositionTimeTitle
Echo      Cambia l'ora e nome del titolo
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&VideoWidget[0].ChannelTitle.Rect[0]=5383&VideoWidget[0].ChannelTitle.Rect[1]=395&VideoWidget[0].ChannelTitle.Rect[2]=8170&VideoWidget[0].ChannelTitle.Rect[3]=974&VideoWidget[0].TimeTitle.Rect[0]=5617&VideoWidget[0].TimeTitle.Rect[1]=0&VideoWidget[0].TimeTitle.Rect[2]=8170&VideoWidget[0].TimeTitle.Rect[3]=526"
if %errorlevel%==0 set GWCamChangePositionTimeTitle=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamOffDHCP
Echo     DHCP abilitato
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Network.eth0.DhcpEnable=false"
if %errorlevel%==0 set GWCamOffDHCP=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamChangeMTU
Echo     Cambio l'MTU
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Network.eth0.MTU=%MTU%"
if %errorlevel%==0 set GWCamChangeMTU=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamChangeIPfromTemptoRegular
Echo     Cambio l'indirizzo della telecamera
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Network.eth0.IPAddress=%NetworkIP%%Subnet%.%RegularCamIP1%"
if %errorlevel%==0 set GWCamChangeIPfromTemptoRegular=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamChangeIPfromTemptoUserDefined
set /p UserDefinedIP=Immettere l'indirizzo completo in cui si desidera modificare l'indirizzo IP della telecamera:
Echo     Cambio l'indirizzo della telecamera
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Network.eth0.IPAddress=%UserDefinedIP%"
if %errorlevel%==0 set GWCamChangeIPfromTemptoUserDefined=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamChangeMask
Echo     Змінюю маску підмережі
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Network.eth0.SubnetMask=255.255.255.0"
if %errorlevel%==0 set GWCamChangeMask=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamChangeGateway
Echo     Cambio il gateway
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Network.eth0.DefaultGateway=%NetworkIP%%Subnet%.1"
if %errorlevel%==0 set GWCamChangeGateway=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamChangeGatewayfromTemptoUserDefined
set /p UserDefinedIP=Inserisci l'indirizzo completo che non è attualmente nella telecamera:
set /p UserDefinedGateway=Immettere l'indirizzo completo del gateway da installare:
Echo     Cambio il gateway
curl --user admin:%TempPass% --digest --globoff "http://%UserDefinedIP%/cgi-bin/configManager.cgi?action=setConfig&Network.eth0.DefaultGateway=%UserDefinedGateway%"
if %errorlevel%==0 set GWCamChangeGatewayfromTemptoUserDefined=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamChangeMashineName
Echo     Cambio il nome macchina della telecamera
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&General.MachineName=General_View_%MashineName%"
if %errorlevel%==0 set GWCamChangeMashineName=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamChangeDateFormat
Echo     Cambio il formato della data e il separatore
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Locales.TimeFormat=dd/MM/yyyy%%20HH:mm:ss"
if %errorlevel%==0 set GWCamChangeDateFormat=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure


:GWCamChangeMDSettingandSheduler
Echo     Accendo il rilevamento del movimento e cambio la programmazione del video del rilevatore di movimento
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&MotionDetect[0].Enable=true&MotionDetect[0].EventHandler.AlarmOutEnable=false"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&MotionDetect[0].EventHandler.TimeSection[0][0]=1%%2000:00:00-%startworkday%:00&MotionDetect[0].EventHandler.TimeSection[1][0]=1%%2000:00:00-%startworkday%:00&MotionDetect[0].EventHandler.TimeSection[2][0]=1%%2000:00:00-%startworkday%:00&MotionDetect[0].EventHandler.TimeSection[3][0]=1%%2000:00:00-%startworkday%:00&MotionDetect[0].EventHandler.TimeSection[4][0]=1%%2000:00:00-%startworkday%:00&MotionDetect[0].EventHandler.TimeSection[5][0]=1%%2000:00:00-%startworkday%:00&MotionDetect[0].EventHandler.TimeSection[6][0]=1%%2000:00:00-%startworkday%:00"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&MotionDetect[0].EventHandler.TimeSection[0][1]=1%%20%endworkday%:00-23:59:59&MotionDetect[0].EventHandler.TimeSection[1][1]=1%%20%endworkday%:00-23:59:59&MotionDetect[0].EventHandler.TimeSection[2][1]=1%%20%endworkday%:00-23:59:59&MotionDetect[0].EventHandler.TimeSection[3][1]=1%%20%endworkday%:00-23:59:59&MotionDetect[0].EventHandler.TimeSection[4][1]=1%%20%endworkday%:00-23:59:59&MotionDetect[0].EventHandler.TimeSection[5][1]=1%%20%endworkday%:00-23:59:59&MotionDetect[0].EventHandler.TimeSection[6][1]=1%%20%endworkday%:00-23:59:59"
if %errorlevel%==0 set GWCamChangeMDSettingandSheduler=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamEnableSDErrorEmail
Echo     Accendo la notifica e-mail relativa all'errore dell'uscita della MicroSD
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&StorageFailure.Enable=true"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&StorageFailure.EventHandler.AlarmOutEnable=false"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&StorageFailure.EventHandler.MailEnable=true"
if %errorlevel%==0 set GWCamEnableSDErrorEmail=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamEnableIPConfEmail
Echo     Attivo le notifiche e-mail sui conflitti IP
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&IPConflict.Enable=true"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&IPConflict.EventHandler.AlarmOutEnable=false"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&IPConflict.EventHandler.RecordEnable=false"
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&IPConflict.EventHandler.MailEnable=true"
if %errorlevel%==0 set GWCamEnableIPConfEmail=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamChangeVideoSheduler
Echo     Cambio il programma di registrazione video
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Record[0].TimeSection[0][0]=6%%2000:00:00-%startworkday%:00&Record[0].TimeSection[0][1]=6%%20%endworkday%:00-23:59:59&Record[0].TimeSection[1][0]=6%%2000:00:00-%startworkday%:00&Record[0].TimeSection[1][1]=6%%20%endworkday%:00-23:59:59&Record[0].TimeSection[2][0]=6%%2000:00:00-%startworkday%:00&Record[0].TimeSection[2][1]=6%%20%endworkday%:00-23:59:59&Record[0].TimeSection[3][0]=6%%2000:00:00-%startworkday%:00&Record[0].TimeSection[3][1]=6%%20%endworkday%:00-23:59:59&Record[0].TimeSection[4][0]=6%%2000:00:00-%startworkday%:00&Record[0].TimeSection[4][1]=6%%20%endworkday%:00-23:59:59&Record[0].TimeSection[5][0]=6%%2000:00:00-%startworkday%:00&Record[0].TimeSection[5][1]=6%%20%endworkday%:00-23:59:59&Record[0].TimeSection[6][0]=6%%2000:00:00-%startworkday%:00&Record[0].TimeSection[6][1]=6%%20%endworkday%:00-23:59:59&Record[0].TimeSection[7][0]=6%%2000:00:00-%startworkday%:00&Record[0].TimeSection[7][1]=6%%20%endworkday%:00-23:59:59"
if %errorlevel%==0 set GWCamChangeVideoSheduler=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamChangeSnapSheduler
Echo     Cambio il programma di registrazione delle istantanee
if not defined GWCamFTP curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Snap[0].TimeSection[0][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[1][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[2][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[3][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[4][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[5][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[6][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[7][0]=4%%2000:00:00-23:59:59"
if defined GWCamFTP curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Snap[0].TimeSection[0][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[1][0]=1%%2009:58:20-09:59:00&Snap[0].TimeSection[1][1]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[2][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[3][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[4][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[5][0]=1%%2009:58:20-09:59:00&Snap[0].TimeSection[5][1]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[6][0]=4%%2000:00:00-23:59:59&Snap[0].TimeSection[7][0]=4%%2000:00:00-23:59:59"
if %errorlevel%==0 set GWCamChangeSnapSheduler=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamChangeFTPSetting
if defined GWCamFTP Echo     Accendo FTP e inserisco login e password
if defined GWCamFTP if defined GWCamPhone curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&NAS[0].UserName=%FTPLogin%&NAS[0].Password=%FTPPass%&NAS[0].Address=%FTPADRESS%&NAS[0].Enable=true"
if defined GWCamFTP if not defined GWCamPhone curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&NAS[0].UserName=2%FTPLogin%&NAS[0].Password=%FTPPass%&NAS[0].Address=%FTPADRESS%&NAS[0].Enable=true"
if defined GWCamFTP if %errorlevel%==0 set GWCamChangeFTPSetting=Yes
if defined GWCamFTP Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
if defined GWCamFTP GoTo GWCamSinglyConfigure
if not defined GWCamFTP Echo      Parametro Task non impostato "Questa fotocamera invia foto tramite FTP?
if not defined GWCamFTP echo      0 - Vai a impostare questa opzione
if not defined GWCamFTP echo      1 - Torna al menu precedente
if not defined GWCamFTP CHOICE /N /C 01 /M "Cosa fare?"
if not defined GWCamFTP if %errorlevel%==1 GoTO GWCamQuestionAboutFTP
if not defined GWCamFTP if %errorlevel%==2 GoTo GWCamSinglyConfigure

:GWCamChangePassword
Echo     Sto cambiando la password
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/userManager.cgi?action=modifyPassword&name=admin&pwd=%RegularPass%&pwdOld=%TempPass%"
if %errorlevel%==0 set GWCamChangePassword=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamPIR
Echo      Sto impostando una notifica PIR sull'apertura di un TT
set /p PIRWorkDayStart=Inserisci l'orario di inizio (feriali) meno 10 minuti (08:50):
set /p PIRWorkDayEnd=Immettere ora l'ora di fine (feriali) PIR + 119 min (10:49):
set /p PIRSatStart=Inserisci l'orario di inizio il sabato meno 10 minuti (08:50):
set /p PIRSatEnd=Immettere ora l'ora di fine di sabato PIR + 119 min (10:49):
set /p PIRSunStart=Inserisci l'orario di inizio la domenica meno 10 minuti (09:50):
set /p PIRSunEnd=Immettere ora l'ora di fine di domenica PIR + 119 min (11:49):
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Alarm[0].Enable=false&Alarm[0].Name=Input&Alarm[1].Enable=true&Alarm[1].EventHandler.AlarmOutEnable=false&Alarm[1].EventHandler.Dejitter=0&Alarm[1].EventHandler.ExAlarmOutEnable=false&Alarm[1].EventHandler.MailEnable=true&Alarm[1].EventHandler.SnapshotEnable=false&Alarm[1].EventHandler.TimeSection[0][0]=1%%20%PIRSunStart%:00-%PIRSunEnd%:00&Alarm[1].EventHandler.TimeSection[1][0]=1%%20%PIRWorkDayStart%:00-%PIRWorkDayEnd%:00&Alarm[1].EventHandler.TimeSection[2][0]=1%%20%PIRWorkDayStart%:00-%PIRWorkDayEnd%:00&Alarm[1].EventHandler.TimeSection[3][0]=1%%20%PIRWorkDayStart%:00-%PIRWorkDayEnd%:00&Alarm[1].EventHandler.TimeSection[4][0]=1%%20%PIRWorkDayStart%:00-%PIRWorkDayEnd%:00&Alarm[1].EventHandler.TimeSection[5][0]=1%%20%PIRWorkDayStart%:00-%PIRWorkDayEnd%:00&Alarm[1].EventHandler.TimeSection[6][0]=1%%20%PIRSatStart%:00-%PIRSatEnd%:00&Alarm[1].Name=PIR"
if %errorlevel%==0 set GWCamPIR=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure

:GWCamEmail
Echo      Sto configurando le impostazioni e-mail
curl --user admin:%TempPass% --digest --globoff "http://%NetworkIP%%Subnet%.%TempCamIP1%/cgi-bin/configManager.cgi?action=setConfig&Email.Address=smtp.gmail.com&Email.Anonymous=false&Email.AttachEnable=true&Email.Authentication=true&Email.Enable=true&Email.HealthReport.Enable=false&Email.HealthReport.Interval=60&Email.OnlyAttachment=false&Email.Password=%EmailPassword%&Email.Port=465&Email.SendInterv=7200&Email.SslEnable=true&Email.Title=General_View_%MashineName%&Email.TlsEnable=false&Email.SendAddress=%Subnet%.company.departament@gmail.com&Email.Receivers[0]=%Subnet%.company.departament@gmail.com&Email.UserName=%Subnet%.company.departament@gmail.com"
if %errorlevel%==0 set GWCamEmail=Yes
Choice /N /T 10 /D N /M "Dopo 10 secondi si aprirà il menu precedente"
GoTo GWCamSinglyConfigure


Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


:DelandExit
if exist "%TempDirectory%\*.jpg" CHOICE /N /T 15 /C yn /D y /M "Elimina snapshot temporanei y/n"
if %errorlevel%==1 GoTo DelTempSnapshot
if exist "%TempDirectory%\*.jpg" start %TempDirectory%
exit

:DelTempSnapshot
del /q "%TempDirectory%\*.jpg"
Exit
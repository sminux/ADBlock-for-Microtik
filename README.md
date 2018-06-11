# ADBlock-for-Microtik

Plan:
* Download https://bmstu.codes/bmstu.cloud/core files
* Run script makeBlockList to make .txt files /console command from directory with sources: "sh [script]"
* Get url of raw of our .txt files in RouterOS: System->Scripts 

Errors:
Ошибки возникают, если в dns адресе присутствуют по типу системных, например: 
/&script
/exp*


P.S.core
Для  упрощения конвертации списков вредоносных сайтов предусмотрена работа скриптового файла makeBlockLists.sh, который конвертирует файлы Advertising, Games, Porn, Viruses.

Сперва скачайте ваши списки и распределите их по группам Advertising, Games, Porn, Viruses.
Поместите файл makeBlockLists.sh в одну директорию с вашими списками.
Сделайте файл исполняемым. Для этого введите команду chmod +x и имя файла скрипта: chmod +x  makeBlockLists.sh
Запускаем и получаем списки в виде, пригодном для microtik:
./makeBlockLists.sh             //Также можно запустить следующей командой: sh makeBlockLists.sh

Вновь созданные записи следует записать в git разделив команды для dns static записей и firewall filter командой "/", иначе возникнет ошибка.

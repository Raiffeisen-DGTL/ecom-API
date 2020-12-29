#!/usr/local/bin/bash
echo ""
echo "COMPARE RU and EN FILES, ROWS QUANTITY SHOULD BE EQUAL!"
a=$(wc -l < ecom.yml)
b=$(wc -l < ecom_en.yml)
c=$(wc -l < ecom.html)
d=$(wc -l < ecom_en.html)
e=$(wc -l < sbp.yml)
f=$(wc -l < sbp_en.yml)
g=$(wc -l < sbp.html)
h=$(wc -l < sbp_en.html)
if (( a == b && c == d && e == f && g == h)); then
    echo "---------------------------------"
    echo "INFO:"
    echo "Проверка пройдена успешно."
    echo "---------------------------------"
    exit 0
    else
    echo "---------------------------------"
    echo "ERROR:"
    echo "ACHTUNG!!!WARNING!!!ВНИМАНИЕ!!!"
    echo "Есть подозрение что в документацию добавлена фича, не переведённая на оба языка."
    echo "( Не совпало кол-во строк в RU и EN версиях документации )"
    echo "требуется проверить крайние коммиты и добавить недостающие изменения в обе версии ( RU и EN ) документации."
    echo "---------------------------------"
    exit 1
fi
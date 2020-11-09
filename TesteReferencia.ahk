;TESTE REFERENCIA



msgbox, % referencia


FileRead, referencia, C:\Users\Cliente\Desktop\Phasmophobia_Bot\System\Referencia.txt
referencia += 1
FileDelete, C:\Users\Cliente\Desktop\Phasmophobia_Bot\System\Referencia.txt
FileAppend, % referencia, C:\Users\Cliente\Desktop\Phasmophobia_Bot\System\Referencia.txt
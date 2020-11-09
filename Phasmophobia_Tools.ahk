#SingleInstance Force
;PHASMOPHOBIA SCRIPTS
;CTRL + 1, ADDS BASIC ITEMS

;ITEMS IN SELECTION ORDER
;ITEM ID, COORD X, COORD Y, NAME, IMPORTANCE, PRICE, MAXIMUM AMOUNT, MINIMUM AMOUNT
;1EMFR,671,296,EMF READER,AVERAGE,45,2,1
;2FLAS,671,319,FLASHLIGHT,USELESS,30,4,1
;3CAME,671,345,PHOTO CAMERA,IMPORTANT,40,3,1
;4LIGH,671,370,LIGHTER,IMPORTANT,10,2,0
;5CAND,671,394,CANDLE,AVERAGE,15,4,0
;6UVFL,671,419,UV FLASHLIGHT,IMPORTANT,35,2,1
;7CRUC,671,442,CRUCIFIX,IMPORTANT,30,2,0
;8VIDE,671,466,VIDEO CAMERA,IMPORTANT,50,6,1
;9SPIR,671,491,SPIRIT BOX,AVERAGE,50,2,1
;10SAL,671,515,SALT,IMPORTANT,15,2,0
;11SMU,671,540,SMUDGE STICKS,IMPORTANT,15,4,0
;12TRI,671,564,TRIPOD,AVERAGE,25,5,0
;13FLA,671,589,STRONG FLASHLIGHT,IMPORTANT,50,4,0
;14MOV,671,613,MOVEMENT SENSOR,IMPORTANT,100,4,0
;15SOU,671,637,SOUND SENSOR,IMPORTANT,80,4,0
;16THE,1115,296,THERMOMETER,IMPORTANT,30,3,0
;17SAN,1115,320,SANITY PILLS,IMPORTANT,45,4,0
;18GHO,1115,345,GHOST WRITING NOTEBOOK,IMPORTANT,40,2,1
;19INF,1115,370,INFRARED SENSOR,USELESS,65,4,0
;20DIR,1115,393,DIRECTIONAL MICROPHONE,USELESS,50,2,0
;21UVL,1115,417,UV LIGHT STICK,AVERAGE,20,2,0
;22HEA,1115,441,HEAD CAMERA,USELESS,60,4,0

;CREATES THE ARRAY OF ITEMS FOR REFERENCE
global Array := []
Loop, read, ItemsPhasmophobia.csv
{
    LineNumber := A_Index
    Loop, parse, A_LoopReadLine, CSV
    {
        ;LINHA: %LineNumber%
		;COLUNA: %A_Index%
		;VALOR: %A_LoopField%
		
		row := LineNumber
		col := A_Index
		value := A_LoopField
		
		Array[row, col] := value
    }
}

;STARTS LOOP FUNCTION TO PROVIDE HOTKEY OPTIONS
SaveAllPhotos("E:\Steam\steamapps\common\Phasmophobia", "C:\Phasmophobia_Bot\Pictures")
;AVAILABLE HOTKEYS
F1::AddAverage()
F2::CopyPhotos("E:\Steam\steamapps\common\Phasmophobia", "C:\Phasmophobia_Bot\Pictures")



;USEFUL FUNCTIONS
AddAverage() {
	;THIS FUNCTION ADDS ALL CORE ITEMS FOR A GOOD HUNT WITHOUT SKIPPING ANY MISSIONS OR MISSING IMPORTANT CLUES AND PHOTOS
	;THIS FUNCTION DOESN'T RATIONALIZE ITEMS, IT MIGHT INCLUDE MORE THAN YOU NEED, THIS IS THE BEST OPTION IF YOU HAVE SOME SPARE CASH AND WANTS EXTRA SAFETY FOR COMPLETING MISSIONS
	
	;1 EXTRA EMF READER - TOO LAZY TO REPOSITION ALL THE TIME
	AddItem("1EMFR", 1)
	
	;2 EXTRA PHOTO CAMERAS - TO MAKE A WHOLE MODEL BOOK ON THE GHOST
	AddItem("3CAME", 2)
	
	;2 LIGHTERS (FOR THE SMUDGE STICKS MISSION) - TWO IN CASE YOU LOSE ONE WHILE SHITTING YOUR PANTS
	AddItem("4LIGH", 2)
	
	;2 CANDLES - FOR A ROMANTIC DINNER (JK, YOU MIGHT NEED VISION IN THE DARK)
	AddItem("5CAND", 2)
	
	;1 EXTRA UV FLASHLIGHT - BETTER SAFE THAN SORRY
	AddItem("6UVFL", 1)
	
	;2 CRUCIFIXES (FOR MAXIMUM ALLOWED PROTECTION)
	AddItem("7CRUC", 2)
	
	;3 EXTRA VIDEO CAMERAS - LET'S GIVE IT A REALITY SHOW VIBE
	AddItem("8VIDE", 3)
	
	;2 SALT (FOR EXTRA SPICE GHOST)
	AddItem("10SAL", 2)
	
	;4 SMUDGE STICKS (JUST TO BE SURE)
	AddItem("11SMU", 4)
	
	;4 TRIPODS (FOR THE VIDEO CAMERAS)
	AddItem("12TRI", 4)
	
	;2 STRONG FLASHLIGHTS (1 ON THE FLOOR, 1 ON YOUR HANDS)
	AddItem("13FLA", 2)
	
	;2 MOVEMENT SENSORS (I CAN PAY FOR IT! $100)
	AddItem("14MOV", 2)
	
	;2 SOUND SENSORS (MAYBE IT WILL BE USEFUL)
	AddItem("15SOU", 2)
	
	;2 THERMOMETERS (LET'S DONATE 1 FOR THE POOR)
	AddItem("16THE", 2)
	
	;4 SANITY PILLS (IN CASE YOU LIVE IN BRAZIL)
	AddItem("17SAN", 4)

	;1 EXTRA GHOST WRITING NOTEBOOK
	AddItem("18GHO", 1)
	
	;1 UV LIGHT STICKS (TO BRING A ROMANTIC NEON EFFECT)
	AddItem("21UVL", 1)

	;THIS SHOULD BE ENOUGH TO SUCCEED ALL MISSIONS AND FIND ALL CLUES WITHOUT WASTING STUFF
	;ANY SUGGESTIONS, EDIT THE CODE YOURSELF :D, SERIOUSLY, JUST CHANGE THE NUMBERS
}

AddBasic() {
	;THIS FUNCTION ADDS ALL CORE ITEMS FOR A GOOD HUNT WITHOUT SKIPPING ANY MISSIONS OR MISSING IMPORTANT CLUES AND PHOTOS
	;THIS FUNCTION ALSO RATIONALIZES ITEMS TO NOT INCLUDE MORE THAN YOU NEED, THIS IS THE BEST OPTION IF YOU HAVE EXPERIENCE AND WANT TO SAVE MONEY WITHOUT SABOTAGING YOUR HUNT
	
	;1 EXTRA PHOTO CAMERA
	AddItem("3CAME", 1)
	
	;1 LIGHTER (FOR THE SMUDGE STICKS MISSION)
	
	;2 CRUCIFIXES (FOR MAXIMUM ALLOWED PROTECTION)
	
	;1 EXTRA VIDEO CAMERA
	
	;2 SALT (FOR EXTRA SPICE GHOST)
	
	;3 SMUDGE STICKS (ITS A HARD MISSION SOMETIMES, BETTER TAKE 3)
	
	;2 TRIPODS (FOR THE VIDEO CAMERAS)
	
	;1 STRONG FLASHLIGHT (YOUR TEAM CAN BRING THEIR OWN)
	
	;1 MOVEMENT SENSOR (JUST REPOSITION IF IT FAILS, LET'S NOT TAKE 2, IT'S SUPER EXPENSIVE $100)
	
	;1 THERMOMETER (THERE IS NO HUNT WITHOUT THIS ITEM, DO NOT LEAVE IT OUT!!!)
	
	;2 SANITY PILLS (IF YOU'RE ALONE, THIS SHOULD BE ENOUGH)
	
	;THIS SHOULD BE ENOUGH TO SUCCEED ALL MISSIONS AND FIND ALL CLUES WITHOUT WASTING STUFF
	;ANY SUGGESTIONS, EDIT THE CODE YOURSELF :D, SERIOUSLY, JUST CHANGE THE NUMBERS
}

AddAll() {
	
	
}

;LIB PROCESSO, FUN��ES QUE AUXILIAM AS FUN��ES PRINCIPAIS
AddItem(item_id_to_add, amount) {
	
	;LOOPS THE ARRAY OF ITEMS LOOKING FOR THE ITEM NAME AND ITS COORDINATES
	for line, item in Array ; Enumeration is the recommended approach in most cases.
	{
		; Using "Loop", indices must be consecutive numbers from 1 to the number
		; of elements in the array (or they must be calculated within the loop).
		; MsgBox % "Element number " . A_Index . " is " . Array[A_Index]

		; Using "for", both the index (or "key") and its associated value
		; are provided, and the index can be *any* value of your choosing.
		;MsgBox % "Item number " . line . " is " . item[1]
		
		if (item_id_to_add == item[1])
		{
			;msgbox, % "Item found: " . item[1] . " | Coordinates: X:" . item[2] . ", Y:" . item[3]
			loop, % amount
			{
				;msgbox, % "Clicando " . A_Index . "� vez."
				mouseclick, left, item[2], item[3]
				Sleep, 50
			}
		}
	}
}

CopyPhotos(path_from, path_to) {
	Loop Files, %path_from%\*.png
	{
		;MsgBox, 4, , Filename = %A_LoopFileFullPath%`n`nContinue?
		
		;5 minutos atr�s
		5_min_ago := A_Now
		5_min_ago += -5, minutes
		
		if (A_LoopFileTimeModified  >= 5_min_ago)
		{
			msgbox, % A_LoopFileTimeModified . " � maior que " . 5_min_ago . " | Achei foto recente!"
		}
	}
	
	;FileCopy, E:\Steam\steamapps\common\Phasmophobia\*.png
}

;SAVES AND ORGANIZES ALL PHOTOS ACCORDING TO MATCH AND MODIFICATION TIME
SaveAllPhotos(path_from, path_to) {
	Timer := A_TickCount
	Loop, 
	{
		;5 minutos atr�s
		5_sec_ago := A_Now
		5_sec_ago += -5, seconds
		
		;LOOKS FOR MATCH END, IF FOUND, FINISHES THE MATCH AND UPDATES MATCH COUNTER
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 C:\Phasmophobia_Bot\References\Payment.jpg
		if (FoundX != "" and FoundY != "")
		{
			;IF THE END WAS FOUND, CLICK ON RESUME AND LOOK FOR SECOND END
			mouseclick, left, % A_ScreenWidth/2, % FoundY + 600
			Sleep, 200
			;IF SECOND END WAS FOUND, CLICKS ON RESUME AGAIN
			ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 C:\Phasmophobia_Bot\References\Experience.jpg
			if (FoundX != "" and FoundY != "")
			{
				;CLICKS ON SECOND RESUME
				mouseclick, left, % A_ScreenWidth/2, % FoundY + 600
				;UPDATES MATCH (REFERENCE IS LAST MATCH)
				FileRead, reference, C:\Phasmophobia_Bot\System\Reference.txt
				reference += 1
				FileDelete, C:\Phasmophobia_Bot\System\Reference.txt
				FileAppend, % reference, C:\Phasmophobia_Bot\System\Reference.txt
			}
		}
		
		;IF 5 SECONDS HAVE PASSED, COPIES PHOTOS TO DESTINY FOLDER
		if A_TickCount - Timer > 5000
		{
			Loop Files, %path_from%\*.png
			{
				;MsgBox, %A_Now%_%A_LoopFileName%
				if (A_LoopFileTimeModified  >= 5_sec_ago)
				{
					FileCopy, %A_LoopFileFullPath%, % path_to . "\" . A_Now . "_" . "match_" . re . "_" . A_LoopFileName
				}
			}
			Timer := A_TickCount
		}
		Sleep, 300
	}
}

F10::ExitApp
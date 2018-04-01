#Include, aesl.ahk

InputBox, i, How many iterations?, How many iterations?,,200,80

makeLine(which := "second",iterations := 100,outputFile := "data.txt") {
	q := 1
	p := 2
	
	loop {
		x := InStr(which, "first") ? StrLen(p) : StrLen(q)
		loop %x% {
			if (InStr(which, "first"))
				qs .= A_Space
			else
				ps .= A_Space
		}
		
		if (InStr(which, "first")) {
			data := q qs
			qs=
		} else {
			data := ps p
			ps=
		}
		
		FileAppend, %data%, %outputFile%
		q := q + p
		p++
		
		if (p > iterations) {
			FileAppend, `n, %outputFile%
			break
		}
	}
}

makeLine("first", i)
makeLine(, i)

ExitApp
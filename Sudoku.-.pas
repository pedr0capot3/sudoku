 program sudoku;
{ Luis Narvaez
* Pedro Capote
* Miguel Millan
* Programa para resolver sudoku.}
 uses crt;
var
 cuad:array[1..9,1..9] of byte;

 opcion,num,i,j,o,Dif,pass:integer;	
	

	
procedure insertarnumero; {Procedure para insertar numero en el Sudoku de baja dificultad}
	var
	 i,j,num :integer;
begin 
	pass:=1;
			
			{La posicion debe ser diferente de cero}		
			Repeat
				write('Introduzca la posicion de la columna: ');
							readln(i);
			Until ( i <> 0 );

		{Si la posicion es menor a 1 y mayor a 9 se repetira}	
				if (i < 1) or (i > 9) then
		repeat	
				begin
          writeln('Columna incorrecta. Verifique su opcion.');
					readln(i);
					end;		
		until (i >= 1 ) and (i <= 9);			
				 Repeat
				
			write('Introduzca la posicion de la fila: ');
				readln(j); 
			{si la fila es menor a 1 o mayor 9 se repetira y debera colocar el numero nuevament}	
						if (j < 1) or (j > 9) then
					        begin
          writeln('Fila incorrecta. Verifique su opcion.');
						  readln(j);
							end;		
			until ( j <> 0 );	{Si una posicion ya tiene un valor este no se podra editar}
	     if (cuad[i,j] <> 0) then
				begin
        writeln('Esa casilla no se puede editar.');	
			readln;
			writeln('Presione ENTER para continuar.');
        	clrscr;
				end;
			if (i = 2) and (j = 1) then		
				begin
			repeat
			write('Introduzca el numero a insertar: ');
			readln(num);
			Until ( num = 3 );
			cuad[i,j]:=num;
			clrscr;		
						end
			else 
			if (i = 3) and (j = 1) then	
			begin
						textcolor(white);	
			repeat
							write('Introduzca el numero a insertar: ');
							readln(num);
			Until ( num = 1 ) ;		 
			cuad[i,j]:=num;		
			clrscr;
				end		
			else if (i = 4) and (j = 1) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 6 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 6) and (j = 1) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 7) and (j = 1) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 9 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 8) and (j = 1) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 8 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 2) and (j = 2) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 4 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 4) and (j = 2) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 8 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end	
			else if (i = 7) and (j = 2) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 9) and (j = 2) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end	
			else if (i = 2) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 3) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 4) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 5 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 5) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 4 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 7) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 6 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 9) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 3 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 3) and (j = 4) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 6 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 5) and (j = 4) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 5 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 6) and (j = 4) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 8) and (j = 4) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 3 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 2) and (j = 5) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 1 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 4) and (j = 5) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 3 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 5) and (j = 5) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 9 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 2) and (j = 5) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 1 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 8) and (j = 5) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 4 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 1) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 2) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 5 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 3) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 3 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 8) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 9 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 9) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 6 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 1) and (j = 7) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 3 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 4) and (j = 7) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 9 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 5) and (j = 7) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 9) and (j = 7) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 1 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 2) and (j = 8) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 8 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 3) and (j = 8) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 5 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 9) and (j = 8) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 9 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 3) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 4) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 4 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 5) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 1 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 6) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 5 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 7) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 3 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 8) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 9) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 8 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end





			

	 
		
			
	end;
	
procedure Minsertarnumero; {Procedure para insertar numero en el Sudoku de media dificultad}
	var
	 i,j,num :integer;
begin 
	pass:=1;
			
		{si la posicion es diferente de cero se repite}		
			Repeat
				write('Introduzca la posicion de la columna: ');
							readln(i);
			Until ( i <> 0 );

		{si la posicion es menor a 1 y mayor a 9 el numero no puede ser colocado}	
				if (i < 1) or (i > 9) then
		repeat	
				begin
          writeln('Columna incorrecta. Verifique su opcion.');
					readln(i);
					end;		
		until (i >= 1 ) and (i <= 9);			
				Repeat
				
			write('Introduzca la posicion de la fila: ');
				readln(j); 
			{si la fila es menor a 1 o mayor 9 debe colocar el numero nuevament}	
						if (j < 1) or (j > 9) then
					        begin
          writeln('Fila incorrecta. Verifique su opcion.');
						  readln(j);
							end;		
			until ( j <> 0 );	
				
	     if (cuad[i,j] <> 0) then
				begin
        writeln('Esa casilla no se puede editar.');	
			writeln('Presione ENTER para continuar.');
			readln;
        	clrscr;
				end;
			
			if (i = 1) and (j = 1) then		
				begin
			repeat
			write('Introduzca el numero a insertar: ');
			readln(num);
			Until ( num = 5 );
			cuad[i,j]:=num;
			clrscr;		
						end
			else 
			if (i = 3) and (j = 1) then	
			begin
						textcolor(white);	
			repeat
							write('Introduzca el numero a insertar: ');
							readln(num);
			Until ( num = 1 ) ;		 
			cuad[i,j]:=num;		
			clrscr;
				end		
			else if (i = 4) and (j = 1) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 6 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 6) and (j = 1) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 9) and (j = 1) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 4 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 1) and (j = 2) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 6 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 2) and (j = 2) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 4 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 3) and (j = 2) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 9 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end	
			else if (i = 5) and (j = 2) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 3 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end	
			else if (i = 6) and (j = 2) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 1 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end	
			else if (i = 7) and (j = 2) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 9) and (j = 2) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end	
			else if (i = 1) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 8 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 2) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 3) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 4) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 5 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 5) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 4 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 6) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 9 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 7) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 6 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 8) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 1 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 9) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 3 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 1) and (j = 4) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 9 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 3) and (j = 4) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 6) and (j = 4) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 5 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 8) and (j = 4) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 9) and (j = 4) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 8 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 2) and (j = 5) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 4) and (j = 5) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 9 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 5) and (j = 5) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 6) and (j = 5) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 8 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 9) and (j = 5) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 1 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 1) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 1 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 2) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 8 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 6) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 3 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 7) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 4 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 8) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 9) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 9 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 1) and (j = 7) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 2) and (j = 7) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 5 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 3) and (j = 7) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 3 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 6) and (j = 7) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 4 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 7) and (j = 7) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 1 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 8) and (j = 7) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 9 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 1) and (j = 8) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 4) and (j = 8) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 3 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 5) and (j = 8) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 9 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 7) and (j = 8) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 3) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 6 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 6) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 7) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 8 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end		
			else if (i = 9) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end





			

	 
		
			
	end;
	
procedure Dinsertarnumero; {Procedure para insertar numero en el Sudoku de media dificultad}
	var
	 i,j,num :integer;
begin 
	pass:=1;
			
		{si la posicion es diferente de cero se repite}		
			Repeat
				write('Introduzca la posicion de la columna: ');
							readln(i);
			Until ( i <> 0 );

		{si la posicion es menor a 1 y mayor a 9 el numero no puede ser colocado}	
				if (i < 1) or (i > 9) then
		repeat	
				begin
          writeln('Columna incorrecta. Verifique su opcion.');
					readln(i);
					end;		
		until (i >= 1 ) and (i <= 9);			
				Repeat
				
			write('Introduzca la posicion de la fila: ');
				readln(j); 
			{si la fila es menor a 1 o mayor 9 debe colocar el numero nuevament}	
						if (j < 1) or (j > 9) then
					        begin
          writeln('Fila incorrecta. Verifique su opcion.');
						  readln(j);
							end;		
			until ( j <> 0 );	
				
	     if (cuad[i,j] <> 0) then
				begin
        writeln('Esa casilla no se puede editar.');	
			writeln('Presione ENTER para continuar.');
			readln;
        	clrscr;
				end;
			
			if (i = 1) and (j = 1) then		
				begin
			repeat
			write('Introduzca el numero a insertar: ');
			readln(num);
			Until ( num = 6 );
			cuad[i,j]:=num;
			clrscr;		
						end
			else 
			if (i = 3) and (j = 1) then	
			begin
						textcolor(white);	
			repeat
							write('Introduzca el numero a insertar: ');
							readln(num);
			Until ( num = 9 ) ;		 
			cuad[i,j]:=num;		
			clrscr;
				end		
			else if (i = 4) and (j = 1) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 6) and (j = 1) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 1 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 8) and (j = 1) then	
			begin
						textcolor(white);	
			repeat
							write('Introduzca el numero a insertar: ');
							readln(num);
			Until ( num = 3 ) ;		 
			cuad[i,j]:=num;		
			clrscr;
			end
			else if (i = 9) and (j = 1) then	
			begin
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 4 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 3) and (j = 2) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 4 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 5) and (j = 2) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 5 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 6) and (j = 2) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 3 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end	
			else if (i = 8) and (j = 2) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 8 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end	
			else if (i = 9) and (j = 2) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 6 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end	
			else if (i = 9) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 9) and (j = 8) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 1 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 9) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end		
			else if (i = 1) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 8 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 2) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 3) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 3 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 4) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 6 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 8) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 6) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 7) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 9 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 8) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 5 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 9) and (j = 3) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 9 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 1) and (j = 4) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 5 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 3) and (j = 4) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 4) and (j = 4) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 1 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 6) and (j = 4) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 8 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 7) and (j = 4) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 4 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end	
			else if (i = 8) and (j = 4) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 1) and (j = 5) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 2) and (j = 5) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 3 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 5) and (j = 5) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 6) and (j = 5) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 9 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 7) and (j = 5) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 8 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 8) and (j = 5) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 1 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 2) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 8 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 4) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 3 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 5) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 6) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 5 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 7) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 6 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 8) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 9 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 9) and (j = 6) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 1) and (j = 7) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 1 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 3) and (j = 7) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 4) and (j = 7) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 5 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 6) and (j = 7) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 4 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 7) and (j = 7) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 3 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 8) and (j = 7) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 6 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 1) and (j = 8) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 9 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 3) and (j = 8) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 8 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 4) and (j = 8) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 5) and (j = 8) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 3 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 8) and (j = 8) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 4 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 9) and (j = 8) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 1 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 1) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 3 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 2) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 4 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 3) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 5 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 4) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 8 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 5) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 1 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 6) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 6 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end
			else if (i = 7) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 9 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end	
			else if (i = 8) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 7 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end	
			else if (i = 9) and (j = 9) then	
			begin
								textcolor(white);	
					repeat
									write('Introduzca el numero a insertar: ');
									readln(num);
					Until ( num = 2 ) ;		 
					cuad[i,j]:=num;		
					clrscr;
			end





			

	 
		
			
	end;
	
		
							
procedure Izi;	{Juego de Sudoku de baja dificultad}			
	begin
			Clrscr();
		repeat	
	gotoxy(1,1);
		textcolor(white);
		{Valores de espacios con valores ya espicificados, ordenados como una matriz, se dejaron espacios para simular el sudoku}
cuad[1,1]:=5;										cuad[5,1]:=7;										cuad[9,1]:=4;
cuad[1,2]:=6;			  cuad[3,2]:=9;				cuad[5,2]:=3;cuad[6,2]:=1;			   cuad[8,2]:=5;
cuad[1,3]:=8;						   					     	 cuad[6,3]:=9; 			   cuad[8,3]:=1;
cuad[1,4]:=4;cuad[2,4]:=9;			   cuad[4,4]:=1;						  cuad[7,4]:=8;				cuad[9,4]:=2;
cuad[1,5]:=2;			  cuad[3,5]:=8;							 cuad[6,5]:=6;cuad[7,5]:=7;				cuad[9,5]:=5;
									   cuad[4,6]:=2;cuad[5,6]:=8;cuad[6,6]:=4;cuad[7,6]:=1;
			 cuad[2,7]:=7;cuad[3,7]:=4;							 cuad[6,7]:=8;cuad[7,7]:=5;cuad[8,7]:=6;
cuad[1,8]:=1;						   cuad[4,8]:=7;cuad[5,8]:=6;cuad[6,8]:=3;cuad[7,8]:=4;cuad[8,8]:=2;
cuad[1,9]:=9;cuad[2,9]:=6;


				
	textcolor(lightblue);
	 
	write(' | ');
		TextColor(white);
	write(' 1 2 3   4 5 6   7 8 9');
				TextColor(lightblue);
	writeln(' |');
		writeln('+-=*-----*=*-----*=*-----*+');	
for j := 1 to 9 do
		begin
				for i := 1 to 9 do
			begin
					If (i = 1) Then
				begin
					TextColor(lightblue);
					write('|');
					TextColor(white);
					write(j);
					TextColor(lightblue);
					write('|');					
				end;
				TextColor(lightblue);
				if  (cuad[i ,j] <> 0) Then
			write(' ', cuad[i ,j])
				else
				 write('  ');
				if ((i mod 3) = 0) Then
						begin
							TextColor(lightblue);
							write(' |');
						end;
		end;
			Writeln;
				if ((j mod 3) = 0) Then
					begin
						TextColor(lightblue);
						writeln('+-=*-----*=*-----*=*-----*+');			
					end;		
		end;
textcolor(white);
if  {condiciones que se activara cuando se llenen los espacios vacios para que reconosca que se ha terminado el sudoku con exito}
(cuad[2,1] <> 0) and (cuad[3,1] <> 0) and (cuad[4,1] <> 0) and (cuad[6,1] <> 0) and (cuad[7,1] <> 0) and (cuad[8,1] <> 0) and (cuad[2,2] <> 0) and 
(cuad[4,2] <> 0) and (cuad[7,2] <> 0) and (cuad[9,2] <> 0) and(cuad[2,3] <> 0) and (cuad[3,3] <> 0) and (cuad[4,3] <> 0) and (cuad[5,3] <> 0) and 
(cuad[7,3] <> 0) and (cuad[9,3] <> 0) and (cuad[3,4] <> 0) and (cuad[5,4] <> 0) and (cuad[6,4] <> 0) and (cuad[8,4] <> 0) and (cuad[2,5] <> 0) and
(cuad[4,5] <> 0) and (cuad[5,5] <> 0) and (cuad[8,5] <> 0) and (cuad[1,6] <> 0) and (cuad[2,6] <> 0) and (cuad[3,6] <> 0) and (cuad[8,6] <> 0) and 
(cuad[9,6] <> 0) and (cuad[1,7] <> 0) and (cuad[4,7] <> 0) and (cuad[5,7] <> 0) and (cuad[9,7] <> 0) and (cuad[2,8] <> 0) and (cuad[3,8] <> 0) and 
(cuad[9,8] <> 0) and (cuad[3,9] <> 0) and (cuad[4,9] <> 0) and (cuad[5,9] <> 0) and (cuad[6,9] <> 0) and (cuad[7,9] <> 0) and (cuad[8,9] <> 0) and 
(cuad[9,9] <> 0) and(pass = 1) then writeln('Has terminado Felicidades!');
		writeln('Menu :');
			writeln('1 - Insertar un numero en el sudoku');
			writeln('2 - Rendirse');
		writeln('0 - Salir');
			writeln;
			write('Opcion: ');		

			readln(opcion);
			
	case opcion of
		
				1 :insertarnumero;
				
		2: begin
 			Clrscr();
 			pass := 2;
	gotoxy(1,1);
		textcolor(white); {Sudoku ya completo en caso que el usuario decida rendirse}
cuad[1,1]:=5;cuad[2,1]:=3;cuad[3,1]:=1;cuad[4,1]:=6;cuad[5,1]:=7;cuad[6,1]:=2;cuad[7,1]:=9;cuad[8,1]:=8;cuad[9,1]:=4;
cuad[1,2]:=6;cuad[2,2]:=4;cuad[3,2]:=9;cuad[4,2]:=8;cuad[5,2]:=3;cuad[6,2]:=1;cuad[7,2]:=2;cuad[8,2]:=5;cuad[9,2]:=7;
cuad[1,3]:=8;cuad[2,3]:=2;cuad[3,3]:=7;cuad[4,3]:=5;cuad[5,3]:=4;cuad[6,3]:=9;cuad[7,3]:=6;cuad[8,3]:=1;cuad[9,3]:=3;
cuad[1,4]:=4;cuad[2,4]:=9;cuad[3,4]:=6;cuad[4,4]:=1;cuad[5,4]:=5;cuad[6,4]:=7;cuad[7,4]:=8;cuad[8,4]:=3;cuad[9,4]:=2;
cuad[1,5]:=2;cuad[2,5]:=1;cuad[3,5]:=8;cuad[4,5]:=3;cuad[5,5]:=9;cuad[6,5]:=6;cuad[7,5]:=7;cuad[8,5]:=4;cuad[9,5]:=5;
cuad[1,6]:=7;cuad[2,6]:=5;cuad[3,6]:=3;cuad[4,6]:=2;cuad[5,6]:=8;cuad[6,6]:=4;cuad[7,6]:=1;cuad[8,6]:=9;cuad[9,6]:=6;
cuad[1,7]:=3;cuad[2,7]:=7;cuad[3,7]:=4;cuad[4,7]:=9;cuad[5,7]:=2;cuad[6,7]:=8;cuad[7,7]:=5;cuad[8,7]:=6;cuad[9,7]:=1;
cuad[1,8]:=1;cuad[2,8]:=8;cuad[3,8]:=5;cuad[4,8]:=7;cuad[5,8]:=6;cuad[6,8]:=3;cuad[7,8]:=4;cuad[8,8]:=2;cuad[9,8]:=9;
cuad[1,9]:=9;cuad[2,9]:=6;cuad[3,9]:=2;cuad[4,9]:=4;cuad[5,9]:=1;cuad[6,9]:=5;cuad[7,9]:=3;cuad[8,9]:=7;cuad[9,9]:=8;
					textcolor(lightblue);
	 
	write(' | ');
		TextColor(white);
	write(' 1 2 3   4 5 6   7 8 9');
				TextColor(lightblue);
	writeln(' |');
		writeln('+-=*-----*=*-----*=*-----*+');	
for j := 1 to 9 do
		begin
				for i := 1 to 9 do
			begin
					If (i = 1) Then
				begin
					TextColor(lightblue);
					write('|');
					TextColor(white);
					write(j);
					TextColor(lightblue);
					write('|');					
				end;
				TextColor(lightblue);
				if  (cuad[i ,j] <> 0) Then
			write(' ', cuad[i ,j])
				else
				 write('  ');
				if ((i mod 3) = 0) Then
						begin
							TextColor(lightblue);
							write(' |');
						end;
		end;
			Writeln;
				if ((j mod 3) = 0) Then
					begin
						TextColor(lightblue);
						writeln('---------------------------');	
					end;	
		end;
	textcolor(white);	
	writeln(' - Te has rendido que pena - ');	
	
		end;						
			0 : writeln;
				else writeln('elige uno de los parametros asignados.');
			end;
		until ( opcion = 0 );
			clrscr();
			end;

procedure Med;	{Juego de Sudoku de Media dificultad}				
	begin
			Clrscr();
		repeat	
	gotoxy(1,1);
		textcolor(white);
			 cuad[2,1]:=3;							cuad[5,1]:=7;			  cuad[7,1]:=9;cuad[8,1]:=8;
									   cuad[4,2]:=8;							 		   cuad[8,2]:=5;

			 cuad[2,4]:=6;			   cuad[4,4]:=4;cuad[5,4]:=1;			  cuad[7,4]:=3;
cuad[1,5]:=3;			  cuad[3,5]:=4;										  cuad[7,5]:=5;cuad[8,5]:=6;
						  cuad[3,6]:=5;cuad[4,6]:=7;cuad[5,6]:=6;
									   cuad[4,7]:=2;cuad[5,7]:=8;										cuad[9,7]:=6;
			 cuad[2,8]:=1;cuad[3,8]:=8;							 cuad[6,8]:=6;			   cuad[8,8]:=4;cuad[9,8]:=5;
cuad[1,9]:=4;cuad[2,9]:=9;			  ;cuad[4,9]:=1;cuad[5,9]:=5;						   cuad[8,9]:=3;
				
if 
(cuad[1,1] <> 0) and (cuad[3,1] <> 0) and (cuad[4,1] <> 0) and (cuad[6,1] <> 0) and (cuad[9,1] <> 0) and (cuad[8,1] <> 0) and (cuad[2,2] <> 0) and 
(cuad[4,2] <> 0) and (cuad[7,2] <> 0) and (cuad[9,2] <> 0) and(cuad[2,3] <> 0) and (cuad[3,3] <> 0) and (cuad[4,3] <> 0) and (cuad[5,3] <> 0) and 
(cuad[7,3] <> 0) and (cuad[9,3] <> 0) and (cuad[3,4] <> 0) and (cuad[5,4] <> 0) and (cuad[6,4] <> 0) and (cuad[8,4] <> 0) and (cuad[2,5] <> 0) and
(cuad[4,5] <> 0) and (cuad[5,5] <> 0) and (cuad[8,5] <> 0) and (cuad[1,6] <> 0) and (cuad[2,6] <> 0) and (cuad[3,6] <> 0) and (cuad[8,6] <> 0) and 
(cuad[9,6] <> 0) and (cuad[1,7] <> 0) and (cuad[4,7] <> 0) and (cuad[5,7] <> 0) and (cuad[9,7] <> 0) and (cuad[2,8] <> 0) and (cuad[3,8] <> 0) and 
(cuad[9,8] <> 0) and (cuad[3,9] <> 0) and (cuad[4,9] <> 0) and (cuad[5,9] <> 0) and (cuad[6,9] <> 0) and (cuad[7,9] <> 0) and (cuad[8,9] <> 0) and 
(cuad[9,9] <> 0) and(pass = 1) then writeln('Has terminado Felicidades!');
				
	textcolor(lightblue);
	 
	write(' | ');
		TextColor(white);
	write(' 1 2 3   4 5 6   7 8 9');
				TextColor(lightblue);
	writeln(' |');
		writeln('+-=*-----*=*-----*=*-----*+');	
for j := 1 to 9 do
		begin
				for i := 1 to 9 do
			begin
					If (i = 1) Then
				begin
					TextColor(lightblue);
					write('|');
					TextColor(white);
					write(j);
					TextColor(lightblue);
					write('|');					
				end;
				TextColor(lightblue);
				if  (cuad[i ,j] <> 0) Then
			write(' ', cuad[i ,j])
				else
				 write('  ');
				if ((i mod 3) = 0) Then
						begin
							TextColor(lightblue);
							write(' |');
						end;
		end;
			Writeln;
				if ((j mod 3) = 0) Then
					begin
						TextColor(lightblue);
						writeln('+-=*-----*=*-----*=*-----*+');			
					end;		
		end;
textcolor(white);
		writeln('Menu :');
			writeln('1 - Insertar un numero en el sudoku');
			writeln('2 - Rendirse');
		writeln('0 - Salir');
			writeln;
			write('Opcion: ');		
			readln(opcion);
			
	case opcion of
		
				1 :Minsertarnumero;
				
		2: begin
 			Clrscr();
 			pass := 2;
	gotoxy(1,1);
		textcolor(white);
cuad[1,1]:=5;cuad[2,1]:=3;cuad[3,1]:=1;cuad[4,1]:=6;cuad[5,1]:=7;cuad[6,1]:=2;cuad[7,1]:=9;cuad[8,1]:=8;cuad[9,1]:=4;
cuad[1,2]:=6;cuad[2,2]:=4;cuad[3,2]:=9;cuad[4,2]:=8;cuad[5,2]:=3;cuad[6,2]:=1;cuad[7,2]:=2;cuad[8,2]:=5;cuad[9,2]:=7;
cuad[1,3]:=8;cuad[2,3]:=2;cuad[3,3]:=7;cuad[4,3]:=5;cuad[5,3]:=4;cuad[6,3]:=9;cuad[7,3]:=6;cuad[8,3]:=1;cuad[9,3]:=3;
cuad[1,4]:=9;cuad[2,4]:=6;cuad[3,4]:=2;cuad[4,4]:=4;cuad[5,4]:=1;cuad[6,4]:=5;cuad[7,4]:=3;cuad[8,4]:=7;cuad[9,4]:=8;
cuad[1,5]:=3;cuad[2,5]:=7;cuad[3,5]:=4;cuad[4,5]:=9;cuad[5,5]:=2;cuad[6,5]:=8;cuad[7,5]:=5;cuad[8,5]:=6;cuad[9,5]:=1;
cuad[1,6]:=1;cuad[2,6]:=8;cuad[3,6]:=5;cuad[4,6]:=7;cuad[5,6]:=6;cuad[6,6]:=3;cuad[7,6]:=4;cuad[8,6]:=2;cuad[9,6]:=9;
cuad[1,7]:=7;cuad[2,7]:=5;cuad[3,7]:=3;cuad[4,7]:=2;cuad[5,7]:=8;cuad[6,7]:=4;cuad[7,7]:=1;cuad[8,7]:=9;cuad[9,7]:=6;
cuad[1,8]:=2;cuad[2,8]:=1;cuad[3,8]:=8;cuad[4,8]:=3;cuad[5,8]:=9;cuad[6,8]:=6;cuad[7,8]:=7;cuad[8,8]:=4;cuad[9,8]:=5;
cuad[1,9]:=4;cuad[2,9]:=9;cuad[3,9]:=6;cuad[4,9]:=1;cuad[5,9]:=5;cuad[6,9]:=7;cuad[7,9]:=8;cuad[8,9]:=3;cuad[9,9]:=2;
					textcolor(lightblue);
	 
	write(' | ');
		TextColor(white);
	write(' 1 2 3   4 5 6   7 8 9');
				TextColor(lightblue);
	writeln(' |');
		writeln('+-=*-----*=*-----*=*-----*+');	
for j := 1 to 9 do
		begin
				for i := 1 to 9 do
			begin
					If (i = 1) Then
				begin
					TextColor(lightblue);
					write('|');
					TextColor(white);
					write(j);
					TextColor(lightblue);
					write('|');					
				end;
				TextColor(lightblue);
				if  (cuad[i ,j] <> 0) Then
			write(' ', cuad[i ,j])
				else
				 write('  ');
				if ((i mod 3) = 0) Then
						begin
							TextColor(lightblue);
							write(' |');
						end;
		end;
			Writeln;
				if ((j mod 3) = 0) Then
					begin
						TextColor(lightblue);
						writeln('---------------------------');	
					end;	
		end;
	textcolor(white);	
	writeln(' - Te has rendido que pena - ');	
	
		end;						
			0 : writeln;
				else writeln('elige uno de los parametros asignados.');
			end;
		until ( opcion = 0 );
			clrscr();
			end;

procedure Har;				
	begin
			Clrscr();
		repeat	
	gotoxy(1,1);
		textcolor(white);
cuad[2,1]:=5;cuad[5,1]:=8;cuad[7,1]:=7;
cuad[1,2]:=7;cuad[2,2]:=1;cuad[4,2]:=9;cuad[7,2]:=2;
cuad[4,3]:=6;cuad[5,3]:=4;cuad[7,3]:=1;
cuad[2,4]:=9;cuad[5,4]:=6;cuad[9,4]:=3;
cuad[3,5]:=6;cuad[4,5]:=4;cuad[9,5]:=5;
cuad[1,6]:=4;cuad[3,6]:=1;
cuad[2,7]:=7;cuad[5,7]:=9;cuad[9,7]:=8;
cuad[2,8]:=6;cuad[6,8]:=2;cuad[7,8]:=5;

				
	textcolor(lightblue);
	 
	write(' | ');
		TextColor(lightcyan);
	write(' 1 2 3   4 5 6   7 8 9');
				TextColor(lightblue);
	writeln(' |');
		writeln('+-=*-----*=*-----*=*-----*+');	
for j := 1 to 9 do
		begin
				for i := 1 to 9 do
			begin
					If (i = 1) Then
				begin
					TextColor(lightblue);
					write('|');
					TextColor(Lightcyan);
					write(j);
					TextColor(lightblue);
					write('|');					
				end;
				TextColor(lightblue);
				if  (cuad[i ,j] <> 0) Then
			write(' ', cuad[i ,j])
				else
				 write('  ');
				if ((i mod 3) = 0) Then
						begin
							TextColor(lightblue);
							write(' |');
						end;
		end;
			Writeln;
				if ((j mod 3) = 0) Then
					begin
						TextColor(lightblue);
						writeln('+-=*-----*=*-----*=*-----*+');			
					end;		
		end;
textcolor(white);
if 
(cuad[1,1] <> 0) and (cuad[3,1] <> 0) and (cuad[4,1] <> 0) and (cuad[6,1] <> 0) and (cuad[8,1] <> 0) and (cuad[9,1] <> 0) and (cuad[3,2] <> 0) and 
(cuad[5,2] <> 0) and (cuad[6,2] <> 0) and (cuad[7,2] <> 0) and(cuad[8,2] <> 0) and (cuad[9,2] <> 0) and (cuad[8,3] <> 0) and (cuad[9,3] <> 0) and 
(cuad[6,3] <> 0) and (cuad[4,3] <> 0) and (cuad[3,3] <> 0) and (cuad[2,3] <> 0) and (cuad[1,3] <> 0) and (cuad[1,4] <> 0) and (cuad[3,4] <> 0) and
(cuad[4,4] <> 0) and (cuad[6,4] <> 0) and (cuad[7,4] <> 0) and (cuad[8,4] <> 0) and (cuad[1,5] <> 0) and (cuad[1,6] <> 0) and (cuad[1,7] <> 0) and 
(cuad[1,8] <> 0) and (cuad[1,9] <> 0) and (cuad[2,5] <> 0) and (cuad[5,5] <> 0) and (cuad[6,5] <> 0) and (cuad[7,5] <> 0) and (cuad[8,5] <> 0) and 
(cuad[2,6] <> 0) and (cuad[4,6] <> 0) and (cuad[5,6] <> 0) and (cuad[6,6] <> 0) and (cuad[7,6] <> 0) and (cuad[8,6] <> 0) and (cuad[9,6] <> 0) and 
(cuad[3,7] <> 0) and (cuad[4,7] <> 0) and (cuad[6,7] <> 0) and (cuad[7,7] <> 0) and (cuad[8,7] <> 0) and (cuad[3,8] <> 0) and (cuad[4,8] <> 0) and
(cuad[5,8] <> 0) and (cuad[8,8] <> 0) and (cuad[9,8] <> 0) and (cuad[2,9] <> 0) and (cuad[3,9] <> 0) and (cuad[4,9] <> 0) and (cuad[5,9] <> 0) and 
(cuad[6,9] <> 0) and (cuad[7,9] <> 0) and (cuad[8,9] <> 0) and (cuad[9,9] <> 0) and(pass = 1) then writeln('Has terminado Felicidades!');
		writeln('Menu :');
			writeln('1 - Insertar un numero en el sudoku');
			writeln('2 - Rendirse');
		writeln('0 - Salir');
			writeln;
			write('Opcion: ');		
			readln(opcion);
			
	case opcion of
		
				1 :Dinsertarnumero;
				
		2: begin
 			Clrscr();
 			pass := 2;
	gotoxy(1,1);
		textcolor(white);
cuad[1,1]:=6;cuad[2,1]:=5;cuad[3,1]:=9;cuad[4,1]:=2;cuad[5,1]:=8;cuad[6,1]:=1;cuad[7,1]:=7;cuad[8,1]:=3;cuad[9,1]:=4;
cuad[1,2]:=7;cuad[2,2]:=1;cuad[3,2]:=4;cuad[4,2]:=9;cuad[5,2]:=5;cuad[6,2]:=3;cuad[7,2]:=2;cuad[8,2]:=8;cuad[9,2]:=6;
cuad[1,3]:=8;cuad[2,3]:=2;cuad[3,3]:=3;cuad[4,3]:=6;cuad[5,3]:=4;cuad[6,3]:=7;cuad[7,3]:=1;cuad[8,3]:=5;cuad[9,3]:=9;
cuad[1,4]:=5;cuad[2,4]:=9;cuad[3,4]:=7;cuad[4,4]:=1;cuad[5,4]:=6;cuad[6,4]:=8;cuad[7,4]:=4;cuad[8,4]:=2;cuad[9,4]:=3;
cuad[1,5]:=2;cuad[2,5]:=3;cuad[3,5]:=6;cuad[4,5]:=4;cuad[5,5]:=7;cuad[6,5]:=9;cuad[7,5]:=8;cuad[8,5]:=1;cuad[9,5]:=5;
cuad[1,6]:=4;cuad[2,6]:=8;cuad[3,6]:=1;cuad[4,6]:=3;cuad[5,6]:=2;cuad[6,6]:=5;cuad[7,6]:=6;cuad[8,6]:=9;cuad[9,6]:=7;
cuad[1,7]:=1;cuad[2,7]:=7;cuad[3,7]:=2;cuad[4,7]:=5;cuad[5,7]:=9;cuad[6,7]:=4;cuad[7,7]:=3;cuad[8,7]:=6;cuad[9,7]:=8;
cuad[1,8]:=9;cuad[2,8]:=6;cuad[3,8]:=8;cuad[4,8]:=7;cuad[5,8]:=3;cuad[6,8]:=2;cuad[7,8]:=5;cuad[8,8]:=4;cuad[9,8]:=1;
cuad[1,9]:=3;cuad[2,9]:=4;cuad[3,9]:=5;cuad[4,9]:=8;cuad[5,9]:=1;cuad[6,9]:=6;cuad[7,9]:=9;cuad[8,9]:=7;cuad[9,9]:=2;
					textcolor(lightblue);
	 
	write(' | ');
		TextColor(lightcyan);
	write(' 1 2 3   4 5 6   7 8 9');
				TextColor(lightblue);
	writeln(' |');
		writeln('+-=*-----*=*-----*=*-----*+');	
for j := 1 to 9 do
		begin
				for i := 1 to 9 do
			begin
					If (i = 1) Then
				begin
					TextColor(lightblue);
					write('|');
					TextColor(Lightcyan);
					write(j);
					TextColor(lightblue);
					write('|');					
				end;
				TextColor(lightblue);
				if  (cuad[i ,j] <> 0) Then
			write(' ', cuad[i ,j])
				else
				 write('  ');
				if ((i mod 3) = 0) Then
						begin
							TextColor(lightblue);
							write(' |');
						end;
		end;
			Writeln;
				if ((j mod 3) = 0) Then
					begin
						TextColor(lightblue);
						writeln('---------------------------');	
					end;	
		end;
	textcolor(white);	
	writeln(' - Te has rendido que pena - ');	
	
		end;						
			0 : writeln;
				else writeln('elige uno de los parametros asignados.');
			end;
		until ( opcion = 0 );
			clrscr();
			end;


procedure Dificultad; {Procedure para seleccionar la dificultad}
begin
writeln(' -----------------------');
writeln('| Selecciona una Dificultad |');
writeln(' -----------------------');
writeln('| 1. Facil              |');
writeln(' -----------------------');
writeln('| 2. Normal             |');
writeln(' -----------------------');
writeln('| 3. Dificil            |');
writeln(' -----------------------');
readln(Dif);
if Dif = 1 then
Izi
else if Dif = 2 then
Med
else if Dif = 3 then
Har
end;

begin {Cuerpo del programa donde se muestra un menu para empezar a jugar}
pass:= 0;
repeat
clrscr;
writeln('    ---------------');
writeln('   |  Juega Sudoku  |');
writeln('    ---------------');
writeln(' -----------------------');
writeln('| Selecciona una opcion |');
writeln(' -----------------------');
writeln('| 1. Jugar              |');
writeln(' -----------------------');
writeln('| 0. Salir              |');
writeln(' -----------------------');readln(o);
if o = 1 then
Dificultad
else if o = 0 then
writeln('Hasta la proxima')
else if o <> 1 or 0 then
writeln('Seleccione una opcion del menu');readln();
until o = 1 or 0;

end.

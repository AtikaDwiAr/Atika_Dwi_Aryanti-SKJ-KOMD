all: multiplication.exe

multiplication.exe: multiplication.cpp
	g++ -o multiplication.exe multiplication.cpp

dump: multiplication.exe
	objdump -d multiplication.exe > multiplication.exe.asm

clean:
	rm -f multiplication.exe multiplication.exe.asm

run: multiplication.exe
	./multiplication.exe

<div align="center">
<h1>Simple Bash Utils: cat</h1>
  <img src="cat.png" alt="alt text">
</div>


## Использование cat

**cat** - одна из наиболее часто используемых команд в Unix-подобных операционных системах. Команда имеет три взаимосвязанные функции в отношении текстовых файлов: отображение, объединение их копий и создание новых.

`cat [OPTION] [FILE]...`

| Опции | Описание |
| ------ | ------ |
| -b | нумерует только непустые строки |
| -e | также отображает символы конца строки как $  |
| -n | нумерует все выходные строки |
| -s | сжимает несколько смежных пустых строк |
| -t | также отображает табы как ^I |


## Работа с утилитой cat

Тебе необходимо разработать утилиту cat:
- Она должна поддерживать все флаги (включая GNU версии)
- Исходные, заголовочные и сборочный файлы должны располагаться в директории src/cat/
- Итоговый исполняемый файл должен располагаться в директории src/cat/ и называться s21_cat

# MAN

## NAME
     cat – concatenate and print files

## SYNOPSIS
     cat [-belnstuv] [file ...]

## DESCRIPTION
     The cat utility reads files sequentially, writing them to the standard output.  The file operands are processed in command-line order.  If
     file is a single dash (‘-’) or absent, cat reads from the standard input.  If file is a UNIX domain socket, cat connects to it and then
     reads it until EOF.  This complements the UNIX domain binding capability available in inetd(8).

     The options are as follows:

     -b      Number the non-blank output lines, starting at 1.

     -e      Display non-printing characters (see the -v option), and display a dollar sign (‘$’) at the end of each line.

     -l      Set an exclusive advisory lock on the standard output file descriptor.  This lock is set using fcntl(2) with the F_SETLKW command.
             If the output file is already locked, cat will block until the lock is acquired.

     -n      Number the output lines, starting at 1.

     -s      Squeeze multiple adjacent empty lines, causing the output to be single spaced.

     -t      Display non-printing characters (see the -v option), and display tab characters as ‘^I’.

     -u      Disable output buffering.

     -v      Display non-printing characters so they are visible.  Control characters print as ‘^X’ for control-X; the delete character (octal
             0177) prints as ‘^?’.  Non-ASCII characters (with the high bit set) are printed as ‘M-’ (for meta) followed by the character for the
             low 7 bits.

## EXIT STATUS
     The cat utility exits 0 on success, and >0 if an error occurs.

## EXAMPLES
| Command | Output |
| ------ | ------ |
|```cat file1```|```will print the contents of file1 to the standard output. ```|
|```cat file1 file2 > file3```|```will sequentially print the contents of file1 and file2 to the file file3, truncating file3 if it already exists.  See the manual page for your shell (e.g., sh(1)) for more information on redirection.```|
|```cat file1 - file2 - file3```|```will print the contents of file1, print data it receives from the standard input until it receives an EOF (‘^D’) character, print the contents of file2, read and output contents of the standard input again, then finally output the contents of file3.  Note that if the standard input referred to a file, the second dash on the command-line would have no effect, since the entire contents of the file would have already been read and printed by cat when it encountered the first ‘-’ operand.```|

## STANDARDS
     The cat utility is compliant with the IEEE Std 1003.2-1992 (“POSIX.2”) specification.

     The flags [-belnstv] are extensions to the specification.

## HISTORY
     A cat utility appeared in Version 1 AT&T UNIX.  Dennis Ritchie designed and wrote the first man page.  It appears to have been for cat.

## BUGS
     Because of the shell language mechanism used to perform output redirection, the command “cat file1 file2 > file1” will cause the original
     data in file1 to be destroyed!

     The cat utility does not recognize multibyte characters when the -t or -v option is in effect.
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

## MANUAL

     The options are as follows:

     -b      Number the non-blank output lines, starting at 1.

     -e      Display non-printing characters (see the -v option), and display a dollar sign (‘$’) at the end of each line.

     -n      Number the output lines, starting at 1.

     -s      Squeeze multiple adjacent empty lines, causing the output to be single spaced.

     -t      Display non-printing characters (see the -v option), and display tab characters as ‘^I’.

     -v      Display non-printing characters so they are visible.  Control characters print as ‘^X’ for control-X; the delete character
             (octal 0177) prints as ‘^?’.  Non-ASCII characters (with the high bit set) are printed as ‘M-’ (for meta) followed by the
             character for the low 7 bits.
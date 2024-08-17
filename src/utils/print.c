#include "../includes/libs.h"

void fn_read_and_write(int fd) {
  char buffer;

  buffer = 0;
  while (read(fd, &buffer, 1) > 0)
    write(1, &buffer, 1);
  if (read(fd, &buffer, 1) < 0)
    write(2, "Error while reading file.\n", 26);
}
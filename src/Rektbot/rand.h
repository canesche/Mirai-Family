#pragma once

#include <stdint.h>

void rand_init(void);
uint32_t rand_next(void);
void rand_str(char *, int);

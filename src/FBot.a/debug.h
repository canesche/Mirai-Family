#pragma once

// Choose to either define DEBUG_PRINT or exclude

#ifdef DEBUG
#define DEBUG_PRINT(fmt, ...) printf("%s():%d:" fmt, __func__, __LINE__, ##__VA_ARGS__)
#endif

#ifndef DEBUG
#define DEBUG_PRINT(...)
#endif

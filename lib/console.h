#pragma once

#ifdef __cplusplus
extern "C" {
#endif

    void __putc(char chr);

    char __getc();

    extern "C" void console_handler();

#ifdef __cplusplus
}
#endif
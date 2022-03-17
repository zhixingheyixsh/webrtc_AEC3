#include <stdio.h>
#include <stdint.h>
#include "print_tool.h"

ProgressBar::ProgressBar() {
    bar[0] = '\0';
}
void ProgressBar::print_bar(float pro) {
    int16_t i = static_cast<int16_t>(pro * 100);
    printf("[%-101s][%d%%][%c]\r",bar,i,lable[i%4]);//%-101s表示字符串靠左输出空出101格，\r回车符跳到行首
    fflush(stdout); //刷新标准输出流
    bar[i++] = '=';// = 表示进度条已经走过的部分
    bar[i] = '\0';
}

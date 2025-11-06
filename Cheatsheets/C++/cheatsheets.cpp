// 给指定的内存空间起名
#include <iostream>
using namespace std;
int main() {
    // 变量创建的语法： 数据类型 变量名 = 变量初始值
    int a = 10;
    cout << a << endl;
    system("pause");
    return 0;
}

// 常量 - 用于记录程序中不可更改的数据

// 常量定义方式
// #define 宏常量
// const修饰的变量

#define day 7

int main() {
    cout<<"一周有"<< day << "天" <<endl;

    const int month = 12;
    cout<< month <<endl;

    system("pause");
    return 0;
}

// 关键字 - 在定义变量或常量时，不要使用关键字


// 数据类型 - 整型
int main() {
    int a = 10; // 4字节   -32768 - 32768
    short b = 10; // 2字节    -2147483647 - 2147483647
    long c = 10; // Windows下4字节，Linux下4字节（32位），8字节（64位）
    long long d = 10; // 8字节
}

// sizeof关键字
int main() {
    cout << sizeof(short) << endl;
    cout << sizeof(int) << endl;
    cout << sizeof(long) << endl;
    cout << sizeof(long long) << endl;
    cout << sizeof(float) << endl;
    cout << sizeof(double) << endl;
    cout << sizeof(long double) << endl;
    cout << sizeof(char) << endl;
    cout << sizeof(bool) << endl;
    cout << sizeof(void*) << endl;

    system("pause");
    return 0;
}
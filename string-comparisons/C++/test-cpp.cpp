#include <fstream>
#include <chrono>
#include <string>
#include <streambuf>
// #include <algorithm>
#include <time.h>
#include <regex>
#include <iostream>
#include <cctype>
// #include <cstring>
// #include <cstdio>

int main () {

    std::ifstream in("../string-10m.txt");
    std::string str((std::istreambuf_iterator<char>(in)), 
        std::istreambuf_iterator<char>());
    in.close();
    int i=0;
    char c;

    auto start = std::chrono::high_resolution_clock::now();


    // // regex 1 
    // std::regex ex("bab{3}");
    // // regex 2
    // std::regex ex("bbbba+");
    // // regex 3
    // std::regex ex("bbbbb|aaaaa");
    // // regex 4
    // std::regex ex("bab{3}|bbbba+");
    // // regex 5
    // std::regex ex("(bbbbb|aaaaa)+");
    // std::sregex_iterator(str.begin(), str.end(), ex);

    // // --------- concatenate ---------
    // str.append("a");

    // --------- equals ---------
    // std::string str2 = str;
    // str2.append("a");
    // str.compare(str2);

    // // --------- copy/duplicate ---------
    // std::string str2 = std::string(str);

    // // --------- uppercase ---------
    // while (str[i]) {
    //     c=str[i];
    //     toupper(c);
    //     i++;
    // }

    // // --------- strrev/reverse string ---------
    // std::reverse(std::begin(str), std::end(str));

    // // --------- find first index of substring ---------
    // std::string str2 = "abba";
    // str.find(str2);
    
    // // --------- sort ---------
    // std::sort(str.begin(),str.end());
 
    auto end = std::chrono::high_resolution_clock::now();

    std::ofstream savefile;
    savefile.open("times-file.txt",std::ios_base::app);
    savefile << std::chrono::duration_cast<std::chrono::nanoseconds>(end-start).count();
    savefile << "\n";
    savefile.close();

    return 0;
}

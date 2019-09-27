package main

import (
	"fmt"
	"time"
	"strings"
	"io/ioutil"
	"sort"
	"os"
	// "regexp"
)

func main() {

	b, err := ioutil.ReadFile("../string-100m.txt") 
    if err != nil {
        fmt.Print(err)
	}
	
	str := string(b)

	start := time.Now()


	// // --------- regex 1 ---------
	// re := regexp.MustCompile(`bab{3}`)
	// // --------- regex 2 ---------
	// re := regexp.MustCompile(`bbbba+`)
	// // --------- regex 3 ---------
	// re := regexp.MustCompile(`bbbbb|aaaaa`)
	// // --------- regex 4 ---------
	// re := regexp.MustCompile(`bab{3}|bbbba+`)
	// // --------- regex 5 ---------
	// re := regexp.MustCompile(`(bbbbb|aaaaa)+`)
	// matches := re.FindAllString(str,-1)

	// --------- concat ---------
	// var concat_s = str+"CCCC"
	// _ = concat_s

	// --------- replace/modify ---------
	// strings.ReplaceAll(str, "abba", "CCCC")

	// --------- equals ---------
	// var s2 string = str
	// s2 = s2+"a"

	// if str == s2 {
	// } else {
	// }

	// // --------- upper ---------
	// strings.ToUpper(str)

	// // --------- find first index of substring ---------
	// strings.Index(str, "abba")

	// // --------- sort ---------
	// str2 := strings.Split(str,"")
	// sort.Strings(str2)

	// --------- copy ---------
	// str2 := str

	// _ = len(str2)
	// _ = str2

	// fmt.Println(str2)
	end := fmt.Sprintf("%d",time.Since(start))


	f, err := os.OpenFile("times-file.txt", os.O_APPEND|os.O_WRONLY, 0600)
	if err != nil {
		panic(err)
	}

	defer f.Close()

	if _, err = f.WriteString(end); err != nil {
		panic(err)
	}
	if _, err = f.WriteString("\n"); err != nil {
		panic(err)
	}

}
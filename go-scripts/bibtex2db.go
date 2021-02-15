package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"path/filepath"
	"strconv"
	"strings"
)

var lit = []map[string]string{}

func parse(path string, tableName string, appendFile bool){
	path, _ = filepath.Abs(path)
	content, err := ioutil.ReadFile(path)
	if err != nil {
		fmt.Printf("\033[1;31m%s\033[0m\n", "[Error] Reading File: "+ err.Error())
		os.Exit(1)
	}
	item := map[string]string{}
	for _, str := range strings.SplitAfter(string(content), "\n"){
		switch  {
		case strings.TrimSpace(str) == "}":
			lit = append(lit, item)
			item = map[string]string{}
		case strings.HasPrefix(str, "author"):
			item["author"] = removeBraces(strings.SplitN(str, "=", 2)[1])
		case strings.HasPrefix(str, "title"):
			item["title"] = removeBraces(strings.SplitN(str, "=", 2)[1])
		case strings.HasPrefix(str, "doi"):
			item["doi"] = removeBraces(strings.SplitN(str, "=", 2)[1])
		case strings.HasPrefix(str, "year"):
			item["year"] = removeBraces(strings.SplitN(str, "=", 2)[1])
		case strings.HasPrefix(str, "url"):
			item["url"] = removeBraces(strings.SplitN(str, "=", 2)[1])
		case strings.HasPrefix(str, "abstract"):
			item["abstract"] = removeBraces(strings.SplitN(str, "=", 2)[1])
		}

	}
	//prettyPrint()
	importData(tableName, lit, appendFile)
	fmt.Printf("\033[1;32m%s\033[0m\n", "[Success] Imported " + strconv.Itoa(len(lit)) + " Items to Table " + tableName)
}

func removeBraces(str string) string {
	return strings.TrimSuffix(strings.TrimSpace(strings.ReplaceAll(strings.ReplaceAll(str, "{", ""), "}", "")), ",")
}

func prettyPrint() {
	for i, x := range lit {
		fmt.Printf("Item %d\n", i)
		for k, v := range x {
			fmt.Printf("%*s: %s\n", 15, k, v)
		}
		if i+1 != len(lit) {
			fmt.Println()
		}
	}
}
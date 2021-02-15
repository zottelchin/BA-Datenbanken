package main

import (
	"bytes"
	"database/sql"
	"fmt"
	_ "github.com/lib/pq"
	"io/ioutil"
	"os"
	"os/exec"
	"strings"
	"time"
)

// Connectionstring: postgres://username:password@host:port/database?sslmode=disable
const url = "postgres://" + user + ":" + password + "@" + host + ":" + port + "/" + database + "?sslmode=disable"
const user = "postgres"
const password = "geheim"
const host = "localhost"
const port = "7788"
const database = "bachelor"
const container = "db"

var db *sql.DB
var columns = []string{"author", "title", "doi", "year", "abstract", "url"}

func connect() *sql.DB {
	if db == nil {
		var err error
		db, err = sql.Open("postgres", url)
		if err != nil {
			fmt.Printf("\033[1;31m%s\033[0m\n", "[Error] Connecting to Databse: "+ err.Error())
			os.Exit(2)
		}
	}
	return db
}

func importData(table string, data []map[string]string, appendFile bool) {
	if appendFile {
		backup("before-table-"+table+"-appended")
		// TODO: Test if Table exists
	}else {
		backup("before-table-"+table+"-created")
		columnsExt := []string{}
		for _, x := range columns {
			columnsExt = append(columnsExt, x + " TEXT")
		}
		_, err := connect().Exec("CREATE TABLE " + table + "(id SERIAL PRIMARY KEY, " + strings.Join(columnsExt, ", ") + ");")
		if err != nil {
			fmt.Printf("\033[1;31m%s\033[0m\n", "[Error] Creating Table: "+ err.Error())
			os.Exit(1)
		}
	}
	for _, item := range data {
		values := []string{}
		for _, column := range columns {
			values = append(values, strings.ReplaceAll(item[column], "'", "''"))
		}
		cmd := fmt.Sprintf("INSERT INTO %s (%s) VALUES ('%s');", table, strings.Join(columns, ", "), strings.Join(values, "', '"))
		_, err := connect().Exec(cmd)
		if err != nil {
			fmt.Printf("\033[1;31m%s\033[0m\n", "[Error] Importing to Databse: "+ err.Error())
			fmt.Printf("%s\n", cmd)
			fmt.Printf("Item: %+v\n", item)
			connect().Exec("DROP TABLE " + table)
			// ToDo: Not drop table if append
			os.Exit(1)
		}
	}
	if appendFile {
		backup("after-table-"+table+"-appended")
	}else{
		backup("after-table-"+table+"-created")
	}
}

func backup(reason string) {
	c := exec.Command("docker-compose", "exec", "-T", container, "pg_dump", "-U", user, database)
	var errbuf bytes.Buffer
	c.Stderr = &errbuf
	out, err := c.Output()
	stderr, _ := errbuf.ReadString(0)
	errout := strings.TrimSpace(string(stderr))

	if  err!= nil {
		if exitError, ok := err.(*exec.ExitError); ok {
			fmt.Println(errout)
			os.Exit(exitError.ExitCode())
		}
		fmt.Println(err.Error())
	}
	if _, err := os.Stat("../backups"); os.IsNotExist(err) {
		os.Mkdir("../backups", 0755)
	}
	filename := "../backups/"+time.Now().Format("02.01.2006-15:04-") + reason + ".sql"
	if _, err := os.Stat(filename); !os.IsNotExist(err) {
		fmt.Printf("\033[1;31m%s\033[0m\n", "[Error] Backupfile allready existing!")
		os.Exit(1)
		return
	}
	ioutil.WriteFile(filename, out, 0755)
}
func createDump() {
	backup("manual")
}

func export(table string) {
	c := exec.Command("docker-compose", "exec", "-T", container, "psql", "-U", user, "-d", database, "-c",
		fmt.Sprintf("COPY %s TO STDOUT WITH CSV HEADER", table))

	var errbuf bytes.Buffer
	c.Stderr = &errbuf
	out, err := c.Output()
	stderr, _ := errbuf.ReadString(0)
	if  err!= nil {
		if exitError, ok := err.(*exec.ExitError); ok {
			fmt.Println(strings.TrimSpace(string(stderr)))
			os.Exit(exitError.ExitCode())
		}
		fmt.Println(err.Error())
	}

	if _, err := os.Stat("../exports"); os.IsNotExist(err) {
		os.Mkdir("../exports", 0755)
	}
	filename := "../exports/export-" + table + "-at-" + time.Now().Format("02.01.2006-15:04") + ".csv"
	if _, err := os.Stat(filename); !os.IsNotExist(err) {
		fmt.Printf("\033[1;31m%s\033[0m\n", "[Error] Backupfile allready existing!")
		os.Exit(1)
		return
	}
	ioutil.WriteFile(filename, out, 0755)
	dump(table)
}

func dump(table string) {
	c := exec.Command("docker-compose", "exec", "-T", container, "pg_dump", "-U", user, "-t", table, database)

	var errbuf bytes.Buffer
	c.Stderr = &errbuf
	out, err := c.Output()
	stderr, _ := errbuf.ReadString(0)
	if  err!= nil {
		if exitError, ok := err.(*exec.ExitError); ok {
			fmt.Println(strings.TrimSpace(string(stderr)))
			os.Exit(exitError.ExitCode())
		}
		fmt.Println(err.Error())
	}

	if _, err := os.Stat("../exports"); os.IsNotExist(err) {
		os.Mkdir("../exports", 0755)
	}
	filename := "../exports/export-" + table + "-at-" + time.Now().Format("02.01.2006-15:04") + ".sql"
	if _, err := os.Stat(filename); !os.IsNotExist(err) {
		fmt.Printf("\033[1;31m%s\033[0m\n", "[Error] Backupfile allready existing!")
		os.Exit(1)
		return
	}
	ioutil.WriteFile(filename, out, 0755)
}
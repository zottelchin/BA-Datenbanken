package main

import (
	"fmt"
	"github.com/gin-gonic/gin"
)

var tableName string
var length = 0
var pointer = 0
var content = map[int]map[string]string{}

func selectPapers(table string) {
	tableName = table
	initialize()
	router := gin.Default()
	router.GET("/", getNext)
	router.DELETE("/:id", del)
}

func getNext(c *gin.Context) {

}

func del(c *gin.Context) {
	id := c.Param("id")
	connect().Exec("DELETE FROM " + tableName + " WHERE id = " + id)
	c.Status(200)
}

func initialize() {
	connect().QueryRow("select count(*) as Anzahl from " + tableName).Scan(&length)
	fmt.Printf("Anzahl der Zeilen in der Tabelle %s: %d\n", tableName, length)

	connect().Query("select id, title, ")
}
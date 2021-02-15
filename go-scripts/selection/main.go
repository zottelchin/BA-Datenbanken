package main

import (
	"database/sql"
	"fmt"
	"github.com/gin-gonic/gin"
	_ "github.com/lib/pq"
)

var db *sql.DB

func main() {
	var err error
	db, err = sql.Open("postgres", "postgres://postgres:geheim@localhost:7788/bachelor?sslmode=disable")
	if err != nil {
		panic(err)
	}

	r := gin.Default()

	r.StaticFile("/", "index.html")
	r.GET("/all", getAll)
	r.POST("/:id", move)
	r.DELETE("/:id", del)
	r.Run(":8080")
}

type Entry struct {
	ID int
	Title string
	Abstract string
	DOI string
}

func getAll(c *gin.Context) {
	res := []Entry{}

	rows, err := db.Query("SELECT id, title, abstract, doi FROM " + "automatic_search" + " ORDER BY id ASC")
	if err != nil {
		panic(err)
	}
	defer rows.Close()
	for rows.Next() {
		e := Entry{}
		rows.Scan(&e.ID, &e.Title, &e.Abstract, &e.DOI)
		res = append(res, e)
	}
	c.JSON(200, res)
}

func move(c *gin.Context) {
	_, err := db.Exec("INSERT INTO selection_1 (author, title, doi, year, abstract, url) SELECT S.author, S.title, S.doi, S.year, S.abstract, S.url FROM automatic_search AS S WHERE S.id = " + c.Param("id"))
	if err != nil {
		fmt.Printf("Err: %s\n", err.Error())
		c.Status(500)
		return
	}
	del(c)
}

func del(c *gin.Context) {
	_, err := db.Exec("Delete from automatic_search where id = "+ c.Param("id"))
	if err != nil {
		fmt.Printf("Err: %s\n", err.Error())
		c.Status(500)
		return
	}
	c.Status(200)
}

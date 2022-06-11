package main

import (
	"fmt"

	"github.com/gin-gonic/gin"
)

func main() {

	/* global error handler using mapping idea... */
	// m := make(map[error]func())
	// m[errors.New("ERROR NOW")] = func(){...}

	app := gin.New()
	app.Use(func(ctx *gin.Context) {
		fmt.Printf("====================== middleware running ======================\n")
	})
	app.Use(gin.Logger(), gin.Recovery())

	r := app.Group("/v1/") 
	{
		r.POST("/ping/", func(ctx *gin.Context) {
			ctx.JSON(200, gin.H{
						"message": "pong",
						"yak-kin": "pad-tai",
						"mai-yak-kin": "pad-ka-pao",
					})
		})
	}

	app.Run() // default port in Gin is :8080
}

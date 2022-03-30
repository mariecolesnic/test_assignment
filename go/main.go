package main

import (
	"fmt"
	"net/http"
)	

func singleChecker(resource string, c chan int){
	get_resource, err := http.Get(resource)
		if err != nil{
			fmt.Println(err)
			panic("A problem with the resource has ocurred")
		}
	c <- get_resource.StatusCode
}

func checkResources(resources []string) ([]int, error){
	c := make(chan int)
	result := []int{}
	for _, resource := range resources {
		go singleChecker(resource, c)
		result = append(result, <-c)
	}
	return result, nil
	}	


func main(){
	val, err :=  checkResources([]string{"https://www.google.com/", "https://mariecolesnic.com", "https://www.point.md"})
	if err != nil {
        fmt.Println(err)
		return
	}
    fmt.Println(val)
}
	
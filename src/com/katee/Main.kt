package com.katee

fun main(args: Array<String>) {
    if (args.isEmpty()) {
        println("No Args!!!")
        System.exit(  0)
    }else if(args.size ==1) {
        System.exit(1)
    }else if(args.size ==2) {
        System.exit(2)
    } else {
        args.forEach { println(it) }

            System.exit( 100)
    }
}
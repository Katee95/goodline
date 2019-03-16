package com.katee

fun main(args: Array<String>) {
    if (args.isEmpty()) {
        println("No Args!!!")
    }else {
        args.forEach { println(it) }
    }
}
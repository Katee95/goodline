package com.katee

import kotlin.system.exitProcess

fun main(args: Array<String>) {
    val status : Int
    when {
        args.isEmpty() -> {
            println("No Args!!!")
            status = 0
        }
        args.size ==1 -> status = 1
        args.size ==2 -> status = 2
        else -> {
            args.forEach { println(it) }
            status = 3
        }
    }
    System.exit(status)
}
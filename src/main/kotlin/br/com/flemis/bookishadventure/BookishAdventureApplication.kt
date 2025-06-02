package br.com.flemis.bookishadventure

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.context.annotation.Profile

@Profile("dev | prod")
@SpringBootApplication
class BookishAdventureApplication

fun main(args: Array<String>) {
    runApplication<BookishAdventureApplication>(*args)

}


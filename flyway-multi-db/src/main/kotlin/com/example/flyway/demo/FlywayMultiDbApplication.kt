package com.example.flyway.demo

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.context.properties.ConfigurationPropertiesScan
import org.springframework.boot.runApplication

@SpringBootApplication
@ConfigurationPropertiesScan
class FlywayMultiDbApplication

fun main(args: Array<String>) {
	runApplication<FlywayMultiDbApplication>(*args)
}

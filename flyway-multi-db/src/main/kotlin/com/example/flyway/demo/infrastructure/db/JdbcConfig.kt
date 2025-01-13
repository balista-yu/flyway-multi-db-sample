package com.example.flyway.demo.infrastructure.db

import org.springframework.boot.context.properties.ConfigurationProperties
import org.springframework.boot.jdbc.DataSourceBuilder
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import javax.sql.DataSource

@Configuration
class JdbcConfig {

    @Bean("firstDataSource")
    @ConfigurationProperties("spring.datasource.first")
    fun createFirstDataSource(): DataSource {
        return DataSourceBuilder.create().build()
    }

    @Bean("secondDataSource")
    @ConfigurationProperties("spring.datasource.second")
    fun createSecondDataSource(): DataSource {
        return DataSourceBuilder.create().build()
    }
}

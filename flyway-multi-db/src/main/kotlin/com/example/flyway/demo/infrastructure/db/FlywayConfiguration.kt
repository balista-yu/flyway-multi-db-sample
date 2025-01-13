package com.example.flyway.demo.infrastructure.db

import org.flywaydb.core.Flyway
import org.springframework.beans.factory.annotation.Qualifier
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import javax.sql.DataSource

@Configuration
class FlywayConfiguration {

    @Bean(name = ["firstFlyway"], initMethod = "migrate")
    fun createFirstFlyway(@Qualifier("firstDataSource") dataSource: DataSource): Flyway {
        return Flyway.configure()
            .dataSource(dataSource)
            .locations("db/migration/first")
            .load()
    }

    @Bean(name = ["secondFlyway"], initMethod = "migrate")
    fun createSecondFlyway(@Qualifier("secondDataSource") dataSource: DataSource): Flyway {
        return Flyway.configure()
            .dataSource(dataSource)
            .locations("db/migration/second")
            .load()
    }
}

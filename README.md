# Schema Versioning

### Project structure

```
/liquibase-demo/src/
└──main
    └──resources
        └──changelog
```

### Setting up schema.
 - Need to have an existing empty database schema to begin using Liquibase changesets.
 - Configure the connection details, use below mentioned sample to begin with.

### Configuration

```shell
changeLogFile: src/main/resources/changelog/master.xml
driver: com.mysql.jdbc.Driver
url: jdbc:mysql://remotemysql.com:3306/MNJ1sfN9e1
username: ####
password: ###
contexts: test
verbose: true

# ChangeLog Parameters
client.orgname: ${organization.name}
```

### Important commands
```shell

mvn liquibase:update "-Dliquibase.configuration=liquibase.properties"
mvn liquibase:generateChangeLog "-Dliquibase.configuration=liquibase.properties"
mvn liquibase:generateChangeLog -Dliquibase.configuration=liquibase.properties -Dliquibase.diffTypes=data
mvn liquibase:changelogSync "-Dliquibase.configuration=liquibase.properties"
mvn liquibase:rollback -Dliquibase.ollbackCount=1 -Dliquibase.configuration=liquibase.properties
mvn liquibase:tag -Dliquibase.configuration=liquibase.properties -Dliquibase.tag=1.0
mvn liquibase:rollback -Dliquibase.configuration=liquibase.properties -Dliquibase.rollbackTag=1.0
```

### Building - project
```shell
mvn clean package
```

## PR Builds
> To avoid making a mistake of editing an already applied change-set build the previously merged changes first and apply new changes from PR.

1. Create docker instance with each schema for a context.
2. Use develop branch and run liquibase for each context.
3. Merge PR with develop and run liquibase for each context.
4. Any context failure results in PR failure.


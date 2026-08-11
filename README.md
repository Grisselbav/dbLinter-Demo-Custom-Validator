# dbLinter Custom Validator for Demo

## Introduction

This project was generated using the [dbLinter CLI](https://grisselbav.github.io/dbLinter/tools/cli/cli-overview/)'s `gen-java` command.
The following options were used:

| Option           | Value (Default when not specified)  |
| ---------------- |-------------------------------------|
| `--repoUrl`      | `https://api.dblinter.app`          |
| `--tenantName`   | `Demo`                              |
| `--userName`     | `philipp.salvisberg+42@gmail.com`   |
| `--accessToken`  | `***`                               |
| `--configName`   | `Default`                           |
| `--indent`       | `4`                                 |
| `--outputName`   | `dbLinter-Demo-Custom-Validator`    |
| `--tenantFilter` | `(?i)^Demo$`                        |
| `--ruleFilter`   | `.+`                                |
| `--groupId`      | `com.grisselbav`                    |
| `--packageName`  | `com.grisselbav.demo.validator` |

It provides a ready-to-implement Java project that includes:

- Validator check classes for dbLinter rules.
- Test cases based on rule definitions in the dbLinter repository.
- A local test infrastructure for SQL parsing and rule checking, with optional database access and quick-fix application.

The resulting validator JAR file can be uploaded to the dbLinter repository, enabling custom checks in IDEs and CI/CD pipelines.

The generated files are designed to be finalised and committed as part of your custom validator implementation.
Rerunning the `gen-java` command will not overwrite existing files.

## Project Structure

- `src/main/java/com/grisselbav/demo/validator`: A class for each dbLinter rule.
- `src/test/java/com/grisselbav/demo/validator`: A test class for each dbLinter rule.
- `src/test/resources/application.properties`: Optional JDBC configuration for rule checks that may improve results when using read-only database access.

## Prerequisites

- JDK 17 or newer.
- Ensure the environment variable `JAVA_HOME` points to that JDK.

The Maven wrapper script (`mvnw`) simplifies the build process, so no Maven installation is required.

## Build and Test

Build the JAR with tests:

```bash
./mvnw clean package
```

Build the JAR without tests:

```bash
./mvnw clean package -DskipTests=true
```

Run a single test:

```bash
./mvnw -Dtest=DemoR2320Test test
```

## Post-Generation Changes

See the [changes](https://github.com/Grisselbav/dbLinter-Demo-Custom-Validator/compare/v1...v2) made
after the initial code generation with `dblinter gen-java`.

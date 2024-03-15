package com.serenitydojo.wordle.stepdefinitions;

import com.github.javafaker.Faker;
import com.serenitydojo.wordle.model.WordleUser;
import io.cucumber.java.DataTableType;
import io.cucumber.java.ParameterType;

import java.util.Map;

public class CucumberConfiguration {

    private final Faker faker = new Faker();

    @DataTableType
    public WordleUser defineWordleUserType(Map<String, String> row) {
        return new WordleUser(
                row.get("name"),
                row.get("email"),
                row.get("password"),
                row.get("country")
        );
    }

    @ParameterType(".*")
    public WordleUser wordleUser(String name) {
        String email = faker.internet().emailAddress();
        String password = "P@ssw0rd123!";
        String country = faker.address().country();

        return new WordleUser(name + " " + faker.name().lastName(), email, password, country);
    }
}

package com.serenitydojo.wordle.stepdefinitions;

import com.serenitydojo.wordle.actions.NavigationActions;
import com.serenitydojo.wordle.model.WordleUser;
import com.serenitydojo.wordle.pageobjects.LoginPage;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;
import net.serenitybdd.annotations.Steps;
import org.assertj.core.api.Assertions;

import static org.assertj.core.api.Assertions.assertThat;

public class CreateAccountStepDefinitions {

    @Steps
    NavigationActions navigationActions;

    LoginPage loginPage;

    @Given("{wordleUser} does not have an account")
    public void userDoesNotHaveAnAccount(WordleUser user) {
        // No action required here
    }

    @When("{wordleUser} opens the Wordle application")
    public void userOpensTheWordleApplication(WordleUser user) {
        navigationActions.openWordleApplication();
    }

    @Then("{wordleUser} should be presented with the option to create an account")
    public void userShouldBePresentedWithTheOptionToCreateAnAccount(WordleUser user) {
        assertThat(loginPage.getCreateAccountLink().isVisible()).isTrue();
    }
}

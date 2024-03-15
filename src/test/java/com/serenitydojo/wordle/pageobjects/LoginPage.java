package com.serenitydojo.wordle.pageobjects;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.core.pages.WebElementState;
import net.serenitybdd.screenplay.targets.Target;
import net.serenitybdd.screenplay.ui.InputField;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import javax.swing.*;

import static net.serenitybdd.core.pages.WebElementFacade.*;

public class LoginPage extends PageObject {

    private static final String USERNAME_FIELD = "#name";
    private static final String PASSWORD_FIELD = "#password";
    private static final String LOGIN_BUTTON = "#login";
    private static final By CREATE_ACCOUNT_LINK = By.linkText("Create Account");

    public void enterUsername(String username) {
        $(USERNAME_FIELD).type(username);
    }

    public void enterPassword(String password) {
        $(PASSWORD_FIELD).type(password);
    }

    public void clickLogin() {
        $(LOGIN_BUTTON).click();
    }

    public void clickCreateAccount() {
        $(CREATE_ACCOUNT_LINK).click();
    }


    public WebElementState getCreateAccountLink() {
        return $(CREATE_ACCOUNT_LINK);
    }
}

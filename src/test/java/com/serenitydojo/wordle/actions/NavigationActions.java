package com.serenitydojo.wordle.actions;

import net.serenitybdd.core.di.SerenityInfrastructure;
import net.serenitybdd.core.steps.UIInteractions;

public class NavigationActions extends UIInteractions {

    public void openWordleApplication() {
        String baseUrl = SerenityInfrastructure.getEnvironmentVariables().getProperty("webdriver.base.url");
        openUrl(baseUrl);
    }
}

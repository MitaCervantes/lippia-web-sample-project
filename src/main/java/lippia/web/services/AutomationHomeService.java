package lippia.web.services;

import com.crowdar.core.PropertyManager;
import com.crowdar.core.actions.ActionManager;
import com.crowdar.driver.DriverManager;
import lippia.web.constants.AutomationConstants;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.testng.Assert;

import static com.crowdar.core.actions.WebActionManager.navigateTo;

public class AutomationHomeService extends ActionManager {

    public static void
    navegarWeb(){
        navigateTo(PropertyManager.getProperty("web.base.url"));
    }

    public static void clickMyAccountButton() {
        click(AutomationConstants.MYACCOUNT_BUTTON_XPATH);
    }


}

package runner;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

/**
 * @autor: Boris.Perez
 **/

@RunWith(Cucumber.class)
@CucumberOptions(
        features = {"src/test/resources/createUser.feature"}
)
public class Runner {

}

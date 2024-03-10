package karateframeworkpractice;
import com.intuit.karate.junit5*;

public class TestRunner {
	
	@Karate.Test
	Karate getAPITest() {
		return Karate.run("").relativeTo(getClass());
	}

}

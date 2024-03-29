# Karate Selenium Sample

### Environment Setup

1. Global Dependencies
   - Install [Maven](https://maven.apache.org/install.html)
   - Or Install Maven with [Homebrew](http://brew.sh/) (Easier)
   - Install JDK 8
   ```
   $ install maven
   ```
2. Project Dependencies
   - checkout the repository
   - Check that packages are available
   ```
   $ cd karate-selenium-sample
   ```

**LambdaTest Authentication Credentials:** Make sure you have your LambdaTest credentials with you to run test automation scripts with Jest on LambdaTest Selenium Grid. You can obtain these credentials from the [LambdaTest Automation Dashboard](https://automation.lambdatest.com/) or through [LambdaTest Profile](https://accounts.lambdatest.com/detail/profile).

Set LambdaTest Username and Access Key in environment variables.

- For Linux/macOS:

```
export LT_USERNAME="YOUR_USERNAME
export LT_ACCESS_KEY="YOUR_ACCESS_KEY"
```

- For Windows:

```
set LT_USERNAME="YOUR_USERNAME"
set LT_ACCESS_KEY="YOUR_ACCESS_KEY"
```

### Update Capabilities

Open `src/test/java/examples/users/UITest.feature`

Add/remove capabilities from feature file

```
 def session = { capabilities: { browserName: 'chrome' }, desiredCapabilities: { browserName: 'chrome' } }
```

### Running Tests

```
    $ mvn test -Dhub=https://$LT_USERNAME:$LT_ACCESS_KEY@hub.lambdatest.com/wd/hub
```

## About LambdaTest

[LambdaTest](https://www.lambdatest.com/) is a cloud based selenium grid infrastructure that can help you run automated cross browser compatibility tests on 2000+ different browser and operating system environments. LambdaTest supports all programming languages and frameworks that are supported with Selenium, and have easy integrations with all popular CI/CD platforms. It's a perfect solution to bring your [selenium automation testing](https://www.lambdatest.com/selenium-automation) to cloud based infrastructure that not only helps you increase your test coverage over multiple desktop and mobile browsers, but also allows you to cut down your test execution time by running tests on parallel.

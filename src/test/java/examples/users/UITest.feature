Feature: browser automation 1

Background:
	* def session = { capabilities: { browserName: 'chrome' }, desiredCapabilities: { browserName: 'chrome' } }
	* configure driver = { type: 'chromedriver', webDriverSession: '#(session)', start: false, webDriverUrl: '#(hub)' }

Scenario: try to login to github
    and then do a google search

  Given driver 'https://github.com/login'
  And input('#login_field', 'dummy')
  And input('#password', 'world')
  When submit().click("input[name=commit]")
  Then match html('#js-flash-container') contains 'Incorrect username or password.'
  
  Given driver 'https://duckduckgo.com'
  And input("input[name=q]", 'google')
  When submit().click("button[type=submit]")
  Then match html('h2[class=Ee2e63EzQ9F3xq9wsGDY]') contains 'Google'

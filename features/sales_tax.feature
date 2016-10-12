Feature: Jungle Socks

  @test
  Scenario Outline: State tax tests
    Given  I navigate to welcome page
    And    I input following inventory count "23" items for zebra with price of "13", "12" items for lion with price of "20", "3" items for elephant with price of "35", "15" items for giraffe with price of "17"
    Then   I select state <state> and <tax % rate>, click checkout button and verify results on checkout page
    Examples:
    |state          | tax % rate  |
    |Alabama        |  0.05       |
    |Alaska         |  0.05       |
    |Arizona        |  0.05       |
    |Arkansas       |  0.05       |
    |California     |  0.08       |
    |Colorado       |  0.05       |
    |Connecticut    |  0.05       |
    |Delaware       |  0.05       |
    |Florida        |  0.05       |
    |Georgia        |  0.05       |
    |Hawaii         |  0.05       |
    |Idaho          |  0.05       |
    |Illinois       |  0.05       |
    |Indiana        |  0.05       |
    |Iowa           |  0.05       |
    |Kansas         |  0.05       |
    |Kentucky       |  0.05       |
    |Louisiana      |  0.05       |
    |Maine          |  0.05       |
    |Maryland       |  0.05       |
    |Massachusetts  |  0.05       |
    |Michigan       |  0.05       |
    |Minnesota      |  0.00       |
    |Mississippi    |  0.05       |
    |Missouri       |  0.05       |
    |Montana        |  0.05       |
    |Nebraska       |  0.05       |
    |Nevada         |  0.05       |
    |New Hampshire  |  0.05       |
    |New Jersey     |  0.05       |
    |New Mexico     |  0.05       |
    |New York       |  0.06       |
    |North Carolina |  0.05       |
    |North Dakota   |  0.05       |
    |Ohio           |  0.05       |
    |Oklahoma       |  0.05       |
    |Oregon         |  0.05       |
    |Pennsylvania   |  0.05       |
    |Rhode Island   |  0.05       |
    |South Carolina |  0.05       |
    |South Dakota   |  0.05       |
    |Tennessee      |  0.05       |
    |Texas          |  0.05       |
    |Utah           |  0.05       |
    |Vermont        |  0.05       |
    |Virginia       |  0.05       |
    |Washington     |  0.05       |
    |West Virginia  |  0.05       |
    |Wisconsin      |  0.05       |
    |Wyoming        |  0.05       |






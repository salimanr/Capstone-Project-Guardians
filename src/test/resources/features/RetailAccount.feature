@Regression
Feature: Retail Account Page

  Background: 
    Given User is on retail website home page
    Then User verify retail website title
    And User click on sign in option
    When User enter email 'salimancapstone01@gmail.com' and password 'Capstone@123'
    And User click on login button
    Then user should be logged into Account
    When User click on Account option

  #@Account2
  Scenario: Verify User can update Profile Information
    And User update Name 'Saliman' and Phone '9335614011'
    And User click on Update button
    Then user profile information should be updated

  #@Account3
  Scenario: Verify User can add a payment method
    When User click on Account option
    And User click on Add a payment method link
    And User fill Debit or credit card information
      | cardNumber       | nameOnCard   | expirationMonth | expirationYear | securityCode |
      | 1239999787878554 | Saliman Capstone |              12 |             25 |          604 |
    And User click on Add your card button
    Then a message should be displayed 'Payment Method added successfully'

  # @Account4
  Scenario: Verify User can edit Debit or Credit card
    When User click on Account option
    And User click on Edit option of card section
    And user edit information with below data
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 3219999654378555 | Saliman Capstone |              11 |             29 |          513 |
    And user click on Update Your Card button
    Then a message should be displayed ‘Payment Method updated Successfully’

  #@Account5
  Scenario: Verify User can remove Debit or Credit card
    And User click on remove option of card section
    Then payment details should be removed

  # @Account6
  Scenario: Verify User can add an Address
    When User click on Account option
    And User click on Add address option
    And user fill new address form with below information
      | country       | fullName     | phoneNumber | streetAddress    | apt     | city    | state   | zipCode |
      | United States | Saliman Capstone |  5408410415 | 899 N Orange Ave | Apt 532 | Orlando | Florida |   32807 |
    And User click Add Your Address button
    Then a message should be displayed ‘Address Added Successfully’

  # @Account7
  Scenario: Verify User can edit an Address added on account
    When User click on Account option
    And User click on edit address option
    And user fill new address form with below information
      | country       | fullName  | phoneNumber | streetAddress    | apt     | city  | state   | zipCode |
      | United States | Saliman Capstone |  4445614005 | 123 Main | Apt 302 | Miami | Florida |   32777 |
    And User click update Your Address button
    Then a message should be displayed ‘Address Updated Successfully’

  # @Account8
  Scenario: Verify User can remove Address from Account
    When User click on Account option
    And User click on remove option of Address section
    Then Address details should be removed
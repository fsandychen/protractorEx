Feature: google index
    As a user of google
    I could do some search


    @C0001 @E2E
    Scenario: 頁面 header 是否存在
    	Given I visit "google"
    	Then header must exist


    @C0002 @E2E
    Scenario: 頁面 footer 是否存在
    	Given I visit "google"
    	Then footer must exist


    @C0003 @E2E
    Scenario: 頁面 logo 是否存在
    	Given I visit "google"
    	Then "logo" must exist


    @C0004 @E2E
    Scenario: 搜尋 "google", 第一筆資料顯示正確
    	Given I visit "google"
    	When I search "google"
    	Then search result must have more than "1" record
    	And first record title must be "Google"


    @C0005 @E2E
    Scenario: login as "mei" & 搜尋 "yahoo", 第一筆資料顯示正確
        Given I login as "mei"
        And I visit "google"
        When I search "yahoo"
        Then search result must have more than "1" record
        And first record title must be "Yahoo奇摩"


    @C0006 @E2E
    Scenario: login as "mei" & 搜尋 "in 91", 第一筆資料顯示正確
        Given I login as "mei"
        And I visit "google"
        When I search "in 91"
        Then search result must have more than "1" record
        And first record title must be "In 91 - 點部落"





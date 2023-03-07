Feature: Bookcategory

  Background: I should be able too see homepage
  Given       I enter URL"https://demo.nopcommerce.com/" in browser
  And         I am on homepage
    Scenario Outline: I should be able to see top menu tabs on homepage with categories
      When    I am on homepage
      Then    i should be able to see top menu tabs with "<categories>"
      Examples:
      |categories         |
      |computer           |
      |electronic         |
      |apperel            |
      |digital downloads  |
      |books              |
      |jewellery          |
      |gift card          |

      Scenario Outline: I should be able too see book page with filters
        When   I select book category from top menu tabs on home page
        Then   I should be navigated to book category
        And    I should be able to see "<filters>"
        Examples:
        |filters    |
        |short by   |
        |display    |
        |the grid   |
        |list tab   |

        Scenario Outline: I should be able to see list of terms of each filter
          Given I am on book page
          When  I click on "<filter>"
          Then  I should be able to see "<list>" in dropdown menu
          Examples:
          |filter          |     list                                                                  |
          |sort by         | name: A to Z, name: Z to A ,Price:Low to High,Price:High to Low,created on|
          |display         |  3, 6 , 9                                                                 |

          Scenario Outline: i should be able to choose any filter option with specific result
            Given i am on homepage
            When  i click on "<filter>"
            And   i click on any "<option>"
            Then  i should be able to see any filter option from the list
            And   i should be able to see "<result>"

            Examples:
            |filter        |option              | result                                                        |
            |sort by       |Name: AtoZ          |sorted product with the product name in alphabetical order AtoZ|
            |sort by       |Name: ZtoA          |sorted product with the product name in alphabetical order ZtoA|
            |sort by       |price:low to high   |sorted product with the price in descending order              |
            |sort by       |price:high to low   |sorted product with the pruce in ascending order               |
            |display       |3                   |3 products in page                                             |
            |display       |6                   |6 products in page                                             |
            |display       |9                   |9 products in page                                             |

            Scenario Outline: i should be able to see product displau format according disoklay format type as per given picture in srs document
              Given i am on book page
              When  I CLICK ON "<display format icon>"
              Then  i should be able tp see product dispaly format according dispaly format type as per given picture in SRS document
              Examples:
              |display format icon|
              |grid               |
              |list               |






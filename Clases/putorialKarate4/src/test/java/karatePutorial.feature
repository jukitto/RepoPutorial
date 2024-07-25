Feature:  Consulta por Status

  Scenario Outline: Consulta por Status available/pending/sold
    Given url apiUrl
    And path '/v2/pet/findByStatus'
    * param status = '<status>'
    When method Get
    Then status 200
    * def response = response


    * def targetObject = karate.filter(response, function(obj){ return obj.id == '<id>' })[0]
    * print 'el id filtrado es: ', targetObject
    * match targetObject.category.id == <cateId>
    * match targetObject.category.name == '<cateName>'
    * match targetObject.name == '<name>'
    * match targetObject.status == '<status>'

    * def idMascota = targetObject.id
    * print 'el id valor del id es: ', idMascota

    Examples:
      | status    | id      | cateId | cateName | name          |
      | available | 2334563 | 2      | dog      | doggie-yoggie |
  #| pending   |
  #| sold      |




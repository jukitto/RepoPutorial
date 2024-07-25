Feature:  Crear Mascota

  Scenario: Crear una mascota
    Given url apiUrl
    And path '/v2/pet'
    And request
    """
    {
  "id": 77,
  "category": {
    "id": 776,
    "name": "Perros"
  },
  "name": "Memo",
  "photoUrls": [
    "https://static.fundacion-affinity.org/cdn/farfuture/PVbbIC-0M9y4fPbbCsdvAD8bcjjtbFc0NSP3lRwlWcE/mtime:1643275542/sites/default/files/los-10-sonidos-principales-del-perro.jpg"
  ],
  "tags": [
    {
      "id": 1,
      "name": "Golden"
    }
  ],
  "status": "available"
}
    """
    When method Post
    Then status 200
    * def response = response
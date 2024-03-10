Feature: json feature testing

  Scenario: json reader parser
    * def jsonArray =
      """
      [
      {
      "name":"Tom",
      "age":30,
      "place":"NYC"
      },
      {
      "name":"John",
      "age":31,
      "place":"California"
      }    
      ]
      """
    * print jsonArray
    * print jsonArray[0]
    * print jsonArray[1]
    * print jsonArray[0].name + " " +jsonArray[0].age + " " +jsonArray[0].place
    * print jsonArray[1].name + " " +jsonArray[1].age + " " +jsonArray[1].place

  Scenario: Complex json reader
    * def jsonObj =
      """
      {"menu": {
      "id": "file",
      "value": "File",
      "popup": {
      "menuitem": [
        {"value": "New", "onclick": "CreateNewDoc()"},
        {"value": "Open", "onclick": "OpenDoc()"},
        {"value": "Close", "onclick": "CloseDoc()"}
      ]
      }
      }}
      """
    * print jsonObj
    * print jsonObj.menu
    * print jsonObj.menu.id
    * print jsonObj.menu.value
    * print jsonObj.menu.popup
    * print jsonObj.menu.popup.menuitem[0].value + " " +jsonObj.menu.popup.menuitem[0].onclick
    * print jsonObj.menu.popup.menuitem[1].value + " " +jsonObj.menu.popup.menuitem[1].onclick
    * print jsonObj.menu.popup.menuitem[2].value + " " +jsonObj.menu.popup.menuitem[2].onclick

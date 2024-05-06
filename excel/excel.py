let feuil1 = workbook.getWorksheet("Feuil1");
// Rename worksheet to "Tests1"
feuil1.setName("Tests1");
// Add a new worksheet with name "Test2"
let test2 = workbook.addWorksheet("Test2");
let tests1 = workbook.getWorksheet("Tests1");
// Add a new table at range A1:G22 on tests1
let newTable = workbook.addTable(tests1.getRange("A1:G22"), false);
// Set range A1:G1 on tests1
tests1.getRange("A1:G1").setValues([["Test1","Test2","Test3","Test4","Test5","Test6","Test7"]]);
// Add a new table at range A1:F25 on test2
let newTable_1 = workbook.addTable(test2.getRange("A1:F25"), false);
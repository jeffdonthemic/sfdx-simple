@isTest
private class AnimalLocatorTest {

    @isTest static void testCallout() {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock()); 
        String name = AnimalLocator.getAnimalNameById(1);
        System.assertEquals('badger', name);
    }

}
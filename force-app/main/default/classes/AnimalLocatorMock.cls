@isTest
global class AnimalLocatorMock implements HttpCalloutMock {
    // Implement this interface method
    global HTTPResponse respond(HTTPRequest req) {
        // Create a fake response
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('{"animal": {"id": 1, "name": "badger", "eats": "anything it wants", "says": "rawr rawr"}}');
        res.setStatusCode(200);
        return res; 
    }
}
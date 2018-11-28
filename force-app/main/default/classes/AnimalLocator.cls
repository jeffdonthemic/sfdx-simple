public class AnimalLocator {

    public static String getAnimalNameById(Integer Id) {
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + id);
        req.setMethod('GET');
        HttpResponse res = http.send(req);
        Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(res.getBody());
        Map<String, Object> animal = (Map<String, Object>) results.get('animal');
        return (String)animal.get('name');
    }

}
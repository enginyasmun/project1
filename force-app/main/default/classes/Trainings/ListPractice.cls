// public with sharing class ListPractice {
//     public static list<Planets> planetsList = new List<Planets>();

    
//     public String addPlanets(string planetName, Integer planetNumber, integer numberOfMoons){
//         String returnmessage = '';
//         if (planetName != null && planetName != '') {
//             Planets pl = new Planets();
//             pl.name = planetName;
//             pl.planetNumber = planetNumber;
//             pl.numberOfMoons = numberOfMoons;

//             planetsList.add(pl);
//             System.debug(planetsList);
//             returnmessage = 'Planet is added succesfuly!!!';
//         }else {
//             returnmessage='Planet without name can not be added to the list';
//         }
//         return returnmessage;
//     } 


// }

public with sharing class ListPractice {
    public Static List<Planets> planetsList = new List<Planets>();

    public String addPlanet(String planetName, Integer planetNumber, Integer numberOfMoons){
        String returnMessage = '';
        if(planetName != null && planetName != ''){
            Planets p = new Planets();
            p.name = planetName;
            p.planetNumber = planetNumber;
            p.numberOfMoons = numberOfMoons;
            planetsList.add(p);
            returnMessage = 'Planet added successfully';
        } else {
            returnMessage = 'Planet without name can not be added to the list';
        }
        return returnMessage;
    }
}
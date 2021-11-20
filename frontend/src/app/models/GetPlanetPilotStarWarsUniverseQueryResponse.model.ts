export class GetPlanetPilotStarWarsUniverseQueryResponse{

    public  planet:string;
    public  pilot:string;
    public  count:number;
    
    
    constructor(pilot:string, planet:string, count:number)
    {
        this.pilot = pilot;
        this.planet = planet;
        this.count = count;
    }
}
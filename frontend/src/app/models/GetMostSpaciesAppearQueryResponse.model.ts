export class GetMostSpaciesAppearQueryResponse{

public result:string;
public  count:number;


constructor(result:string, count:number)
{

    this.result = result;
    this.count = count;
}
}
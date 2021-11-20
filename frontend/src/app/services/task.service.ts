import { Injectable, Input } from "@angular/core";
import { GetMostSpaciesAppearQueryResponse } from "../models/GetMostSpaciesAppearQueryResponse.model";
import{GetPlanetPilotStarWarsUniverseQueryResponse} from "../models/GetPlanetPilotStarWarsUniverseQueryResponse.model"
import { Router } from "@angular/router";
import { MatSnackBar } from "@angular/material";
import {Http} from "@angular/http";
import { environment } from "../../environments/environment.prod";

@Injectable()
export class TaskService{


    BASE_URL = environment.baseurl;

    TOKEN_KEY = 'token';
    public GetLongestOpeningCrawlQueryResponse:any;
    public GetMostPersonAppearQueryResponse:any;
    public GetMostSpaciesAppearQueryResponse:GetMostSpaciesAppearQueryResponse[]=[];
    public GetPlanetPilotStarWarsUniverseQueryResponse:GetPlanetPilotStarWarsUniverseQueryResponse[]=[];
    constructor(private http:Http,private router:Router,private sb: MatSnackBar)
    {}

    async AddItem(item)
    {


    }

    GetAllItems()
    {


    }

    async  GetLongestOpeningCrawlQuery()
    {
        try {
            var result = await this.http.get(this.BASE_URL+'/Task/GetLongestOpeningCrawlQuery').toPromise();
            this.GetLongestOpeningCrawlQueryResponse = result.json();
            
        } catch (error) {
            this.handlingErrorMessages("opss you can not post this information try again later!");
        }
    }
    async  GetMostPersonAppearQuery()
    {
        try {
            var result = await this.http.get(this.BASE_URL+'/Task/GetMostPersonAppearQuery').toPromise();
            this.GetMostPersonAppearQueryResponse = result.json();
            
        } catch (error) {
            this.handlingErrorMessages("opss you can not post this information try again later!");
        }
    }
    async  GetMostSpaciesAppearQuery()
    {
        try {
            var result = await this.http.get(this.BASE_URL+'/Task/GetMostSpaciesAppearQuery').toPromise();
            this.GetMostSpaciesAppearQueryResponse = result.json();
            
        } catch (error) {
            this.handlingErrorMessages("opss you can not post this information try again later!");
        }
    }
    async  GetPlanetPilotStarWarsUniverseQuery()
    {
        try {
            var result = await this.http.get(this.BASE_URL+'/Task/GetPlanetPilotStarWarsUniverseQuery').toPromise();
            this.GetPlanetPilotStarWarsUniverseQueryResponse = result.json();
            
        } catch (error) {
            this.handlingErrorMessages("opss you can not post this information try again later!");
        }
    }
    

    handlingErrorMessages(error)
    {
    this.sb.open(error,"close",{duration:2000});
    }

}
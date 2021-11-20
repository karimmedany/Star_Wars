import { Component } from '@angular/core';

import { Subscription } from "rxjs";
import { TranslateService } from "ng2-translate";
import { ActivatedRoute } from "@angular/router";

import { Utility } from './services/utility.service';



@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

 
  constructor(private utility: Utility)
  {


  }



  ngOnInit()
  {
    this.utility.activateLanguage();
  }

  ngOnDestroy()
  {
    this.utility.deactivateLanguage();
  }
  title = 'app';
}

import { Component, OnInit } from '@angular/core';
import { environment } from '../../../environments/environment';
import { TaskService } from '../../services/task.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
url = environment.baseurl;
isProd = environment.production;
public IsResultAppear:boolean=false;
constructor(public taskService:TaskService) { }

  ngOnInit() {
  }

  getAll()
  {
    if(this.IsResultAppear == false)
    {
      this.IsResultAppear = true;
    }
    else
    {
      this.IsResultAppear = false;
    }
    if(this.IsResultAppear)
    {
      this.taskService.GetLongestOpeningCrawlQuery();
      this.taskService.GetMostPersonAppearQuery();
      this.taskService.GetMostSpaciesAppearQuery();
      this.taskService.GetPlanetPilotStarWarsUniverseQuery();
     }
  }

}

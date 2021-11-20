import { RouterModule, Routes } from "@angular/router";
import { NgModule } from "@angular/core";
import { HomeComponent } from "./views/home/home.component";




 const appRouters:Routes = [
{path:'',component:HomeComponent}

];



 @NgModule({
imports:[RouterModule.forRoot(appRouters)],
exports:[RouterModule]
 })

export class AppRouterModule{}
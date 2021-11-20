import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';


import { AppComponent } from './app.component';



import { AppRouterModule } from './app-router.module';
import { HomeComponent } from './views/home/home.component';





import{
  MatButtonModule,
  MatMenuModule,
  MatToolbarModule,
  MatIconModule,
  MatCardModule,
  MatSidenavModule,
  MatFormFieldModule,
  MatInputModule,
  MatTooltipModule,
  MatSnackBarModule
} from '@angular/material';

import { FormsModule } from '@angular/forms';

// servces
import { TaskService } from './services/task.service';
import {Utility} from './services/utility.service';
import { HttpModule, Http } from '@angular/http';


import { registerLocaleData } from '@angular/common';
import { TranslateModule, TranslateLoader, TranslateStaticLoader, MissingTranslationHandler } from 'ng2-translate';


export function createTranslateLoader(http: Http) {
  return new TranslateStaticLoader(http, './assets/i18n', '.json');
}

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent
  ],
  imports: [

    MatButtonModule,
    MatMenuModule,
    MatToolbarModule,
    MatIconModule,
    MatCardModule,
    MatSidenavModule,
    MatFormFieldModule,
    MatInputModule,
    MatTooltipModule,
    MatSnackBarModule,

    FormsModule,
HttpModule,
    BrowserModule,
    AppRouterModule,
    TranslateModule.forRoot({
      provide: TranslateLoader,
      useFactory: (createTranslateLoader),
      deps: [Http]
    })
    
  ],
  providers: [
    TaskService,
    Utility
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }

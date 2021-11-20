import { enableProdMode, LOCALE_ID, TRANSLATIONS_FORMAT, TRANSLATIONS } from '@angular/core';
import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';

import { AppModule } from './app/app.module';
import { environment } from './environments/environment';
import { Utility } from './app/services/utility.service';


if (environment.production) {
  enableProdMode();
}


  platformBrowserDynamic().bootstrapModule(AppModule)
  .catch(err => console.log(err));


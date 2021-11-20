import { Injectable } from "@angular/core";
import { Subscription } from "rxjs";
import { TranslateService } from "ng2-translate";
import { ActivatedRoute } from "@angular/router";


@Injectable()
export class Utility{
    constructor(private translate: TranslateService, private activatedRoute: ActivatedRoute)
    {
        translate.addLangs(["en", "fr", "ar"]);
        translate.setDefaultLang('en');
    
        let browserLang = translate.getBrowserLang();
        console.log(browserLang);
        translate.use(browserLang.match(/en|fr|ar/) ? browserLang : 'en');
        
        
    }
    private subscription: Subscription;
   public  changeLanguage(lang){
        this.translate.use(lang);
    }

   public activateLanguage()
    {
            // subscribe to router event
            this.subscription = this.activatedRoute.queryParams.subscribe(
                (param: any) => {
                  let locale = param['locale'];
                  if (locale !== undefined){
                      this.translate.use(locale);
                  }
                });
    }
   public deactivateLanguage()
    {
        // prevent memory leak by unsubscribing
    this.subscription.unsubscribe();
    }

}
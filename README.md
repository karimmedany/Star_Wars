# Star_Wars
it's an app contains the following:
- Web api service created by .NET and C# as a backend "using MediatR pattern CQRS" excluded logging, performance filter check.
- Multitier architecture with decoupling.
- Added solution WS.Webapisl ==> serverless create docker container and attach it to lambda function "AWS". (microservices)
- Angular 2+ as a frontend.

Make sure about the following configuration.
- To test the application using the localhost you have to run the webapi in port 1155.
- If you would like to change the webapi "the backend" port you have to change the baseurl variable in the angular app located in "src/environments/"
- Make sure to update the packages using command npm install -g npm@latest.
- ng serve for the root of the angular after running the webapi.

NOTE: database (mysql) Dump20220822 if you want to use it locally.
Out of scope: JwtBearer implementation (secure the service).

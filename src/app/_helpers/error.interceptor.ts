import { Injectable } from '@angular/core';
import { HttpRequest, HttpHandler, HttpEvent, HttpInterceptor } from '@angular/common/http';
import { Observable, throwError } from 'rxjs';
import { catchError } from 'rxjs/operators';

import { AuthenticationService } from '../_services';

@Injectable()
export class ErrorInterceptor implements HttpInterceptor {
    // For More Info https://jasonwatmore.com/post/2019/06/22/angular-8-jwt-authentication-example-tutorial#app-module-ts
    constructor(private authenticationService: AuthenticationService) { }

    intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
        return next.handle(request).pipe(catchError(err => {
            if (err.status === 401) {
                // auto logout if 401 response returned from api
                this.authenticationService.logout();
                location.reload(true);
            }

            if (err.status === 400) {
                return throwError("Username or Password Incorrect");
            }

            if (err.status === 404) {
                return throwError("Not Found");
            }

            const error = err.error.message || err.statusText;
            return throwError(error);
        }))
    }
}
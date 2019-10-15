import { ObjectSchema } from "joi";
import { RequestHandlerParams } from "express-serve-static-core";

export interface RouteConfigObject {
    route: string;
    schema: ObjectSchema;
    handler: RequestHandlerParams;
    swagger: any;
}
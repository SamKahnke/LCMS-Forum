import { ObjectSchema } from "joi";
import { RequestHandlerParams } from "express-serve-static-core";

export interface RouteConfigObject {
    route: string;
    summary: string;
    tag: string;
    schema: ObjectSchema;
    handler: RequestHandlerParams;
    swagger?: any;
}
import { ObjectSchema } from "joi";
const joiToSwagger = require("joi-to-swagger");

export const formatParametersArray = (schema: ObjectSchema): object => {
    const queryParams: object = joiToSwagger(schema).swagger.properties.query ? joiToSwagger(schema).swagger.properties.query.properties : {};
    const pathParams: object = joiToSwagger(schema).swagger.properties.params ? joiToSwagger(schema).swagger.properties.params.properties : {};
    const queryParamsArray = Object.keys(queryParams).map(key => {
        queryParams[key].in = "query";
        queryParams[key].name = key;
        return queryParams[key];
    });

    const pathParamsArray = Object.keys(pathParams).map(key => {
        pathParams[key].in = "path";
        pathParams[key].name = key;
        return pathParams[key];
    });

    return pathParamsArray.concat(queryParamsArray);
};

export const BuildSwaggerJson = (swaggerObjects: any[]) => {
    const swaggerPaths = Object.assign({}, ...swaggerObjects.map(item => ({ [item.route]: item.value })));
    const swaggerJson: Object = {
        swagger: "2.0",
        info: {
            version: "3.0.0",
            title: "LCMS API",
            licence: "UNLICENCED"
        },
        consumes: ["application/json"],
        produces: ["application/json"],
        host: "localhost:2500",
        basepath: "/",
        tags: [
            {
                name: "User",
                description: "PHPBB user management"
            },
            {
                name: "Forum",
                description: "PHPBB forums, accessible only to assigned users"
            },
            {
                name: "Group",
                description: "PHPBB groups for adding multiple users to a forum at once"
            },
            {
                name: "Topic",
                description: "PHPBB discussion topic management"
            },
            {
                name: "Login",
                description: "User login"
            }
        ],
        schemes: ["http", "https"],
        paths: swaggerPaths
    };

    return swaggerJson;
};
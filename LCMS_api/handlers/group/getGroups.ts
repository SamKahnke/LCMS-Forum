import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_GET } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";
import { formatParametersArray } from "../../services/Utils";

const config = require("../../config/config.json");
const phpbbPrefix = config.phpbbPrefix;

const route: string = `/groups`;
const schema: ObjectSchema = joi
    .object()
    .options({ allowUnknown: true });

const formattedParametersArray = formatParametersArray(schema);

const swagger: any = {
    route: "/groups",
    value: {
        get: {
            tags: ["Group"],
            summary: "Get all groups",
            parameters: formattedParametersArray
        }    
    }  
};

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const url: string = `${phpbbPrefix}/getGroups.php`;

    try {
        const result = await PHPBB_GET(url);
        response.send(result.data);
    } catch (err) {
        console.error(err.message);
        response.send({
            error: "An unexpected error occurred"
        });
    }  
}

const GetGroupsConfig: RouteConfigObject = {
    route,
    schema,
    handler,
    swagger
}

export default GetGroupsConfig;
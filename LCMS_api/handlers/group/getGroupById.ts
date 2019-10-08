import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_GET } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";
import { formatParametersArray } from "../../services/Utils";

const config = require("../../config/config.json");
const phpbbPrefix = config.phpbbPrefix;

const route: string = `/group/:id`;
const schema: ObjectSchema = joi
    .object()
    .keys({
        params: joi.object().keys({
            id: joi
                .number()
                .integer()
                .positive()
                .description("[REQUIRED] The PHPBB Group Id")
                .required()
        })
    })
    .options({ allowUnknown: true });

const formattedParametersArray = formatParametersArray(schema);

const swagger: any = {
    route: "/group/:id",
    value: {
        get: {
            tags: ["Group"],
            summary: "Get a single group's data",
            parameters: formattedParametersArray
        }    
    }  
};

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const url: string = `${phpbbPrefix}/getGroupById.php`;
    const { id: group_id } = request.params;
    const params: object = {
        group_id
    }

    try {
        const result = await PHPBB_GET(url, params);
        response.send(result.data);
    } catch (err) {
        console.error(err.message);
        response.send({
            error: "An unexpected error occurred"
        });
    }  
}

const GetGroupByIdConfig: RouteConfigObject = {
    route,
    schema,
    handler,
    swagger
}

export default GetGroupByIdConfig;
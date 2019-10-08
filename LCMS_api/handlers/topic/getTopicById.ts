import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_GET } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";
import { formatParametersArray } from "../../services/Utils";

const config = require("../../config/config.json");
const phpbbPrefix = config.phpbbPrefix;

const route: string = `/topic/:id`;
const schema: ObjectSchema = joi
    .object()
    .keys({
        params: joi.object().keys({
            id: joi
                .number()
                .integer()
                .positive()
                .description("[REQUIRED] The PHPBB Topic Id")
                .required()
        })
    })
    .options({ allowUnknown: true });

const formattedParametersArray = formatParametersArray(schema);

const swagger: any = {
    route: "/topic/:id",
    value: {
        get: {
            tags: ["Topic"],
            summary: "Get a single topic's data",
            parameters: formattedParametersArray
        }    
    }  
};

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const url: string = `${phpbbPrefix}/getTopicById.php`;
    const { id: topic_id } = request.params;
    const params: object = {
        topic_id
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

const GetTopicByIdConfig: RouteConfigObject = {
    route,
    schema,
    handler,
    swagger
}

export default GetTopicByIdConfig;
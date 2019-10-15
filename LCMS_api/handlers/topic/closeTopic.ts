import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_POST } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";
import { formatParametersArray } from "../../services/Utils";

const config = require("../../config/config.json");
const phpbbPrefix = config.phpbbPrefix;

const route: string = `/topic/:topic_id/close`;
const schema: ObjectSchema = joi
    .object()
    .keys({
        params: joi.object().keys({
            topic_id: joi
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
    route: "/topic/:topic_id/close",
    value: {
        post: {
            tags: ["Topic"],
            summary: "Close a topic to disable further posts",
            parameters: formattedParametersArray
        }    
    }  
};

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const { topic_id } = request.params;

    const queryParams: object = {
        topic_id
    }

    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');

    const url: string = `${phpbbPrefix}/closeTopic.php?${queryString}`;

    try {
        const result = await PHPBB_POST(url);
        response.send(result.data);
    } catch (err) {
        console.error(err.message);
        response.send({
            error: "An unexpected error occurred"
        });
    }  
}

const CloseTopicConfig: RouteConfigObject = {
    route,
    schema,
    handler,
    swagger
}

export default CloseTopicConfig;
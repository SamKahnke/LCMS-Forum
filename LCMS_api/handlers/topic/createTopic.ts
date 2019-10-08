import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_POST } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";
import { formatParametersArray } from "../../services/Utils";

const config = require("../../config/config.json");
const phpbbPrefix = config.phpbbPrefix;

const route: string = `/topic`;
const schema: ObjectSchema = joi
    .object()
    .keys({
        query: joi.object().keys({
            forum_id: joi
                .number()
                .integer()
                .min(0)
                .description("[REQUIRED] The forum id under which the topic is being posted")
                .required(),
            user_id: joi
                .number()
                .integer()
                .min(0)
                .description("[REQUIRED] The user id of the topic poster")
                .required(),
            subject: joi
                .string()
                .description("[REQUIRED] The title or subject of the topic")
                .required(),
            message: joi
                .string()
                .description("[REQUIRED] The topic's description, or initial post")
                .required()
        })
    })
    .options({ allowUnknown: true });

const formattedParametersArray = formatParametersArray(schema);

const swagger: any = {
    route: "/topic",
    value: {
        post: {
            tags: ["Topic"],
            summary: "Create a new topic",
            parameters: formattedParametersArray
        }    
    }  
};

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const { user_id, forum_id, subject, message } = request.query;

    const queryParams: object = {
        user_id,
        forum_id,
        subject,
        message
    }

    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');

    const url: string = `${phpbbPrefix}/createTopic.php?${queryString}`;

    try {
        console.log(formattedParametersArray);
        const result = await PHPBB_POST(url);
        response.send(result.data);
    } catch (err) {
        console.error(err.message);
        response.send({
            error: "An unexpected error occurred"
        });
    }  
}

const CreateTopicConfig: RouteConfigObject = {
    route,
    schema,
    handler,
    swagger
}

export default CreateTopicConfig;
import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_POST } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";

const route: string = `/topic`;
const summary: string = "Create topic";
const tag: string = "Forum";
const schema: ObjectSchema = joi
    .object()
    .keys({
        query: joi.object().keys({
            forum_id: joi
                .number()
                .integer()
                .min(0)
                .description("The forum id under which the topic is being posted")
                .required(),
            topic_title: joi
                .string()
                .description("The title of the topic")
                .required(),
            topic_poster: joi
                .number()
                .integer()
                .min(0)
                .description("The user-id of the topic poster")
                .required()
        })
    })
    .options({ allowUnknown: true });

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const { forum_id, topic_title, topic_poster } = request.query;

    const queryParams: object = {
        forum_id,
        topic_title,
        topic_poster
    }

    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');

    const url: string = "http://localhost/rivertown/phpbb/LCMS_api/createTopic.php?" + queryString;

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

const CreateTopicConfig: RouteConfigObject = {
    route,
    summary,
    tag,
    schema,
    handler
}

export default CreateTopicConfig;
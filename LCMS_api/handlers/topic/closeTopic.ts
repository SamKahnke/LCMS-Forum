import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_POST } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";

const route: string = `/topic/:topic_id/close`;
const summary: string = "Closes topic by topic id";
const tag: string = "Topic";
const schema: ObjectSchema = joi
    .object()
    .keys({
        params: joi.object().keys({
            topic_id: joi
                .number()
                .integer()
                .positive()
                .description("The PHPBB Topic Id")
                .required()
        })
    })
    .options({ allowUnknown: true });

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const { topic_id } = request.params;

    const queryParams: object = {
        topic_id
    }

    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');

    const url: string = "http://localhost/rivertown/phpbb/LCMS_api/closeTopic.php?" + queryString;
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
    summary,
    tag,
    schema,
    handler
}

export default CloseTopicConfig;
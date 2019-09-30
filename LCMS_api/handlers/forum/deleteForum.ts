import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_POST } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";

const route: string = `/forum/delete`;
const summary: string = "Delete forum by forum id";
const tag: string = "Forum";
const schema: ObjectSchema = joi
    .object()
    .keys({
        query: joi.object().keys({
            forum_id: joi
                .number()
                .integer()
                .positive()
                .description("The PHPBB Forum Id")
                .required()
        })
    })
    .options({ allowUnknown: true });

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const { forum_id } = request.query;
    const params: object = {
        forum_id,
    }

    const queryParams: object = {
        forum_id
    }

    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');

    const url: string = "http://localhost/rivertown/phpbb/LCMS_api/deleteForum.php?" + queryString;
    try {
        const result = await PHPBB_POST(url, params);
        response.send(result.data);
    } catch (err) {
        console.error(err.message);
        response.send({
            error: "An unexpected error occurred"
        });
    }  
}

const DeleteForumConfig: RouteConfigObject = {
    route,
    summary,
    tag,
    schema,
    handler
}

export default DeleteForumConfig;
import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_POST } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";

const route: string = `/group/:group_id/delete`;
const summary: string = "Delete group by group id";
const tag: string = "Group";
const schema: ObjectSchema = joi
    .object()
    .keys({
        params: joi.object().keys({
            group_id: joi
                .number()
                .integer()
                .positive()
                .description("The PHPBB Group Id")
                .required()
        })
    })
    .options({ allowUnknown: true });

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const { group_id } = request.params;

    const queryParams: object = {
        group_id
    }

    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');

    const url: string = "http://localhost/rivertown/phpbb/LCMS_api/deleteGroup.php?" + queryString;
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

const DeleteGroupConfig: RouteConfigObject = {
    route,
    summary,
    tag,
    schema,
    handler
}

export default DeleteGroupConfig;
import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_GET } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";

const route: string = `/group/:id`;
const summary: string = "Get groups by group id";
const tag: string = "Group";
const schema: ObjectSchema = joi
    .object()
    .keys({
        params: joi.object().keys({
            id: joi
                .number()
                .integer()
                .positive()
                .description("The PHPBB Group Id")
                .required()
        })
    })
    .options({ allowUnknown: true });

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const url: string = "http://localhost/rivertown/phpbb/LCMS_api/getGroupById.php";
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
    summary,
    tag,
    schema,
    handler
}

export default GetGroupByIdConfig;
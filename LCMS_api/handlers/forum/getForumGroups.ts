import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_GET } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";

const route: string = `/forum/:id/group`;
const summary: string = "Get groups and forum auth info by forum id";
const tag: string = "Forum";
const schema: ObjectSchema = joi
    .object()
    .keys({
        params: joi.object().keys({
            id: joi
                .number()
                .integer()
                .min(0)
                .description("The PHPBB Forum Id")
                .required()
        })
    })
    .options({ allowUnknown: true });

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const url: string = "http://localhost/rivertown/phpbb/LCMS_api/getForumGroups.php";
    const { id: forum_id } = request.params;
    const params: object = {
        forum_id
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

const GetForumGroupsConfig: RouteConfigObject = {
    route,
    summary,
    tag,
    schema,
    handler
}

export default GetForumGroupsConfig;
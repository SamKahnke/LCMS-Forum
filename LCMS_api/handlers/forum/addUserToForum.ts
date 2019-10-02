import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_POST } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";

const route: string = `/forum/:id/user/:user_id`;
const summary: string = "Add user to a forum";
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
                .required(),
            user_id: joi
                .number()
                .integer()
                .min(0)
                .description("The PHPBB User Id")
                .required()
        }),
        query: joi.object().keys({
            auth_option_id: joi
                .number()
                .integer()
                .min(0)
                .description("The PHPBB Auth Option Id"),
            auth_role_id: joi
                .number()
                .integer()
                .min(0)
                .description("The PHPBB Auth Role Id"),
            auth_setting: joi
                .number()
                .integer()
                .min(0)
                .description("The PHPBB Auth Setting"),
        })
    })
    .options({ allowUnknown: true });

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const { id: forum_id, user_id: user_id } = request.params;
    const { auth_option_id, auth_role_id, auth_setting } = request.query;

    const queryParams: object = {
        forum_id,
        user_id,
        auth_option_id: auth_option_id || 1,
        auth_role_id: auth_role_id || 15,
        auth_setting: auth_setting || 1
    }

    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');

    let url: string = "http://localhost/rivertown/phpbb/LCMS_api/addUserToForum.php?" + queryString;

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

const AddUserToForumConfig: RouteConfigObject = {
    route,
    summary,
    tag,
    schema,
    handler
}

export default AddUserToForumConfig;
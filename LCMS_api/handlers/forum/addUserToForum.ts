import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_POST } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";
import { formatParametersArray } from "../../services/Utils";

const config = require("../../config/config.json");
const phpbbPrefix = config.phpbbPrefix;

const route: string = `/forum/:id/user/:user_id`;
const schema: ObjectSchema = joi
    .object()
    .keys({
        params: joi.object().keys({
            id: joi
                .number()
                .integer()
                .min(0)
                .description("[REQUIRED] The PHPBB Forum Id")
                .required(),
            user_id: joi
                .number()
                .integer()
                .min(0)
                .description("[REQUIRED] The PHPBB User Id")
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

const formattedParametersArray = formatParametersArray(schema);

const swagger: any = {
    route: "/forum/:id/user/:user_id",
    value: {
        post: {
            tags: ["Forum"],
            summary: "Add a single user to a forum",
            parameters: formattedParametersArray
        }    
    }  
};

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

    const url: string = `${phpbbPrefix}/addUserToForum.php?${queryString}`;

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
    schema,
    handler,
    swagger
}

export default AddUserToForumConfig;
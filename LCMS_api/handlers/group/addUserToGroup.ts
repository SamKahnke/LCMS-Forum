import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_POST } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";
import { formatParametersArray } from "../../services/Utils";

const config = require("../../config/config.json");
const phpbbPrefix = config.phpbbPrefix;

const route: string = `/group/:group_id/user/:user_id`;
const schema: ObjectSchema = joi
    .object()
    .keys({
        params: joi.object().keys({
            user_id: joi
                .number()
                .integer()
                .min(0)
                .description("[REQUIRED] The PHPBB User Id")
                .required(),
            group_id: joi
                .number()
                .integer()
                .min(0)
                .description("[REQUIRED] The PHPBB Group Id")
                .required(),
        }),
        query: joi.object().keys({
            group_leader: joi
                .number()
                .integer()
                .min(0)
                .description("The PHPBB Group Leader Id"),
            user_pending: joi
                .number()
                .integer()
                .min(0)
                .description("Tracks a pending group invite")
        })
    })
    .options({ allowUnknown: true });

const formattedParametersArray = formatParametersArray(schema);

const swagger: any = {
    route: "/group/:group_id/user/:user_id",
    value: {
        post: {
            tags: ["Group"],
            summary: "Add a user to a group",
            parameters: formattedParametersArray
        }    
    }  
};

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const { user_id: user_id, group_id: group_id } = request.params;
    const { group_leader, user_pending } = request.query;
    
    const queryParams: object = {
        user_id,
        group_id,
        group_leader: group_leader || 0,
        user_pending: user_pending || 0
    }

    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');

    const url: string = `${phpbbPrefix}/addUserToGroup.php?${queryString}`;

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

const AddUserToGroupConfig: RouteConfigObject = {
    route,
    schema,
    handler,
    swagger
}

export default AddUserToGroupConfig;
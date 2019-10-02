import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_POST } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";

const route: string = `/group/:group_id/user/:user_id`;
const summary: string = "Add user to a group";
const tag: string = "Group";
const schema: ObjectSchema = joi
    .object()
    .keys({
        params: joi.object().keys({
            user_id: joi
                .number()
                .integer()
                .min(0)
                .description("The PHPBB User Id")
                .required(),
            group_id: joi
                .number()
                .integer()
                .min(0)
                .description("The PHPBB Group Id")
                .required(),
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

    const url: string = "http://localhost/rivertown/phpbb/LCMS_api/addUserToGroup.php?" + queryString;

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
    summary,
    tag,
    schema,
    handler
}

export default AddUserToGroupConfig;
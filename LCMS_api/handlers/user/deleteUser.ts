import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_POST } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";

const route: string = `/user/:user_id/delete`;
const summary: string = "Delete user by user id";
const tag: string = "User";
const schema: ObjectSchema = joi
    .object()
    .keys({
        params: joi.object().keys({
            user_id: joi
                .number()
                .integer()
                .positive()
                .description("The PHPBB User Id")
                .required()
        })
    })
    .options({ allowUnknown: true });

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const { user_id } = request.params;

    const queryParams: object = {
        user_id
    }

    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');

    const url: string = "http://localhost/rivertown/phpbb/LCMS_api/deleteUser.php?" + queryString;
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

const DeleteUserConfig: RouteConfigObject = {
    route,
    summary,
    tag,
    schema,
    handler
}

export default DeleteUserConfig;
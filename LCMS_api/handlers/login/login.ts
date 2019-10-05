import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_POST } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";

const route: string = `/login`;
const summary: string = "Log user in";
const tag: string = "Login";
const schema: ObjectSchema = joi
    .object()
    // .keys({
    //     query: joi.object().keys({
    //         group_name: joi
    //             .string()
    //             .description("The name of the new group")
    //             .required(),
    //         group_desc: joi
    //             .string()
    //             .description("A description of the group")
    //     })
    // })
    .options({ allowUnknown: true });

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    
    const { username, password } = request.query;

    const queryParams: object = {
        username,
        password
    }

    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');

    const url: string = "http://localhost/rivertown/phpbb/ucp.php?mode=login" + queryString;

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

const LoginConfig: RouteConfigObject = {
    route,
    summary,
    tag,
    schema,
    handler
}

export default LoginConfig;
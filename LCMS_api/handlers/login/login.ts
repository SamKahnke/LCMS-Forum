import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_POST } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";
import { formatParametersArray } from "../../services/Utils";

const config = require("../../config/config.json");
const phpbbLoginPrefix = config.phpbbLoginPrefix;

const route: string = `/login`;
const schema: ObjectSchema = joi
    .object()
    .keys({
        query: joi.object().keys({
            username: joi
                .string()
                .description("[REQUIRED] The user's username")
                .required(),
            password: joi
                .string()
                .description("[REQUIRED] The user's password")
                .required()
        })
    })
    .options({ allowUnknown: true });

const formattedParametersArray = formatParametersArray(schema);

const swagger: any = {
    route: "/login",
    value: {
        post: {
            tags: ["Login"],
            summary: "Log user in. Must redirect to desired page after",
            parameters: formattedParametersArray
        }    
    }  
};

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

    const url: string = `${phpbbLoginPrefix}/ucp.php?mode=login${queryString}`;

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
    schema,
    handler,
    swagger
}

export default LoginConfig;
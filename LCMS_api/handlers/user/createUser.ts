import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_POST } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";

const route: string = `/user`;
const summary: string = "Create user";
const tag: string = "User";
const schema: ObjectSchema = joi
    .object()
    .keys({
        query: joi.object().keys({
            username: joi
                .string()
                .description("The new user's unique username")
                .required(),
            password: joi
                .string()
                .description("The new user's unique password")
                .required(),
            email: joi
                .string()
                .description("The new user's unique email")
                .required(),
            tz: joi
                .string()
                .description("The user's timezone key. eg: UTC")
                .required(),
            lang: joi
                .string()
                .description("The user's language key. eg: en")
                .required()
        })
    })
    .options({ allowUnknown: true });

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const { username, password, email, tz, lang} = request.query;

    const queryParams: object = {
        username,
        password,
        email,
        tz: tz || 'UTC',
        lang: lang || 'en'
    }

    var queryString = Object.keys(queryParams)
        .map(k => k + '=' + queryParams[k])
        .join('&');

    const url: string = "http://localhost/rivertown/phpbb/LCMS_api/createUser.php?" + queryString;

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

const CreateUserConfig: RouteConfigObject = {
    route,
    summary,
    tag,
    schema,
    handler
}

export default CreateUserConfig;
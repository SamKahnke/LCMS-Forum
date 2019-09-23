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
        params: joi.object().keys({
            name: joi
                .string()
                .description("Create a new user")
                .required(),
            password: joi
                .string()
                .required() 
        })
    })
    .options({ allowUnknown: true });

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const url: string = "http://localhost/rivertown/phpbb/LCMS_api/createUser.php";
    const { username, user_password } = request.query;
    const params: object = {
        username,
        user_password
    }

    try {
        const result = await PHPBB_POST(url, params);
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
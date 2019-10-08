import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_POST } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";
import { formatParametersArray } from "../../services/Utils";

const config = require("../../config/config.json");
const phpbbPrefix = config.phpbbPrefix;

const route: string = `/user/:user_id/delete`;
const schema: ObjectSchema = joi
    .object()
    .keys({
        params: joi.object().keys({
            user_id: joi
                .number()
                .integer()
                .positive()
                .description("[REQUIRED] The PHPBB User Id")
                .required()
        })
    })
    .options({ allowUnknown: true });

const formattedParametersArray = formatParametersArray(schema);

const swagger: any = {
    route: "/user/:user_id/delete",
    value: {
        post: {
            tags: ["User"],
            summary: "Delete a user",
            parameters: formattedParametersArray
        }    
    }  
};

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const { user_id } = request.params;

    const queryParams: object = {
        user_id
    }

    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');

    const url: string = `${phpbbPrefix}/deleteUser.php?${queryString}`;

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
    schema,
    handler,
    swagger
}

export default DeleteUserConfig;
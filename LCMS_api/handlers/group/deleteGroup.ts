import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_POST } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";
import { formatParametersArray } from "../../services/Utils";

const config = require("../../config/config.json");
const phpbbPrefix = config.phpbbPrefix;

const route: string = `/group/:group_id/delete`;
const schema: ObjectSchema = joi
    .object()
    .keys({
        params: joi.object().keys({
            group_id: joi
                .number()
                .integer()
                .positive()
                .description("[REQUIRED] The PHPBB Group Id")
                .required()
        })
    })
    .options({ allowUnknown: true });

const formattedParametersArray = formatParametersArray(schema);

const swagger: any = {
    route: "/group/:group_id/delete",
    value: {
        post: {
            tags: ["Group"],
            summary: "Delete a group",
            parameters: formattedParametersArray
        }    
    }  
};

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const { group_id } = request.params;

    const queryParams: object = {
        group_id
    }

    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');

    const url: string = `${phpbbPrefix}/deleteGroup.php?${queryString}`;

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

const DeleteGroupConfig: RouteConfigObject = {
    route,
    schema,
    handler,
    swagger
}

export default DeleteGroupConfig;
import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_POST } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";

const route: string = `/group`;
const summary: string = "Create group";
const tag: string = "Group";
const schema: ObjectSchema = joi
    .object()
    .keys({
        params: joi.object().keys({
            name: joi
                .string()
                .description("Create a new group")
                .required()
        })
    })
    .options({ allowUnknown: true });

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const url: string = "http://localhost/rivertown/phpbb/LCMS_api/createGroup.php";
    const { group_name } = request.query;
    const params: object = {
        group_name
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

const CreateGroupConfig: RouteConfigObject = {
    route,
    summary,
    tag,
    schema,
    handler
}

export default CreateGroupConfig;
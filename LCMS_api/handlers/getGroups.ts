import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_GET } from "../services/AxiosService";
import { RouteConfigObject } from "../Types";

const route: string = `/group`;
const summary: string = "Get all groups";
const tag: string = "Group";
const schema: ObjectSchema = joi
    .object()
    // .keys({
    //     params: joi.object().keys({
    //         id: joi
    //             .number()
    //             .integer()
    //             .positive()
    //             .description("The PHPBB Group Id")
    //             .required()
    //     })
    // })
    .options({ allowUnknown: true });

const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const url: string = "http://localhost/rivertown/phpbb/LCMS_api/getGroups.php";

    try {
        const result = await PHPBB_GET(url);
        response.send(result.data);
    } catch (err) {
        console.error(err.message);
        response.send({
            error: "An unexpected error occurred"
        });
    }  
}

const GetGroupsConfig: RouteConfigObject = {
    route,
    summary,
    tag,
    schema,
    handler
}

export default GetGroupsConfig;
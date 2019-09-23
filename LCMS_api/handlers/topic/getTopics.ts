import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_GET } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";

const route: string = `/topic`;
const summary: string = "Get all topics";
const tag: string = "Topic";
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
    const url: string = "http://localhost/rivertown/phpbb/LCMS_api/getTopics.php";

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

const GetTopicsConfig: RouteConfigObject = {
    route,
    summary,
    tag,
    schema,
    handler
}

export default GetTopicsConfig;
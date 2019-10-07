import express = require("express");
import * as joi from "joi";
import { ObjectSchema } from "joi";
import { PHPBB_POST } from "../../services/AxiosService";
import { RouteConfigObject } from "../../Types";
import { formatParametersArray } from "../../services/Utils";

const config = require("../../config/config.json");
const tag: string = "Topic";
const summary: string = "Create a new topic";
const phpbbPrefix = config.phpbbPrefix;
const route: string = `/topic`;
const schema: ObjectSchema = joi
    .object()
    .keys({
        query: joi.object().keys({
            forum_id: joi
                .number()
                .integer()
                .min(0)
                .description("The forum id under which the topic is being posted")
                .required(),
            user_id: joi
                .number()
                .integer()
                .min(0)
                .description("The user id of the topic poster")
                .required(),
            subject: joi
                .string()
                .description("The title or subject of the topic")
                .required(),
            message: joi
                .string()
                .description("The topic's description, or initial post")
                .required()
        })
    })
    .options({ allowUnknown: true });

const formattedParametersArray = formatParametersArray(schema);


const handler = async (request: express.Request, response: express.Response): Promise<void> => {
    const { user_id, forum_id, subject, message } = request.query;

    const queryParams: object = {
        user_id,
        forum_id,
        subject,
        message
    }

    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');

    const url: string = `${phpbbPrefix}/createTopic.php?${queryString}`;

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

const swagger: any = {
    route: "/topic",
    value: {
        post: {
            // produces: "application/json",
            // responses: {
            //     "200": {
            //         description: "A list of conditions by category",
            //         examples: {
            //             "application/json": {
            //                 duration: 36,
            //                 data: [
            //                     {
            //                         Category: "Family Medical History",
            //                         Conditions: [
            //                             {
            //                                 RequestID: 123456,
            //                                 CertificateID: 123456,
            //                                 InsuredID: 1234,
            //                                 LastModified: "2017-08-11T00:00:00.000Z",
            //                                 ConditionID: 21,
            //                                 Category: "Family Medical History",
            //                                 Subcategory: "Father",
            //                                 Description: "Diabetes",
            //                                 OptionalValue: null,
            //                                 OptionalValue2: null,
            //                                 ICD9: "V16.9",
            //                                 Rank: 0
            //                             },
            //                             {
            //                                 RequestID: 123456,
            //                                 CertificateID: 123456,
            //                                 InsuredID: 1234,
            //                                 LastModified: "2017-08-11T00:00:00.000Z",
            //                                 ConditionID: 47,
            //                                 Category: "Family Medical History",
            //                                 Subcategory: "Mother",
            //                                 Description: "Longevity ages 85-94",
            //                                 OptionalValue: null,
            //                                 OptionalValue2: null,
            //                                 ICD9: "",
            //                                 Rank: 0
            //                             }
            //                         ]
            //                     }
            //                 ],
            //                 count: 1
            //             }
            //         }
            //     }
            // }
            tags: ["Topic"],
            summary: "Create a new topic",
            parameters: formattedParametersArray
        }    
    }  
};

const CreateTopicConfig: RouteConfigObject = {
    route,
    summary,
    tag,
    schema,
    handler,
    swagger
}

export default CreateTopicConfig;
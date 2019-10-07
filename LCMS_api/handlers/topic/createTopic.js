"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const Utils_1 = require("../../services/Utils");
const config = require("../../config/config.json");
const tag = "Topic";
const summary = "Create a new topic";
const phpbbPrefix = config.phpbbPrefix;
const route = `/topic`;
const schema = joi
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
const formattedParametersArray = Utils_1.formatParametersArray(schema);
const handler = async (request, response) => {
    const { user_id, forum_id, subject, message } = request.query;
    const queryParams = {
        user_id,
        forum_id,
        subject,
        message
    };
    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');
    const url = `${phpbbPrefix}/createTopic.php?${queryString}`;
    try {
        const result = await AxiosService_1.PHPBB_POST(url);
        response.send(result.data);
    }
    catch (err) {
        console.error(err.message);
        response.send({
            error: "An unexpected error occurred"
        });
    }
};
const swagger = {
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
const CreateTopicConfig = {
    route,
    summary,
    tag,
    schema,
    handler,
    swagger
};
exports.default = CreateTopicConfig;
//# sourceMappingURL=createTopic.js.map
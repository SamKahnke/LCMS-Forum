"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const Utils_1 = require("../../services/Utils");
const config = require("../../config/config.json");
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
            .description("[REQUIRED] The forum id under which the topic is being posted")
            .required(),
        user_id: joi
            .number()
            .integer()
            .min(0)
            .description("[REQUIRED] The user id of the topic poster")
            .required(),
        subject: joi
            .string()
            .description("[REQUIRED] The title or subject of the topic")
            .required(),
        message: joi
            .string()
            .description("[REQUIRED] The topic's description, or initial post")
            .required()
    })
})
    .options({ allowUnknown: true });
const formattedParametersArray = Utils_1.formatParametersArray(schema);
const swagger = {
    route: "/topic",
    value: {
        post: {
            tags: ["Topic"],
            summary: "Create a new topic",
            parameters: formattedParametersArray
        }
    }
};
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
        console.log(formattedParametersArray);
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
const CreateTopicConfig = {
    route,
    schema,
    handler,
    swagger
};
exports.default = CreateTopicConfig;
//# sourceMappingURL=createTopic.js.map
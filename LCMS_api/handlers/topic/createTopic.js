"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const route = `/topic`;
const summary = "Create topic";
const tag = "Forum";
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
            .number()
            .integer()
            .min(0)
            .description("The topic's description, or initial post")
            .required()
    })
})
    .options({ allowUnknown: true });
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
    const url = "http://localhost/rivertown/phpbb/LCMS_api/createTopic.php?" + queryString;
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
const CreateTopicConfig = {
    route,
    summary,
    tag,
    schema,
    handler
};
exports.default = CreateTopicConfig;
//# sourceMappingURL=createTopic.js.map
"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const route = `/topic/:topic_id/close`;
const summary = "Closes topic by topic id";
const tag = "Topic";
const schema = joi
    .object()
    .keys({
    params: joi.object().keys({
        topic_id: joi
            .number()
            .integer()
            .positive()
            .description("The PHPBB Topic Id")
            .required()
    })
})
    .options({ allowUnknown: true });
const handler = async (request, response) => {
    const { topic_id } = request.params;
    const queryParams = {
        topic_id
    };
    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');
    const url = "http://localhost/rivertown/phpbb/LCMS_api/closeTopic.php?" + queryString;
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
const CloseTopicConfig = {
    route,
    summary,
    tag,
    schema,
    handler
};
exports.default = CloseTopicConfig;
//# sourceMappingURL=closeTopic.js.map
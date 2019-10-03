"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const route = `/topic/delete`;
const summary = "Delete topic by topic id";
const tag = "Topic";
const schema = joi
    .object()
    .keys({
    query: joi.object().keys({
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
    const { topic_id } = request.query;
    const params = {
        topic_id,
    };
    const queryParams = {
        topic_id
    };
    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');
    const url = "http://localhost/rivertown/phpbb/LCMS_api/deleteTopic.php?" + queryString;
    try {
        const result = await AxiosService_1.PHPBB_POST(url, params);
        response.send(result.data);
    }
    catch (err) {
        console.error(err.message);
        response.send({
            error: "An unexpected error occurred"
        });
    }
};
const DeleteTopicConfig = {
    route,
    summary,
    tag,
    schema,
    handler
};
exports.default = DeleteTopicConfig;
//# sourceMappingURL=deleteTopic.js.map
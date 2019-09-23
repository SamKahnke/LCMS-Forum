"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const route = `/topic/:id`;
const summary = "Get topic by topic id";
const tag = "Topic";
const schema = joi
    .object()
    .keys({
    params: joi.object().keys({
        id: joi
            .number()
            .integer()
            .positive()
            .description("The PHPBB Topic Id")
            .required()
    })
})
    .options({ allowUnknown: true });
const handler = async (request, response) => {
    const url = "http://localhost/rivertown/phpbb/LCMS_api/getTopicById.php";
    const { id: topic_id } = request.params;
    const params = {
        topic_id
    };
    try {
        const result = await AxiosService_1.PHPBB_GET(url, params);
        response.send(result.data);
    }
    catch (err) {
        console.error(err.message);
        response.send({
            error: "An unexpected error occurred"
        });
    }
};
const GetTopicByIdConfig = {
    route,
    summary,
    tag,
    schema,
    handler
};
exports.default = GetTopicByIdConfig;
//# sourceMappingURL=getTopicById.js.map
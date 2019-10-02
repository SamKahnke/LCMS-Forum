"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const route = `/forum/:id`;
const summary = "Get forum by forum id";
const tag = "Forum";
const schema = joi
    .object()
    .keys({
    params: joi.object().keys({
        id: joi
            .number()
            .integer()
            .positive()
            .description("The PHPBB Forum Id")
            .required()
    })
})
    .options({ allowUnknown: true });
const handler = async (request, response) => {
    const url = "http://localhost/rivertown/phpbb/LCMS_api/getForumById.php";
    const { id: forum_id } = request.params;
    const params = {
        forum_id
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
const GetForumByIdConfig = {
    route,
    summary,
    tag,
    schema,
    handler
};
exports.default = GetForumByIdConfig;
//# sourceMappingURL=getForumById.js.map
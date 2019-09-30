"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const route = `/forum/delete`;
const summary = "Delete forum by forum id";
const tag = "Forum";
const schema = joi
    .object()
    .keys({
    query: joi.object().keys({
        forum_id: joi
            .number()
            .integer()
            .positive()
            .description("The PHPBB Forum Id")
            .required()
    })
})
    .options({ allowUnknown: true });
const handler = async (request, response) => {
    const { forum_id } = request.query;
    const params = {
        forum_id,
    };
    const queryParams = {
        forum_id
    };
    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');
    const url = "http://localhost/rivertown/phpbb/LCMS_api/deleteForum.php?" + queryString;
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
const DeleteForumConfig = {
    route,
    summary,
    tag,
    schema,
    handler
};
exports.default = DeleteForumConfig;
//# sourceMappingURL=deleteForum.js.map
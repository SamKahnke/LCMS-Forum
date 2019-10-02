"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const route = `/forum/:id/user`;
const summary = "Get users and forum auth info by forum id";
const tag = "Forum";
const schema = joi
    .object()
    .keys({
    params: joi.object().keys({
        id: joi
            .number()
            .integer()
            .min(0)
            .description("The PHPBB Forum Id")
            .required()
    })
})
    .options({ allowUnknown: true });
const handler = async (request, response) => {
    const url = "http://localhost/rivertown/phpbb/LCMS_api/getForumUsers.php";
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
const GetForumUsersConfig = {
    route,
    summary,
    tag,
    schema,
    handler
};
exports.default = GetForumUsersConfig;
//# sourceMappingURL=getForumUsers.js.map
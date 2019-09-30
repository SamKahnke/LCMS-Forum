"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const route = `/forum/:id/user/:user_id`;
const summary = "Add user to a forum";
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
            .required(),
        user_id: joi
            .number()
            .integer()
            .min(0)
            .description("The PHPBB User Id")
            .required()
    }),
    query: joi.object().keys({
        auth_option_id: joi
            .number()
            .integer()
            .min(0)
            .description("The PHPBB Auth Option Id")
            .required(),
        auth_role_id: joi
            .number()
            .integer()
            .min(0)
            .description("The PHPBB Auth Role Id")
            .required(),
        auth_setting: joi
            .number()
            .integer()
            .min(0)
            .description("The PHPBB Auth Setting")
            .required()
    })
})
    .options({ allowUnknown: true });
const handler = async (request, response) => {
    const { id: forum_id, user_id: user_id } = request.params;
    const { auth_option_id, auth_role_id, auth_setting } = request.query;
    const queryParams = {
        forum_id,
        user_id,
        auth_option_id,
        auth_role_id,
        auth_setting
    };
    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');
    let url = "http://localhost/rivertown/phpbb/LCMS_api/addUserToForum.php?" + queryString;
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
const AddUserToForumConfig = {
    route,
    summary,
    tag,
    schema,
    handler
};
exports.default = AddUserToForumConfig;
//# sourceMappingURL=addUserToForum.js.map
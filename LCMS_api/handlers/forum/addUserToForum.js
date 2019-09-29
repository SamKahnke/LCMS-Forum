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
            .required(),
        auth_option_id: joi
            .number()
            .integer()
            .min(0)
            .description("The PHPBB Auth Option Id"),
        auth_role_id: joi
            .number()
            .integer()
            .min(0)
            .description("The PHPBB Auth Role Id"),
        auth_setting: joi
            .number()
            .integer()
            .min(0)
            .description("The PHPBB Auth Setting")
    })
})
    .options({ allowUnknown: true });
const handler = async (request, response) => {
    const { id: forum_id, user_id } = request.params;
    const { auth_option_id, auth_role_id, auth_setting } = request.query;
    let url = "http://localhost/rivertown/phpbb/LCMS_api/addUserToForum.php";
    const params = {
        forum_id,
        user_id,
        auth_option_id,
        auth_role_id,
        auth_setting
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
const AddUserToForumConfig = {
    route,
    summary,
    tag,
    schema,
    handler
};
exports.default = AddUserToForumConfig;
//# sourceMappingURL=addUserToForum.js.map
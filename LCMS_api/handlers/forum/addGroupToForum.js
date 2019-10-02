"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const route = `/forum/:id/group/:group_id`;
const summary = "Add group to a forum";
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
        group_id: joi
            .number()
            .integer()
            .min(0)
            .description("The PHPBB Group Id")
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
    const { id: forum_id, group_id: group_id } = request.params;
    const { auth_option_id, auth_role_id, auth_setting } = request.query;
    const queryParams = {
        forum_id,
        group_id,
        auth_option_id: auth_option_id || 1,
        auth_role_id: auth_role_id || 15,
        auth_setting: auth_setting || 1
    };
    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');
    const url = "http://localhost/rivertown/phpbb/LCMS_api/addGroupToForum.php?" + queryString;
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
const AddGroupToForumConfig = {
    route,
    summary,
    tag,
    schema,
    handler
};
exports.default = AddGroupToForumConfig;
//# sourceMappingURL=addGroupToForum.js.map
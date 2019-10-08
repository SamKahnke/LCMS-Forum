"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const Utils_1 = require("../../services/Utils");
const config = require("../../config/config.json");
const phpbbPrefix = config.phpbbPrefix;
const route = `/forum/:id/user/:user_id`;
const schema = joi
    .object()
    .keys({
    params: joi.object().keys({
        id: joi
            .number()
            .integer()
            .min(0)
            .description("[REQUIRED] The PHPBB Forum Id")
            .required(),
        user_id: joi
            .number()
            .integer()
            .min(0)
            .description("[REQUIRED] The PHPBB User Id")
            .required()
    }),
    query: joi.object().keys({
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
            .description("The PHPBB Auth Setting"),
    })
})
    .options({ allowUnknown: true });
const formattedParametersArray = Utils_1.formatParametersArray(schema);
const swagger = {
    route: "/forum/:id/user/:user_id",
    value: {
        post: {
            tags: ["Forum"],
            summary: "Add a single user to a forum",
            parameters: formattedParametersArray
        }
    }
};
const handler = async (request, response) => {
    const { id: forum_id, user_id: user_id } = request.params;
    const { auth_option_id, auth_role_id, auth_setting } = request.query;
    const queryParams = {
        forum_id,
        user_id,
        auth_option_id: auth_option_id || 1,
        auth_role_id: auth_role_id || 15,
        auth_setting: auth_setting || 1
    };
    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');
    const url = `${phpbbPrefix}/addUserToForum.php?${queryString}`;
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
    schema,
    handler,
    swagger
};
exports.default = AddUserToForumConfig;
//# sourceMappingURL=addUserToForum.js.map
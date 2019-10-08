"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const Utils_1 = require("../../services/Utils");
const config = require("../../config/config.json");
const phpbbPrefix = config.phpbbPrefix;
const route = `/forum/:id/user`;
const schema = joi
    .object()
    .keys({
    params: joi.object().keys({
        id: joi
            .number()
            .integer()
            .min(0)
            .description("[REQUIRED] The PHPBB Forum Id")
            .required()
    })
})
    .options({ allowUnknown: true });
const formattedParametersArray = Utils_1.formatParametersArray(schema);
const swagger = {
    route: "/forum/:id/user",
    value: {
        get: {
            tags: ["Forum"],
            summary: "Get all users associated with a forum",
            parameters: formattedParametersArray
        }
    }
};
const handler = async (request, response) => {
    const url = `${phpbbPrefix}/getForumUsers.php`;
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
    schema,
    handler,
    swagger
};
exports.default = GetForumUsersConfig;
//# sourceMappingURL=getForumUsers.js.map
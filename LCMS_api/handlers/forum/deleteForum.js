"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const Utils_1 = require("../../services/Utils");
const config = require("../../config/config.json");
const phpbbPrefix = config.phpbbPrefix;
const route = `/forum/:forum_id/delete`;
const schema = joi
    .object()
    .keys({
    params: joi.object().keys({
        forum_id: joi
            .number()
            .integer()
            .positive()
            .description("[REQUIRED] The PHPBB Forum Id")
            .required()
    })
})
    .options({ allowUnknown: true });
const formattedParametersArray = Utils_1.formatParametersArray(schema);
const swagger = {
    route: "/forum/:forum_id/delete",
    value: {
        post: {
            tags: ["Forum"],
            summary: "Delete a forum",
            parameters: formattedParametersArray
        }
    }
};
const handler = async (request, response) => {
    const { forum_id } = request.params;
    const queryParams = {
        forum_id
    };
    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');
    const url = `${phpbbPrefix}/deleteForum.php?${queryString}`;
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
const DeleteForumConfig = {
    route,
    schema,
    handler,
    swagger
};
exports.default = DeleteForumConfig;
//# sourceMappingURL=deleteForum.js.map
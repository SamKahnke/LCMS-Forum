"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const Utils_1 = require("../../services/Utils");
const config = require("../../config/config.json");
const phpbbPrefix = config.phpbbPrefix;
const route = `/forum`;
const schema = joi
    .object()
    .keys({
    query: joi.object().keys({
        forum_name: joi
            .string()
            .description("[REQUIRED] The name of the new forum")
            .required(),
        left_id: joi
            .number()
            .integer()
            .min(0)
            .description("[REQUIRED] The left id in the forum tree. Must be unique")
            .required(),
        right_id: joi
            .number()
            .integer()
            .min(0)
            .description("[REQUIRED] The right id in the forum tree. Must be unique and 1 greater than left_id")
            .required(),
        parent_id: joi
            .number()
            .integer()
            .min(0)
            .description("The id of the parent forum"),
        forum_parents: joi
            .string()
            .description("The id of the parent forum"),
        forum_desc: joi
            .string()
            .description("A description of the forum")
    })
})
    .options({ allowUnknown: true });
const formattedParametersArray = Utils_1.formatParametersArray(schema);
const swagger = {
    route: "/forum",
    value: {
        post: {
            tags: ["Forum"],
            summary: "Create a new forum",
            parameters: formattedParametersArray
        }
    }
};
const handler = async (request, response) => {
    const { forum_name, left_id, right_id, parent_id, forum_parents, forum_desc } = request.query;
    const queryParams = {
        forum_name,
        left_id,
        right_id,
        parent_id: parent_id || 0,
        forum_parents: forum_parents || '',
        forum_desc: forum_desc || ''
    };
    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');
    const url = `${phpbbPrefix}/createForum.php?${queryString}`;
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
const CreateForumConfig = {
    route,
    schema,
    handler,
    swagger
};
exports.default = CreateForumConfig;
//# sourceMappingURL=createForum.js.map
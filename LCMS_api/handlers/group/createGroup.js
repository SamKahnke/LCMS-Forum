"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const Utils_1 = require("../../services/Utils");
const config = require("../../config/config.json");
const phpbbPrefix = config.phpbbPrefix;
const route = `/group`;
const summary = "Create group";
const tag = "Group";
const schema = joi
    .object()
    .keys({
    query: joi.object().keys({
        group_name: joi
            .string()
            .description("[REQUIRED] The name of the new group")
            .required(),
        group_desc: joi
            .string()
            .description("A description of the group")
    })
})
    .options({ allowUnknown: true });
const formattedParametersArray = Utils_1.formatParametersArray(schema);
const swagger = {
    route: "/group",
    value: {
        post: {
            tags: ["Group"],
            summary: "Create a new group",
            parameters: formattedParametersArray
        }
    }
};
const handler = async (request, response) => {
    const { group_name, group_desc } = request.query;
    const queryParams = {
        group_name,
        group_desc
    };
    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');
    const url = `${phpbbPrefix}/createGroup.php?${queryString}`;
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
const CreateGroupConfig = {
    route,
    schema,
    handler,
    swagger
};
exports.default = CreateGroupConfig;
//# sourceMappingURL=createGroup.js.map
"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const Utils_1 = require("../../services/Utils");
const config = require("../../config/config.json");
const phpbbPrefix = config.phpbbPrefix;
const route = `/group/:id`;
const schema = joi
    .object()
    .keys({
    params: joi.object().keys({
        id: joi
            .number()
            .integer()
            .positive()
            .description("[REQUIRED] The PHPBB Group Id")
            .required()
    })
})
    .options({ allowUnknown: true });
const formattedParametersArray = Utils_1.formatParametersArray(schema);
const swagger = {
    route: "/group/:id",
    value: {
        get: {
            tags: ["Group"],
            summary: "Get a single group's data",
            parameters: formattedParametersArray
        }
    }
};
const handler = async (request, response) => {
    const url = `${phpbbPrefix}/getGroupById.php`;
    const { id: group_id } = request.params;
    const params = {
        group_id
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
const GetGroupByIdConfig = {
    route,
    schema,
    handler,
    swagger
};
exports.default = GetGroupByIdConfig;
//# sourceMappingURL=getGroupById.js.map
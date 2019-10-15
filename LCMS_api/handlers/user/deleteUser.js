"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const Utils_1 = require("../../services/Utils");
const config = require("../../config/config.json");
const phpbbPrefix = config.phpbbPrefix;
const route = `/user/:user_id/delete`;
const schema = joi
    .object()
    .keys({
    params: joi.object().keys({
        user_id: joi
            .number()
            .integer()
            .positive()
            .description("[REQUIRED] The PHPBB User Id")
            .required()
    })
})
    .options({ allowUnknown: true });
const formattedParametersArray = Utils_1.formatParametersArray(schema);
const swagger = {
    route: "/user/:user_id/delete",
    value: {
        post: {
            tags: ["User"],
            summary: "Delete a user",
            parameters: formattedParametersArray
        }
    }
};
const handler = async (request, response) => {
    const { user_id } = request.params;
    const queryParams = {
        user_id
    };
    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');
    const url = `${phpbbPrefix}/deleteUser.php?${queryString}`;
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
const DeleteUserConfig = {
    route,
    schema,
    handler,
    swagger
};
exports.default = DeleteUserConfig;
//# sourceMappingURL=deleteUser.js.map
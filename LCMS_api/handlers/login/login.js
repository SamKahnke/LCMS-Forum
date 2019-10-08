"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const Utils_1 = require("../../services/Utils");
const config = require("../../config/config.json");
const phpbbLoginPrefix = config.phpbbLoginPrefix;
const route = `/login`;
const schema = joi
    .object()
    .keys({
    query: joi.object().keys({
        username: joi
            .string()
            .description("[REQUIRED] The user's username")
            .required(),
        password: joi
            .string()
            .description("[REQUIRED] The user's password")
            .required()
    })
})
    .options({ allowUnknown: true });
const formattedParametersArray = Utils_1.formatParametersArray(schema);
const swagger = {
    route: "/login",
    value: {
        post: {
            tags: ["Login"],
            summary: "Log user in. Must redirect to desired page after",
            parameters: formattedParametersArray
        }
    }
};
const handler = async (request, response) => {
    const { username, password } = request.query;
    const queryParams = {
        username,
        password
    };
    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');
    const url = `${phpbbLoginPrefix}/ucp.php?mode=login${queryString}`;
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
const LoginConfig = {
    route,
    schema,
    handler,
    swagger
};
exports.default = LoginConfig;
//# sourceMappingURL=login.js.map
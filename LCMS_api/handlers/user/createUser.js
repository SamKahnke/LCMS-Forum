"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const Utils_1 = require("../../services/Utils");
const config = require("../../config/config.json");
const phpbbPrefix = config.phpbbPrefix;
const route = `/user`;
const schema = joi
    .object()
    .keys({
    query: joi.object().keys({
        username: joi
            .string()
            .description("[REQUIRED] The new user's unique username")
            .required(),
        password: joi
            .string()
            .description("[REQUIRED] The new user's unique password")
            .required(),
        email: joi
            .string()
            .description("[REQUIRED] The new user's unique email")
            .required(),
        tz: joi
            .string()
            .description("[REQUIRED] The user's timezone key. eg: UTC")
            .required(),
        lang: joi
            .string()
            .description("[REQUIRED] The user's language key. eg: en")
            .required()
    })
})
    .options({ allowUnknown: true });
const formattedParametersArray = Utils_1.formatParametersArray(schema);
const swagger = {
    route: "/user",
    value: {
        post: {
            tags: ["User"],
            summary: "Create a new user and encrypt password",
            parameters: formattedParametersArray
        }
    }
};
const handler = async (request, response) => {
    const { username, password, email, tz, lang } = request.query;
    const queryParams = {
        username,
        password,
        email,
        tz: tz || 'UTC',
        lang: lang || 'en'
    };
    var queryString = Object.keys(queryParams)
        .map(k => k + '=' + queryParams[k])
        .join('&');
    const url = `${phpbbPrefix}/createUser.php?${queryString}`;
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
const CreateUserConfig = {
    route,
    schema,
    handler,
    swagger
};
exports.default = CreateUserConfig;
//# sourceMappingURL=createUser.js.map
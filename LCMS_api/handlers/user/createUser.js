"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const route = `/user`;
const summary = "Create user";
const tag = "User";
const schema = joi
    .object()
    .keys({
    params: joi.object().keys({
        username: joi
            .string()
            .description("The new user's unique username")
            .required(),
        password: joi
            .string()
            .description("The new user's unique password")
            .required(),
        email: joi
            .string()
            .description("The new user's unique email")
            .required(),
        tz: joi
            .string()
            .description("The user's timezone key. eg: UTC")
            .required(),
        lang: joi
            .string()
            .description("The user's language key. eg: en")
            .required()
    })
})
    .options({ allowUnknown: true });
const handler = async (request, response) => {
    const { username, password, email, tz, lang } = request.query;
    const queryParams = {
        username,
        password,
        email,
        tz,
        lang
    };
    var queryString = Object.keys(queryParams)
        .map(k => k + '=' + queryParams[k])
        .join('&');
    const url = "http://localhost/rivertown/phpbb/LCMS_api/createUser.php?" + queryString;
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
    summary,
    tag,
    schema,
    handler
};
exports.default = CreateUserConfig;
//# sourceMappingURL=createUser.js.map
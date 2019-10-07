"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const route = `/login`;
const summary = "Log user in";
const tag = "Login";
const schema = joi
    .object()
    .keys({
    query: joi.object().keys({
        username: joi
            .string()
            .description("The user's username")
            .required(),
        password: joi
            .string()
            .description("The user's password")
            .required()
    })
})
    .options({ allowUnknown: true });
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
    const url = "http://localhost/rivertown/phpbb/ucp.php?mode=login" + queryString;
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
    summary,
    tag,
    schema,
    handler
};
exports.default = LoginConfig;
//# sourceMappingURL=login.js.map
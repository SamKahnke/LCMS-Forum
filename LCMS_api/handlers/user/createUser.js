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
        name: joi
            .string()
            .description("Create a new user")
            .required(),
        password: joi
            .string()
            .required()
    })
})
    .options({ allowUnknown: true });
const handler = async (request, response) => {
    const url = "http://localhost/rivertown/phpbb/LCMS_api/createUser.php";
    const { username, user_password } = request.query;
    const params = {
        username,
        user_password
    };
    try {
        const result = await AxiosService_1.PHPBB_POST(url, params);
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
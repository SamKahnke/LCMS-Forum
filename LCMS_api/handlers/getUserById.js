"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../services/AxiosService");
const route = `/user/:id`;
const summary = "Get Users by user id";
const tag = "User";
const schema = joi
    .object()
    .keys({
    params: joi.object().keys({
        id: joi
            .number()
            .integer()
            .positive()
            .description("The PHPBB User Id")
            .required()
    })
})
    .options({ allowUnknown: true });
const handler = async (request, response) => {
    const url = "http://localhost/rivertown/phpbb/LCMS_api/getUserById.php";
    const { id: user_id } = request.params;
    const params = {
        user_id
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
const GetUserByIdConfig = {
    route,
    summary,
    tag,
    schema,
    handler
};
exports.default = GetUserByIdConfig;
//# sourceMappingURL=getUserById.js.map
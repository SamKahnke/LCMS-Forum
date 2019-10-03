"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const route = `/user/:user_id/delete`;
const summary = "Delete user by user id";
const tag = "User";
const schema = joi
    .object()
    .keys({
    params: joi.object().keys({
        user_id: joi
            .number()
            .integer()
            .positive()
            .description("The PHPBB User Id")
            .required()
    })
})
    .options({ allowUnknown: true });
const handler = async (request, response) => {
    const { user_id } = request.params;
    const queryParams = {
        user_id
    };
    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');
    const url = "http://localhost/rivertown/phpbb/LCMS_api/deleteUser.php?" + queryString;
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
    summary,
    tag,
    schema,
    handler
};
exports.default = DeleteUserConfig;
//# sourceMappingURL=deleteUser.js.map
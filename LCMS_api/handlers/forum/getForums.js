"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const route = `/forum`;
const summary = "Get all forums";
const tag = "Forum";
const schema = joi
    .object()
    // .keys({
    //     params: joi.object().keys({
    //         id: joi
    //             .number()
    //             .integer()
    //             .positive()
    //             .description("The PHPBB Group Id")
    //             .required()
    //     })
    // })
    .options({ allowUnknown: true });
const handler = async (request, response) => {
    const url = "http://localhost/rivertown/phpbb/LCMS_api/getForums.php";
    try {
        const result = await AxiosService_1.PHPBB_GET(url);
        response.send(result.data);
    }
    catch (err) {
        console.error(err.message);
        response.send({
            error: "An unexpected error occurred"
        });
    }
};
const GetForumsConfig = {
    route,
    summary,
    tag,
    schema,
    handler
};
exports.default = GetForumsConfig;
//# sourceMappingURL=getForums.js.map
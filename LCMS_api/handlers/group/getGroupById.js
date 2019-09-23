"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const route = `/group/:id`;
const summary = "Get groups by group id";
const tag = "Group";
const schema = joi
    .object()
    .keys({
    params: joi.object().keys({
        id: joi
            .number()
            .integer()
            .positive()
            .description("The PHPBB Group Id")
            .required()
    })
})
    .options({ allowUnknown: true });
const handler = async (request, response) => {
    const url = "http://localhost/rivertown/phpbb/LCMS_api/getGroupById.php";
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
    summary,
    tag,
    schema,
    handler
};
exports.default = GetGroupByIdConfig;
//# sourceMappingURL=getGroupById.js.map
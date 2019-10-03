"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const route = `/group/:group_id/delete`;
const summary = "Delete group by group id";
const tag = "Group";
const schema = joi
    .object()
    .keys({
    params: joi.object().keys({
        group_id: joi
            .number()
            .integer()
            .positive()
            .description("The PHPBB Group Id")
            .required()
    })
})
    .options({ allowUnknown: true });
const handler = async (request, response) => {
    const { group_id } = request.params;
    const queryParams = {
        group_id
    };
    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');
    const url = "http://localhost/rivertown/phpbb/LCMS_api/deleteGroup.php?" + queryString;
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
const DeleteGroupConfig = {
    route,
    summary,
    tag,
    schema,
    handler
};
exports.default = DeleteGroupConfig;
//# sourceMappingURL=deleteGroup.js.map
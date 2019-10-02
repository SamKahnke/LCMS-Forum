"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const route = `/group/:group_id/user/:user_id`;
const summary = "Add user to a group";
const tag = "Group";
const schema = joi
    .object()
    .keys({
    params: joi.object().keys({
        user_id: joi
            .number()
            .integer()
            .min(0)
            .description("The PHPBB User Id")
            .required(),
        group_id: joi
            .number()
            .integer()
            .min(0)
            .description("The PHPBB Group Id")
            .required(),
        group_leader: joi
            .number()
            .integer()
            .min(0)
            .description("The PHPBB Group Leader Id"),
        user_pending: joi
            .number()
            .integer()
            .min(0)
            .description("Tracks a pending group invite")
    })
})
    .options({ allowUnknown: true });
const handler = async (request, response) => {
    const { user_id: user_id, group_id: group_id } = request.params;
    const { group_leader, user_pending } = request.query;
    const queryParams = {
        user_id,
        group_id,
        group_leader: group_leader || 0,
        user_pending: user_pending || 0
    };
    var esc = encodeURIComponent;
    var queryString = Object.keys(queryParams)
        .map(k => esc(k) + '=' + esc(queryParams[k]))
        .join('&');
    const url = "http://localhost/rivertown/phpbb/LCMS_api/addUserToGroup.php?" + queryString;
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
const AddUserToGroupConfig = {
    route,
    summary,
    tag,
    schema,
    handler
};
exports.default = AddUserToGroupConfig;
//# sourceMappingURL=addUserToGroup.js.map
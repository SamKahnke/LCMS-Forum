"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const route = `/group`;
const summary = "Create group";
const tag = "Group";
const schema = joi
    .object()
    .keys({
    params: joi.object().keys({
        name: joi
            .string()
            .description("Create a new group")
            .required()
    })
})
    .options({ allowUnknown: true });
const handler = async (request, response) => {
    const url = "http://localhost/rivertown/phpbb/LCMS_api/createGroup.php";
    const { group_name } = request.query;
    const params = {
        group_name
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
const CreateGroupConfig = {
    route,
    summary,
    tag,
    schema,
    handler
};
exports.default = CreateGroupConfig;
//# sourceMappingURL=createGroup.js.map
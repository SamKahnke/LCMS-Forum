"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const AxiosService_1 = require("../../services/AxiosService");
const Utils_1 = require("../../services/Utils");
const config = require("../../config/config.json");
const phpbbPrefix = config.phpbbPrefix;
const route = `/topics`;
const schema = joi
    .object()
    .options({ allowUnknown: true });
const formattedParametersArray = Utils_1.formatParametersArray(schema);
const swagger = {
    route: "/topics",
    value: {
        get: {
            tags: ["Topic"],
            summary: "Get all topics",
            parameters: formattedParametersArray
        }
    }
};
const handler = async (request, response) => {
    const url = `${phpbbPrefix}/getTopics.php`;
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
const GetTopicsConfig = {
    route,
    schema,
    handler,
    swagger
};
exports.default = GetTopicsConfig;
//# sourceMappingURL=getTopics.js.map
"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express = require("express");
const AxiosService_1 = require("./services/AxiosService");
const getGroupById_1 = require("./handlers/getGroupById");
const JoiValidation_1 = require("./middleware/JoiValidation");
const phpbbAPIRoot = "http://localhost/rivertown/phpbb/LCMS_api/";
const getGroups = async (request, response) => {
    const url = phpbbAPIRoot + "getGroups.php";
    const result = await AxiosService_1.PHPBB_GET(url);
    response.send(result.data);
};
const getGroupUsers = async (request, response) => {
    const url = phpbbAPIRoot + "getGroupUsers.php";
    const result = await AxiosService_1.PHPBB_GET(url);
    response.send(result.data);
};
const createGroup = async (request, response) => {
    const url = phpbbAPIRoot + "createGroup.php";
    const { group_name } = request.query;
    const params = {
        group_name
    };
    const result = await AxiosService_1.PHPBB_POST(url, params);
    response.send(result.data);
};
(async () => {
    try {
        const port = +(process.env.APP_PORT || 2500);
        const app = express();
        app.get(`/group`, getGroups);
        app.get(getGroupById_1.default.route, JoiValidation_1.default(getGroupById_1.default.schema), getGroupById_1.default.handler);
        app.get(`/groupusers`, getGroupUsers);
        app.post(`/group`, createGroup);
        app.listen(port, () => {
            console.log(`Listening on port ${port}`);
        });
    }
    catch (err) {
        console.error(err);
        process.exit(1);
    }
})();
//# sourceMappingURL=server.js.map
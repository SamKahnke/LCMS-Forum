"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express = require("express");
const JoiValidation_1 = require("./middleware/JoiValidation");
const AxiosService_1 = require("./services/AxiosService");
const getGroups_1 = require("./handlers/getGroups");
const getUsers_1 = require("./handlers/getUsers");
const getGroupById_1 = require("./handlers/getGroupById");
const getUserById_1 = require("./handlers/getUserById");
const createGroup_1 = require("./handlers/createGroup");
const getGroupUsers = async (request, response) => {
    const url = "http://localhost/rivertown/phpbb/LCMS_api/getGroupUsers.php";
    const result = await AxiosService_1.PHPBB_GET(url);
    response.send(result.data);
};
// const createGroup = async (request: express.Request, response: express.Response) => {
//     const url: string = "http://localhost/rivertown/phpbb/LCMS_api/createGroup.php";
//     const { group_name } = request.query;
//     const params: object = {
//         group_name
//     }
//     const result = await PHPBB_POST(url, params);
//     response.send(result.data);
// }
(async () => {
    try {
        const port = +(process.env.APP_PORT || 2500);
        const app = express();
        app.get(getGroups_1.default.route, getGroups_1.default.handler);
        app.get(getUsers_1.default.route, getUsers_1.default.handler);
        app.get(getGroupById_1.default.route, JoiValidation_1.default(getGroupById_1.default.schema), getGroupById_1.default.handler);
        app.get(getUserById_1.default.route, JoiValidation_1.default(getUserById_1.default.schema), getUserById_1.default.handler);
        app.get(`/groupusers`, getGroupUsers);
        app.post(createGroup_1.default.route, createGroup_1.default.handler);
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
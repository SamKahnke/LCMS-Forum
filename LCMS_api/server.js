"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express = require("express");
const AxiosService_1 = require("./services/AxiosService");
const phpbbAPIRoot = "http://localhost/rivertown/phpbb/LCMS_api/";
const getGroups = async (request, response) => {
    const url = phpbbAPIRoot + "getGroups.php";
    const result = await AxiosService_1.getPHPBBResponse(url);
    response.send(result.data);
};
(async () => {
    try {
        const port = +(process.env.APP_PORT || 2500);
        const app = express();
        app.get(`/group`, getGroups);
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
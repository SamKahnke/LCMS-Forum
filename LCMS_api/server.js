"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const cors = require("cors");
const express = require("express");
const AxiosService_1 = require("./services/AxiosService");
const objectTest = async (request, response) => {
    const url = "http://localhost/rivertown/phpbb/LCMS_api/forum_name.php";
    const result = await AxiosService_1.getPHPBBResponse(url);
    response.send(result.data);
};
(async () => {
    try {
        const port = +(process.env.APP_PORT || 2500);
        const app = express();
        app.use(cors());
        app.get(`/objecttest`, objectTest);
        app.get(`/test`, (req, res) => {
            res.send("Connected to LCMS API");
        });
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
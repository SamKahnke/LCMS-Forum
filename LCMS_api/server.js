"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const cors = require("cors");
const express = require("express");
const AxiosService_1 = require("./services/AxiosService");
const test1_1 = require("./test1");
const objectTest = async () => {
    const url = "http://localhost/rivertown/phpbb/LCMS_api/test1";
    const response = await AxiosService_1.getPHPBBResponse(url);
    return response;
};
(async () => {
    try {
        const port = +(process.env.APP_PORT || 2500);
        const app = express();
        app.use(cors());
        app.get(`/objecttest`, objectTest);
        app.get(`/test1`, test1_1.returnTestObject);
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
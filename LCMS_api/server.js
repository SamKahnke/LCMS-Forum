"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const cors = require("cors");
const express = require("express");
(async () => {
    try {
        const port = +(process.env.APP_PORT || 2500);
        const app = express();
        // const routePrefix: string = "rivertown";
        app.use(cors());
        app.get(`/test`, (req, res) => {
            res.status(200).send(`Connected to LCMS API`);
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
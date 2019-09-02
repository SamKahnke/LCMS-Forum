import * as cors from "cors";
import * as express from "express";

(async () => {
    try {
        const port: number = +(process.env.APP_PORT || 2500);
        const app: express.Express = express();

        // const routePrefix: string = "rivertown";

        app.use(cors());

        app.get(`/test`, (req, res) => {
            res.status(200).send(`Connected to LCMS API`);
        });

        app.listen(port, () => {
            console.log(`Listening on port ${port}`);
        });
    } catch (err) {
        console.error(err);
        process.exit(1);
    }
})();
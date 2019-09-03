import * as cors from "cors";
import * as express from "express";
import { getPHPBBResponse } from "./services/AxiosService";
import { AxiosResponse } from "axios";
import { returnTestObject } from "./test1";

const objectTest = async (request: express.Request, response: express.Response) => {
    const url: string = "http://localhost/rivertown/phpbb/LCMS_api/forum_name.php";
    const result = await getPHPBBResponse(url);
    response.send(result.data);
}

(async () => {
    try {
        const port: number = +(process.env.APP_PORT || 2500);
        const app: express.Express = express();

        app.use(cors());

        app.get(`/objecttest`, objectTest);

        app.get(`/test`, (req, res) => {
            res.send("Connected to LCMS API");
        });

        app.listen(port, () => {
            console.log(`Listening on port ${port}`);
        });
    } catch (err) {
        console.error(err);
        process.exit(1);
    }
})();
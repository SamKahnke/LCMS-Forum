import * as express from "express";
import { getPHPBBResponse } from "./services/AxiosService";

const phpbbAPIRoot: string = "http://localhost/rivertown/phpbb/LCMS_api/"

const getGroups = async (request: express.Request, response: express.Response) => {
    const url: string = phpbbAPIRoot + "getGroups.php";
    const result = await getPHPBBResponse(url);
    response.send(result.data);
}

(async () => {
    try {
        const port: number = +(process.env.APP_PORT || 2500);
        const app: express.Express = express();

        app.get(`/group`, getGroups);

        app.listen(port, () => {
            console.log(`Listening on port ${port}`);
        });
    } catch (err) {
        console.error(err);
        process.exit(1);
    }
})();
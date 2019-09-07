import * as express from "express";
import { getPHPBBResponse } from "./services/AxiosService";

const phpbbAPIRoot: string = "http://localhost/rivertown/phpbb/LCMS_api/"

const getGroups = async (request: express.Request, response: express.Response) => {
    const url: string = phpbbAPIRoot + "getGroups.php";
    const result = await getPHPBBResponse(url);
    response.send(result.data);
}

const getGroupById = async (request: express.Request, response: express.Response) => {
    const url: string = phpbbAPIRoot + "getGroupById.php";
    const { id: group_id } = request.params;
    const params: object = {
        group_id
    }
    const result = await getPHPBBResponse(url, params);
    response.send(result.data);
}

const getGroupUsers = async (request: express.Request, response: express.Response) => {
    const url: string = phpbbAPIRoot + "getGroupUsers.php";
    const result = await getPHPBBResponse(url);
    response.send(result.data);
}

(async () => {
    try {
        const port: number = +(process.env.APP_PORT || 2500);
        const app: express.Express = express();

        app.get(`/group`, getGroups);
        app.get(`/group/:id`, getGroupById);
        app.get(`/groupusers`, getGroupUsers);

        app.listen(port, () => {
            console.log(`Listening on port ${port}`);
        });
    } catch (err) {
        console.error(err);
        process.exit(1);
    }
})();
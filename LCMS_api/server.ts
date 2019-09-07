import * as express from "express";
import { PHPBB_GET, PHPBB_POST } from "./services/AxiosService";

const phpbbAPIRoot: string = "http://localhost/rivertown/phpbb/LCMS_api/"

const getGroups = async (request: express.Request, response: express.Response) => {
    const url: string = phpbbAPIRoot + "getGroups.php";
    const result = await PHPBB_GET(url);
    response.send(result.data);
}

const getGroupById = async (request: express.Request, response: express.Response) => {
    const url: string = phpbbAPIRoot + "getGroupById.php";
    const { id: group_id } = request.params;
    const params: object = {
        group_id
    }
    const result = await PHPBB_GET(url, params);
    response.send(result.data);
}

const getGroupUsers = async (request: express.Request, response: express.Response) => {
    const url: string = phpbbAPIRoot + "getGroupUsers.php";
    const result = await PHPBB_GET(url);
    response.send(result.data);
}

const createGroup = async (request: express.Request, response: express.Response) => {
    const url: string = phpbbAPIRoot + "createGroup.php";
    const { group_name } = request.query;
    const params: object = {
        group_name
    }
    const result = await PHPBB_POST(url, params);
    response.send(result.data);
}

(async () => {
    try {
        const port: number = +(process.env.APP_PORT || 2500);
        const app: express.Express = express();

        app.get(`/group`, getGroups);
        app.get(`/group/:id`, getGroupById);
        app.get(`/groupusers`, getGroupUsers);

        app.post(`/group`, createGroup);

        app.listen(port, () => {
            console.log(`Listening on port ${port}`);
        });
    } catch (err) {
        console.error(err);
        process.exit(1);
    }
})();
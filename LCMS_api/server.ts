import * as express from "express";
import JoiValidation from "./middleware/JoiValidation";
import { PHPBB_GET, PHPBB_POST } from "./services/AxiosService";
import GetGroupsConfig from "./handlers/getGroups";
import GetGroupByIdConfig from "./handlers/getGroupById";

const getGroupUsers = async (request: express.Request, response: express.Response) => {
    const url: string = "http://localhost/rivertown/phpbb/LCMS_api/getGroupUsers.php";
    const result = await PHPBB_GET(url);
    response.send(result.data);
}

const createGroup = async (request: express.Request, response: express.Response) => {
    const url: string = "http://localhost/rivertown/phpbb/LCMS_api/createGroup.php";
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

        app.get(GetGroupsConfig.route, GetGroupsConfig.handler);
        app.get(GetGroupByIdConfig.route, JoiValidation(GetGroupByIdConfig.schema), GetGroupByIdConfig.handler);
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
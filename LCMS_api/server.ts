import * as express from "express";
import JoiValidation from "./middleware/JoiValidation";
import { PHPBB_GET, PHPBB_POST } from "./services/AxiosService";
import GetUsersConfig from "./handlers/user/getUsers";
import GetUserByIdConfig from "./handlers/user/getUserById";
import CreateUserConfig from "./handlers/user/createUser";
import GetGroupsConfig from "./handlers/group/getGroups";
import GetGroupByIdConfig from "./handlers/group/getGroupById";
import CreateGroupConfig from "./handlers/group/createGroup";
import GetForumsConfig from "./handlers/forum/getForums";
import GetTopicsConfig from "./handlers/topic/getTopics";
import GetPostsConfig from "./handlers/post/getPosts";

const getGroupUsers = async (request: express.Request, response: express.Response) => {
    const url: string = "http://localhost/rivertown/phpbb/LCMS_api/getGroupUsers.php";
    const result = await PHPBB_GET(url);
    response.send(result.data);
}

(async () => {
    try {
        const port: number = +(process.env.APP_PORT || 2500);
        const app: express.Express = express();

        app.get(GetUsersConfig.route, GetUsersConfig.handler);
        app.get(GetUserByIdConfig.route, JoiValidation(GetUserByIdConfig.schema), GetUserByIdConfig.handler);
        
        app.get(GetGroupsConfig.route, GetGroupsConfig.handler);
        app.get(GetGroupByIdConfig.route, JoiValidation(GetGroupByIdConfig.schema), GetGroupByIdConfig.handler);
        app.get(`/groupusers`, getGroupUsers);

        app.get(GetForumsConfig.route, GetForumsConfig.handler);
        app.get(GetTopicsConfig.route, GetTopicsConfig.handler);

        app.get(GetPostsConfig.route, GetPostsConfig.handler);

        app.post(CreateUserConfig.route, CreateUserConfig.handler);
        app.post(CreateGroupConfig.route, CreateGroupConfig.handler);


        app.listen(port, () => {
            console.log(`Listening on port ${port}`);
        });
    } catch (err) {
        console.error(err);
        process.exit(1);
    }
})();
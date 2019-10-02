import * as express from "express";
import JoiValidation from "./middleware/JoiValidation";
import GetUsersConfig from "./handlers/user/getUsers";
import GetUserByIdConfig from "./handlers/user/getUserById";
// import CreateUserConfig from "./handlers/user/createUser";
import GetGroupsConfig from "./handlers/group/getGroups";
import GetGroupByIdConfig from "./handlers/group/getGroupById";
import CreateGroupConfig from "./handlers/group/createGroup";
import GetForumsConfig from "./handlers/forum/getForums";
import GetForumByIdConfig from "./handlers/forum/getForumById";
import DeleteForumConfig from "./handlers/forum/deleteForum";
import GetForumUsersConfig from "./handlers/forum/getForumUsers";
import GetForumGroupsConfig from "./handlers/forum/getForumGroups";
import AddUserToForumConfig from "./handlers/forum/addUserToForum";
import AddUserToGroupConfig from "./handlers/group/addUserToGroup";
import CreateForumConfig from "./handlers/forum/createForum";
import AddGroupToForumConfig from "./handlers/forum/addGroupToForum";
import GetTopicsConfig from "./handlers/topic/getTopics";
import GetTopicByIdConfig from "./handlers/topic/getTopicById";
import GetPostsConfig from "./handlers/post/getPosts";

(async () => {
    try {
        const port: number = +(process.env.APP_PORT || 2500);
        const app: express.Express = express();

        app.get(GetUsersConfig.route, GetUsersConfig.handler);
        app.get(GetUserByIdConfig.route, JoiValidation(GetUserByIdConfig.schema), GetUserByIdConfig.handler);
        
        app.get(GetGroupsConfig.route, GetGroupsConfig.handler);
        app.get(GetGroupByIdConfig.route, JoiValidation(GetGroupByIdConfig.schema), GetGroupByIdConfig.handler);

        app.get(GetForumsConfig.route, GetForumsConfig.handler);
        app.get(GetForumByIdConfig.route, JoiValidation(GetForumByIdConfig.schema), GetForumByIdConfig.handler);
        app.get(GetForumUsersConfig.route, JoiValidation(GetForumUsersConfig.schema), GetForumUsersConfig.handler);
        app.get(GetForumGroupsConfig.route, JoiValidation(GetForumGroupsConfig.schema), GetForumGroupsConfig.handler);
        
        app.get(GetTopicsConfig.route, GetTopicsConfig.handler);
        app.get(GetTopicByIdConfig.route, JoiValidation(GetTopicByIdConfig.schema), GetTopicByIdConfig.handler);

        app.get(GetPostsConfig.route, GetPostsConfig.handler);

        // app.post(CreateUserConfig.route, CreateUserConfig.handler);
        app.post(CreateGroupConfig.route, JoiValidation(CreateGroupConfig.schema), CreateGroupConfig.handler);
        app.post(AddUserToForumConfig.route, JoiValidation(AddUserToForumConfig.schema), AddUserToForumConfig.handler);
        app.post(AddUserToGroupConfig.route, JoiValidation(AddUserToGroupConfig.schema), AddUserToGroupConfig.handler);
        app.post(AddGroupToForumConfig.route, JoiValidation(AddGroupToForumConfig.schema), AddGroupToForumConfig.handler);
        app.post(CreateForumConfig.route, JoiValidation(CreateForumConfig.schema), CreateForumConfig.handler);
        app.post(DeleteForumConfig.route, JoiValidation(DeleteForumConfig.schema), DeleteForumConfig.handler);

        app.listen(port, () => {
            console.log(`Listening on port ${port}`);
        });
    } catch (err) {
        console.error(err);
        process.exit(1);
    }
})();
import * as express from "express";
import JoiValidation from "./middleware/JoiValidation";

// Login
import LoginConfig from "./handlers/login/login";

// User
import GetUsersConfig from "./handlers/user/getUsers";
import GetUserByIdConfig from "./handlers/user/getUserById";
import CreateUserConfig from "./handlers/user/createUser";
import DeleteUserConfig from "./handlers/user/deleteUser";

// Group
import GetGroupsConfig from "./handlers/group/getGroups";
import GetGroupByIdConfig from "./handlers/group/getGroupById";
import CreateGroupConfig from "./handlers/group/createGroup";
import DeleteGroupConfig from "./handlers/group/deleteGroup";
import AddUserToGroupConfig from "./handlers/group/addUserToGroup";

// Forum
import GetForumsConfig from "./handlers/forum/getForums";
import GetForumByIdConfig from "./handlers/forum/getForumById";
import DeleteForumConfig from "./handlers/forum/deleteForum";
import GetForumUsersConfig from "./handlers/forum/getForumUsers";
import GetForumGroupsConfig from "./handlers/forum/getForumGroups";
import AddUserToForumConfig from "./handlers/forum/addUserToForum";
import CreateForumConfig from "./handlers/forum/createForum";
import AddGroupToForumConfig from "./handlers/forum/addGroupToForum";

// Topic
import GetTopicsConfig from "./handlers/topic/getTopics";
import GetTopicByIdConfig from "./handlers/topic/getTopicById";
import CreateTopicConfig from "./handlers/topic/createTopic";
import DeleteTopicConfig from "./handlers/topic/deleteTopic";
import CloseTopicConfig from "./handlers/topic/closeTopic";

(async () => {
    try {
        const port: number = +(process.env.APP_PORT || 2500);
        const app: express.Express = express();

    //--- GET ---//
        // User
        app.get(GetUsersConfig.route, GetUsersConfig.handler);
        app.get(GetUserByIdConfig.route, JoiValidation(GetUserByIdConfig.schema), GetUserByIdConfig.handler);
        
        // Group
        app.get(GetGroupsConfig.route, GetGroupsConfig.handler);
        app.get(GetGroupByIdConfig.route, JoiValidation(GetGroupByIdConfig.schema), GetGroupByIdConfig.handler);

        // Forum
        app.get(GetForumsConfig.route, GetForumsConfig.handler);
        app.get(GetForumByIdConfig.route, JoiValidation(GetForumByIdConfig.schema), GetForumByIdConfig.handler);
        app.get(GetForumUsersConfig.route, JoiValidation(GetForumUsersConfig.schema), GetForumUsersConfig.handler);
        app.get(GetForumGroupsConfig.route, JoiValidation(GetForumGroupsConfig.schema), GetForumGroupsConfig.handler);
        
        // Topic
        app.get(GetTopicsConfig.route, GetTopicsConfig.handler);
        app.get(GetTopicByIdConfig.route, JoiValidation(GetTopicByIdConfig.schema), GetTopicByIdConfig.handler);

    //--- POST ---//
        // Login
        app.post(LoginConfig.route, JoiValidation(LoginConfig.schema), LoginConfig.handler);

        // User
        app.post(CreateUserConfig.route, JoiValidation(CreateUserConfig.schema), CreateUserConfig.handler);
        app.post(DeleteUserConfig.route, JoiValidation(DeleteUserConfig.schema), DeleteUserConfig.handler);

        // Group
        app.post(CreateGroupConfig.route, JoiValidation(CreateGroupConfig.schema), CreateGroupConfig.handler);
        app.post(DeleteGroupConfig.route, JoiValidation(DeleteGroupConfig.schema), DeleteGroupConfig.handler);

        // Forum
        app.post(AddUserToForumConfig.route, JoiValidation(AddUserToForumConfig.schema), AddUserToForumConfig.handler);
        app.post(AddUserToGroupConfig.route, JoiValidation(AddUserToGroupConfig.schema), AddUserToGroupConfig.handler);
        app.post(AddGroupToForumConfig.route, JoiValidation(AddGroupToForumConfig.schema), AddGroupToForumConfig.handler);
        app.post(CreateForumConfig.route, JoiValidation(CreateForumConfig.schema), CreateForumConfig.handler);
        app.post(DeleteForumConfig.route, JoiValidation(DeleteForumConfig.schema), DeleteForumConfig.handler);

        // Topic
        app.post(CreateTopicConfig.route, JoiValidation(CreateTopicConfig.schema), CreateTopicConfig.handler);
        app.post(DeleteTopicConfig.route, JoiValidation(DeleteTopicConfig.schema), DeleteTopicConfig.handler);
        app.post(CloseTopicConfig.route, JoiValidation(CloseTopicConfig.schema), CloseTopicConfig.handler);

        app.listen(port, () => {
            console.log(`Listening on port ${port}`);
        });
    } catch (err) {
        console.error(err);
        process.exit(1);
    }
})();
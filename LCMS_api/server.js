"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express = require("express");
const JoiValidation_1 = require("./middleware/JoiValidation");
const getUsers_1 = require("./handlers/user/getUsers");
const getUserById_1 = require("./handlers/user/getUserById");
// import CreateUserConfig from "./handlers/user/createUser";
const getGroups_1 = require("./handlers/group/getGroups");
const getGroupById_1 = require("./handlers/group/getGroupById");
const createGroup_1 = require("./handlers/group/createGroup");
const getForums_1 = require("./handlers/forum/getForums");
const getForumById_1 = require("./handlers/forum/getForumById");
const deleteForum_1 = require("./handlers/forum/deleteForum");
const getForumUsers_1 = require("./handlers/forum/getForumUsers");
const getForumGroups_1 = require("./handlers/forum/getForumGroups");
const addUserToForum_1 = require("./handlers/forum/addUserToForum");
const addUserToGroup_1 = require("./handlers/group/addUserToGroup");
const createForum_1 = require("./handlers/forum/createForum");
const addGroupToForum_1 = require("./handlers/forum/addGroupToForum");
const getTopics_1 = require("./handlers/topic/getTopics");
const getTopicById_1 = require("./handlers/topic/getTopicById");
const createTopic_1 = require("./handlers/topic/createTopic");
const deleteTopic_1 = require("./handlers/topic/deleteTopic");
const deleteUser_1 = require("./handlers/user/deleteUser");
(async () => {
    try {
        const port = +(process.env.APP_PORT || 2500);
        const app = express();
        app.get(getUsers_1.default.route, getUsers_1.default.handler);
        app.get(getUserById_1.default.route, JoiValidation_1.default(getUserById_1.default.schema), getUserById_1.default.handler);
        app.get(getGroups_1.default.route, getGroups_1.default.handler);
        app.get(getGroupById_1.default.route, JoiValidation_1.default(getGroupById_1.default.schema), getGroupById_1.default.handler);
        app.get(getForums_1.default.route, getForums_1.default.handler);
        app.get(getForumById_1.default.route, JoiValidation_1.default(getForumById_1.default.schema), getForumById_1.default.handler);
        app.get(getForumUsers_1.default.route, JoiValidation_1.default(getForumUsers_1.default.schema), getForumUsers_1.default.handler);
        app.get(getForumGroups_1.default.route, JoiValidation_1.default(getForumGroups_1.default.schema), getForumGroups_1.default.handler);
        app.get(getTopics_1.default.route, getTopics_1.default.handler);
        app.get(getTopicById_1.default.route, JoiValidation_1.default(getTopicById_1.default.schema), getTopicById_1.default.handler);
        // app.post(CreateUserConfig.route, CreateUserConfig.handler);
        app.post(createGroup_1.default.route, JoiValidation_1.default(createGroup_1.default.schema), createGroup_1.default.handler);
        app.post(addUserToForum_1.default.route, JoiValidation_1.default(addUserToForum_1.default.schema), addUserToForum_1.default.handler);
        app.post(addUserToGroup_1.default.route, JoiValidation_1.default(addUserToGroup_1.default.schema), addUserToGroup_1.default.handler);
        app.post(addGroupToForum_1.default.route, JoiValidation_1.default(addGroupToForum_1.default.schema), addGroupToForum_1.default.handler);
        app.post(createForum_1.default.route, JoiValidation_1.default(createForum_1.default.schema), createForum_1.default.handler);
        app.post(deleteForum_1.default.route, JoiValidation_1.default(deleteForum_1.default.schema), deleteForum_1.default.handler);
        app.post(createTopic_1.default.route, JoiValidation_1.default(createTopic_1.default.schema), createTopic_1.default.handler);
        app.post(deleteTopic_1.default.route, JoiValidation_1.default(deleteTopic_1.default.schema), deleteTopic_1.default.handler);
        app.post(deleteUser_1.default.route, JoiValidation_1.default(deleteUser_1.default.schema), deleteUser_1.default.handler);
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
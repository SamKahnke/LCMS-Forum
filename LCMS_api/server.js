"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express = require("express");
const JoiValidation_1 = require("./middleware/JoiValidation");
const swagger_ui_express_1 = require("swagger-ui-express");
const Utils_1 = require("./services/Utils");
// Login
const login_1 = require("./handlers/login/login");
// User
const getUsers_1 = require("./handlers/user/getUsers");
const getUserById_1 = require("./handlers/user/getUserById");
const createUser_1 = require("./handlers/user/createUser");
const deleteUser_1 = require("./handlers/user/deleteUser");
// Group
const getGroups_1 = require("./handlers/group/getGroups");
const getGroupById_1 = require("./handlers/group/getGroupById");
const createGroup_1 = require("./handlers/group/createGroup");
const deleteGroup_1 = require("./handlers/group/deleteGroup");
const addUserToGroup_1 = require("./handlers/group/addUserToGroup");
// Forum
const getForums_1 = require("./handlers/forum/getForums");
const getForumById_1 = require("./handlers/forum/getForumById");
const deleteForum_1 = require("./handlers/forum/deleteForum");
const getForumUsers_1 = require("./handlers/forum/getForumUsers");
const getForumGroups_1 = require("./handlers/forum/getForumGroups");
const addUserToForum_1 = require("./handlers/forum/addUserToForum");
const createForum_1 = require("./handlers/forum/createForum");
const addGroupToForum_1 = require("./handlers/forum/addGroupToForum");
// Topic
const getTopics_1 = require("./handlers/topic/getTopics");
const getTopicById_1 = require("./handlers/topic/getTopicById");
const createTopic_1 = require("./handlers/topic/createTopic");
const deleteTopic_1 = require("./handlers/topic/deleteTopic");
const closeTopic_1 = require("./handlers/topic/closeTopic");
const swaggerObjects = [
    getUsers_1.default.swagger,
    getUserById_1.default.swagger,
    createUser_1.default.swagger,
    deleteUser_1.default.swagger,
    getForums_1.default.swagger,
    getForumById_1.default.swagger,
    getForumUsers_1.default.swagger,
    getForumGroups_1.default.swagger,
    createForum_1.default.swagger,
    deleteForum_1.default.swagger,
    addGroupToForum_1.default.swagger,
    addUserToForum_1.default.swagger,
    getGroups_1.default.swagger,
    getGroupById_1.default.swagger,
    createGroup_1.default.swagger,
    deleteGroup_1.default.swagger,
    addUserToGroup_1.default.swagger,
    getTopics_1.default.swagger,
    getTopicById_1.default.swagger,
    createTopic_1.default.swagger,
    deleteTopic_1.default.swagger,
    closeTopic_1.default.swagger,
    login_1.default.swagger
];
const swaggerJson = Utils_1.BuildSwaggerJson(swaggerObjects);
const options = {
    customCss: `
        ::placeholder { visibility: hidden; }
        input { display: none; }
        .swagger-ui .parameter__enum { display: none; }
        .swagger-ui .try-out__btn { display: none; }`
};
(async () => {
    try {
        const port = +(process.env.APP_PORT || 2500);
        const app = express();
        app.use("/documentation", swagger_ui_express_1.serve, swagger_ui_express_1.setup(swaggerJson, options));
        //--- GET ---//
        // User
        app.get(getUsers_1.default.route, getUsers_1.default.handler);
        app.get(getUserById_1.default.route, JoiValidation_1.default(getUserById_1.default.schema), getUserById_1.default.handler);
        // Group
        app.get(getGroups_1.default.route, getGroups_1.default.handler);
        app.get(getGroupById_1.default.route, JoiValidation_1.default(getGroupById_1.default.schema), getGroupById_1.default.handler);
        // Forum
        app.get(getForums_1.default.route, getForums_1.default.handler);
        app.get(getForumById_1.default.route, JoiValidation_1.default(getForumById_1.default.schema), getForumById_1.default.handler);
        app.get(getForumUsers_1.default.route, JoiValidation_1.default(getForumUsers_1.default.schema), getForumUsers_1.default.handler);
        app.get(getForumGroups_1.default.route, JoiValidation_1.default(getForumGroups_1.default.schema), getForumGroups_1.default.handler);
        // Topic
        app.get(getTopics_1.default.route, getTopics_1.default.handler);
        app.get(getTopicById_1.default.route, JoiValidation_1.default(getTopicById_1.default.schema), getTopicById_1.default.handler);
        //--- POST ---//
        // Login
        app.post(login_1.default.route, JoiValidation_1.default(login_1.default.schema), login_1.default.handler);
        // User
        app.post(createUser_1.default.route, JoiValidation_1.default(createUser_1.default.schema), createUser_1.default.handler);
        app.post(deleteUser_1.default.route, JoiValidation_1.default(deleteUser_1.default.schema), deleteUser_1.default.handler);
        // Group
        app.post(createGroup_1.default.route, JoiValidation_1.default(createGroup_1.default.schema), createGroup_1.default.handler);
        app.post(deleteGroup_1.default.route, JoiValidation_1.default(deleteGroup_1.default.schema), deleteGroup_1.default.handler);
        // Forum
        app.post(addUserToForum_1.default.route, JoiValidation_1.default(addUserToForum_1.default.schema), addUserToForum_1.default.handler);
        app.post(addUserToGroup_1.default.route, JoiValidation_1.default(addUserToGroup_1.default.schema), addUserToGroup_1.default.handler);
        app.post(addGroupToForum_1.default.route, JoiValidation_1.default(addGroupToForum_1.default.schema), addGroupToForum_1.default.handler);
        app.post(createForum_1.default.route, JoiValidation_1.default(createForum_1.default.schema), createForum_1.default.handler);
        app.post(deleteForum_1.default.route, JoiValidation_1.default(deleteForum_1.default.schema), deleteForum_1.default.handler);
        // Topic
        app.post(createTopic_1.default.route, JoiValidation_1.default(createTopic_1.default.schema), createTopic_1.default.handler);
        app.post(deleteTopic_1.default.route, JoiValidation_1.default(deleteTopic_1.default.schema), deleteTopic_1.default.handler);
        app.post(closeTopic_1.default.route, JoiValidation_1.default(closeTopic_1.default.schema), closeTopic_1.default.handler);
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
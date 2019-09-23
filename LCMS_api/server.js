"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express = require("express");
const JoiValidation_1 = require("./middleware/JoiValidation");
const getUsers_1 = require("./handlers/user/getUsers");
const getUserById_1 = require("./handlers/user/getUserById");
const createUser_1 = require("./handlers/user/createUser");
const getGroups_1 = require("./handlers/group/getGroups");
const getGroupById_1 = require("./handlers/group/getGroupById");
const createGroup_1 = require("./handlers/group/createGroup");
const getForums_1 = require("./handlers/forum/getForums");
const getForumById_1 = require("./handlers/forum/getForumById");
const getForumUsers_1 = require("./handlers/forum/getForumUsers");
const getTopics_1 = require("./handlers/topic/getTopics");
const getTopicById_1 = require("./handlers/topic/getTopicById");
const getPosts_1 = require("./handlers/post/getPosts");
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
        app.get(getTopics_1.default.route, getTopics_1.default.handler);
        app.get(getTopicById_1.default.route, JoiValidation_1.default(getTopicById_1.default.schema), getTopicById_1.default.handler);
        app.get(getPosts_1.default.route, getPosts_1.default.handler);
        app.post(createUser_1.default.route, createUser_1.default.handler);
        app.post(createGroup_1.default.route, createGroup_1.default.handler);
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
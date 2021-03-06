
    create table lesson_builder_comments (
        id bigint not null,
        itemId bigint not null,
        pageId bigint not null,
        timePosted timestamp not null,
        author varchar(36) not null,
        commenttext clob(255),
        UUID varchar(36) not null,
        html smallint not null,
        points double,
        primary key (id)
    );

    create table lesson_builder_groups (
        id bigint not null,
        itemId varchar(255) not null,
        groupId varchar(255) not null,
        groups clob(255),
        primary key (id)
    );

    create table lesson_builder_items (
        id bigint not null,
        pageId bigint not null,
        sequence integer not null,
        type integer not null,
        sakaiId varchar(250),
        name varchar(100),
        html clob(200000),
        description clob(255),
        height varchar(8),
        width varchar(8),
        alt varchar(500),
        nextPage smallint,
        format varchar(255),
        required smallint,
        alternate smallint,
        prerequisite smallint,
        subrequirement smallint,
        requirementText varchar(20),
        sameWindow smallint,
        groups clob(255),
        anonymous smallint,
        showComments smallint,
        forcedCommentsAnonymous smallint,
        gradebookId varchar(35),
        gradebookPoints integer,
        gradebookTitle varchar(200),
        altGradebook varchar(35),
        altPoints integer,
        altGradebookTitle varchar(200),
        primary key (id)
    );

    create table lesson_builder_log (
        id bigint not null,
        lastViewed timestamp not null,
        itemId bigint not null,
        userId varchar(255) not null,
        firstViewed timestamp not null,
        complete smallint not null,
        dummy smallint not null,
        path varchar(255),
        toolId varchar(250),
        studentPageId bigint,
        primary key (id)
    );

    create table lesson_builder_pages (
        pageId bigint not null,
        toolId varchar(250) not null,
        siteId varchar(250) not null,
        title varchar(100) not null,
        parent bigint,
        topParent bigint,
        hidden smallint,
        releaseDate timestamp,
        gradebookPoints double,
        owner varchar(36),
        groupOwned smallint,
        cssSheet varchar(250),
        primary key (pageId)
    );

    create table lesson_builder_student_pages (
        id bigint not null,
        lastUpdated timestamp not null,
        itemId bigint not null,
        pageId bigint not null,
        title varchar(100) not null,
        owner varchar(36) not null,
        groupOwned smallint not null,
        commentsSection bigint,
        lastCommentChange timestamp,
        deleted smallint,
        points double,
        primary key (id)
    );

    create table hibernate_unique_key (
         next_hi integer 
    );

    insert into hibernate_unique_key values ( 0 );

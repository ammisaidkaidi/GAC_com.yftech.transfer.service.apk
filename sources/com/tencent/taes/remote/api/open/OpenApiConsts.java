package com.tencent.taes.remote.api.open;

/* loaded from: /home/user/work/dex/classes.dex */
public interface OpenApiConsts {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface Host {
        public static final String ADD_PASSNODE = "addPassnode";
        public static final String APP_EVENT = "AppEvent";
        public static final String CHOOSE_NAVI_OVERVIEW = "chooseNaviOverView";
        public static final String DELETE_ALL_PASSNODE = "deleteAllPassnode";
        public static final String DISPATCH_SCENE_ACTIONS_FROM_BACKGROUND = "dispatchSceneActionsFromBackground";
        public static final String DISPATCH_SCENE_ACTIONS_FROM_CLIENT = "dispatchSceneActionsFromClient";
        public static final String EXIT_APP = "exitApp";
        public static final String EXTERNAL_CREATE_TEAMTRIP = "externalCrateTeamTrip";
        public static final String EXTERNAL_EXIT_TEAMTRIP = "externalExitTeamTrip";
        public static final String EXTERNAL_JOIN_TEAMTRIP = "externalJoinTeamTrip";
        public static final String EXTERNAL_SET_TEAMTRIP_TARGET = "externalSetTeamTripTarget";
        public static final String GO_HOME_COMPANY = "goHomeCompany";
        public static final String HANDLE_PUSH = "handlePush";
        public static final String JOIN_TEAMTRIP = "joinTeamTrip";
        public static final String JUMP_ROUTE_PAGE = "jumpRoutePage";
        public static final String MAIN_ACTIVITY_ON_START = "mainActivityOnStart";
        public static final String MAIN_ACTIVITY_ON_STOP = "mainActivityOnStop";
        public static final String OPEN_AI_BOARD = "openAIBoard";
        public static final String OPEN_MOSS = "openMoss";
        public static final String PAGE_EVENT = "PageEvent";
        public static final String SELECT_ROUTE_PLAN = "selectRoutPlan";
        public static final String SET_CRUISE_SPEAK_TYPE = "setCruiseSpeakType";
        public static final String SET_ROUTEP_REFERENCE = "setRoutePreference";
        public static final String SET_ROUTE_GUIDE_SPEAK_MUTE = "setRouteGuideSpeakMute";
        public static final String SHOW_SCENE_BANNER_DETAIL = "showSceneBannerDetail";
        public static final String START_STOP_CRUISE = "startStopCruise";
        public static final String START_STOP_NAVI = "startStopNavi";
        public static final String UPDATE_NAVI_DEST = "updateNaviDest";
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface Key {
        public static final String ACTIONS = "actions";
        public static final String ACTION_TYPE = "actionType";
        public static final String ADD_PASSNODE = "passnode";
        public static final String APP_EVENT_NAME = "app_event_name";
        public static final String CLOSE_PAGE = "close_page";
        public static final String CLOSE_SPEAK = "closeSpeak";
        public static final String CURRENT_PAGE = "current_page";
        public static final String DEST_LATITUDE = "destLatitude";
        public static final String DEST_LONGITUDE = "destLongitude";
        public static final String FORCE_START_SPEAK = "forceStartSpeak";
        public static final String FROM = "from";
        public static final String GO_HOME_COMPANY_TYPE = "goHomeCompanyType";
        public static final String HANDLE_TYPE = "handleType";
        public static final String IS_JOIN_LAST_TEAMTRIP = "isJoinLastTeamTrip";
        public static final String IS_REAL_NAVI = "isRealNavi";
        public static final String IS_SHOW_CONFIRM_DIALOG = "isShowConfirmDialog";
        public static final String PASSNODE_DEST_POILIST = "poiList";
        public static final String POI_ADDRESS = "poiAddress";
        public static final String POI_LATITUDE = "latitude";
        public static final String POI_LONGITUDE = "longitude";
        public static final String POI_NAME = "poiName";
        public static final String PUSH_TYPE = "pushType";
        public static final String ROUTE_PLAN_INDEX = "routePlanIndex";
        public static final String ROUTE_PREFERENCE_ID = "routePreferenceId";
        public static final String SHOW_DIALOG = "showDialog";
        public static final String SHOW_NAVIGATION_BAR = "showNavigationBar";
        public static final String SHOW_STATUS_BAR = "showStatusBar";
        public static final String START_LATITUDE = "startLatitude";
        public static final String START_LONGITUDE = "startLongitude";
        public static final String START_NAVI_TYPE = "startNaviType";
        public static final String START_STOP_TYPE = "startStopType";
        public static final String TEAMTRIP_ID = "teamtripId";
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface LaunchType {
        public static final int APP_ICON = 4;
        public static final int FLOAT_WINDOW = 2;
        public static final int MOSS = 6;
        public static final int PUSH = 3;
        public static final int SPEECH = 1;
        public static final int TAES_SDK = 5;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface Page {
        public static final String MAP_HOME_PAGE = "map_home_page";
        public static final String MOSS_CENTER_PAGE = "moss_center_page";
        public static final String PERSONAL_PAGE = "personal_page";
        public static final String SETTINGS_PAGE = "settings_page";
        public static final String WECAR_HOME_PAGE = "wecar_home_page";
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface Value {
        public static final int FROM_OTHER = 2;
        public static final int FROM_SX_CARD = 1;
        public static final int GO_COMPANY = 2;
        public static final int GO_HOME = 1;
        public static final String LAUNCH_SOURCE = "launchSource";
        public static final int START = 1;
        public static final int START_NAVI_ONLY_DEST = 1;
        public static final int START_NAVI_PASSNODE_DEST = 3;
        public static final int START_NAVI_START_DEST = 2;
        public static final int STOP = 2;
        public static final int TAB_AI_BOARD = 4;
        public static final int TAB_MAP = 1;
        public static final int TAB_MUSIC = 2;
        public static final int TAB_PERSONAL = 0;
        public static final int TAB_SCENE = 3;
        public static final int TAB_WECAR_HOME = 5;
    }
}

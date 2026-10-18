package com.tencent.wecarbase.wecarnavi;

/* loaded from: /home/user/work/dex/classes.dex */
public class ExternalDefaultBroadcastKey {

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class AsrSearchType {
        public static final int TYPE_CITY = 1;
        public static final int TYPE_POI = 0;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class BROADCAST_ACTION {
        public static final String FEEDBACK = "WECARNAVIAUTO_STANDARD_BROADCAST_FEEDBACK";
        public static final String RECV = "WECARNAVIAUTO_STANDARD_BROADCAST_RECV";
        public static final String SEND = "WECARNAVIAUTO_STANDARD_BROADCAST_SEND";
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class FEEDBACK_CODE {
        public static final int CONTINUE_SELECT = 2;
        public static final int FAILED = 1;
        public static final int NOT_SUPPORT = -1;
        public static final int RETRY = 3;
        public static final int SUCCUESS = 0;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface FromQueryType {
        public static final int ADD_FAVORITE = 8;
        public static final int ADD_FAVORITE_COMPANY = 10;
        public static final int ADD_FAVORITE_FLEET = 11;
        public static final int ADD_FAVORITE_HOME = 9;
        public static final int ADD_POI_DEST = 5;
        public static final int ADD_POI_NONE = 4;
        public static final int ADD_POI_VIA = 6;
        public static final int ADD_POI_VIA_DEST = 7;
        public static final int ASK_DISTANCE_TIME = 12;
        public static final int ASK_FROM_TO_DISTANCE_TIME = 13;
        public static final int CANCEL_FLEET = 18;
        public static final int GO_NAVI = 1;
        public static final int INVALID = 0;
        public static final int JOIN_FLEET = 17;
        public static final int JOIN_LAST_FLEET = 20;
        public static final int NAVI_TO_COMPANY = 23;
        public static final int NAVI_TO_HOME = 22;
        public static final int NAVI_TO_TARGET = 24;
        public static final int POI_SEARCH = 14;
        public static final int SEARCH_ON_THE_WAY = 3;
        public static final int SELF_POSITIONING = 16;
        public static final int SHOW_ROAD_TRAFFIC_CONDITION = 25;
        public static final int SPEED_LIMIT = 21;
        public static final int START_FLEET = 19;
        public static final int SURROUND_SEARCH = 15;
        public static final int TRAFFIC_RESTRICTION_QUERY = 2;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class KEY {
        public static final String ACTION = "key_action";
        public static final String ADDRESS = "ADDRESS";
        public static final String ALL_ROUTE_IDS = "all_route_ids";
        public static final String CMD = "CMD";
        public static final String CMDS = "CMDS";
        public static final String COORD = "COORD";
        public static final String CURRENT_ROUTE_ID = "current_route_id";
        public static final String CURRENT_SESSION_ID = "current_session_id";
        public static final String DATA_VERSION = "DATA_VERSION";
        public static final String DESTDISTRICT = "DEST_DISTRICT";
        public static final String DESTLAT = "DestLAT";
        public static final String DESTLNG = "DestLNG";
        public static final String DESTNAME = "DestName";
        public static final String DISTANCE = "DISTANCE";
        public static final String EXTRA_EXIT_TYPE = "EXTRA_EXIT_TYPE";
        public static final String EXTRA_FROM_TOUCH = "EXTRA_FROM_TOUCH";
        public static final String EXTRA_OPERA = "EXTRA_OPERA";
        public static final String EXTRA_TYPE = "EXTRA_TYPE";
        public static final String FEEDBACK_CODE = "FEEDBACK_CODE";
        public static final String FEEDBACK_NAME = "key_feedback_name";
        public static final String FEEDBACK_PARAM = "key_param";
        public static final String FEEDBACK_PARAM_DEST_NAME = "key_feedback_dest_name";
        public static final String FEEDBACK_PARAM_DEST_REMAIN_DISTANCE = "key_feedback_dest_remain_distance";
        public static final String FEEDBACK_PARAM_DEST_REMAIN_TIME = "key_feedback_dest_remain_time";
        public static final String FEEDBACK_SESSION_ID = "key_feedback_sessionid";
        public static final String FEEDBACK_TTS_ID = "key_tts_template_id";
        public static final String FEEDBACK_WORD = "FEEDBACK_WORD";
        public static final String INDEX = "INDEX";
        public static final String ISDELAY = "ISDEALY";
        public static final String KERNEL_VERSION = "KERNEL_VERSION";
        public static final String KEY_TYPE = "KEY_TPYE";
        public static final String KEY_TYPE_NEW = "KEY_TYPE";
        public static final String LAT = "LAT";
        public static final String LN_ON_DEST_TYPE = "ln_on_dest_type";
        public static final String LN_ON_ENTER = "ln_on_enter";
        public static final String LON = "LON";
        public static final String MEMBER_COUNT = "MemberCount";
        public static final String NAME = "NAME";
        public static final String NEED_FEEDBACK = "NEED_FEEDBACK";
        public static final String ORIGINAL_ROUTE_ID = "original_route_id";
        public static final String PHONE = "PHONE";
        public static final String POICLASS = "POI_TYPE";
        public static final String POIID = "POI_ID";
        public static final String POILIST = "POILIST";
        public static final String POINAME = "POINAME";
        public static final String POITYPE = "POITYPE";
        public static final String RAW_TEXT = "key_raw_text";
        public static final String REAMINDISTANCE = "RemainDistance";
        public static final String REAMINTIME = "RemainTime";
        public static final String RG_ON_ASIST_ICON_DIST = "rg_on_assist_icon_dist";
        public static final String RG_ON_ASIST_ICON_LIMIT = "rg_on_assist_icon_limit";
        public static final String RG_ON_ASIST_ICON_OVER_SPEED = "rg_on_assist_icon_over_speed";
        public static final String RG_ON_ASIST_ICON_TOTAL_DIST = "rg_on_assist_icon_total_dist";
        public static final String RG_ON_ASSIST_ICON_SHOW = "rg_on_assist_icon_show";
        public static final String RG_ON_ASSIST_ICON_TYPE = "rg_on_assist_icon_type";
        public static final String RG_ON_CURRENT_GPS_ANGLE = "rg_on_current_gps_angle";
        public static final String RG_ON_CURRENT_ROAD_LIMIT = "rg_on_current_road_limit";
        public static final String RG_ON_CURRENT_ROAD_NAME = "rg_on_current_road_name";
        public static final String RG_ON_CURRENT_ROAD_TYPE = "rg_on_current_road_type";
        public static final String RG_ON_CURRENT_SPEED = "rg_on_current_speed";
        public static final String RG_ON_DIRECTION = "rg_on_direction";
        public static final String RG_ON_DIST_TO_DEST = "rg_on_dist_to_dest";
        public static final String RG_ON_ENTER_CROSS = "rg_on_enter_cross_status";
        public static final String RG_ON_GUIDE_DISTANCE = "rg_on_distance";
        public static final String RG_ON_GUIDE_TOTAL_DISTANCE = "rg_on_start_distance";
        public static final String RG_ON_HIGH_WAY = "rg_on_high_way";
        public static final String RG_ON_HIGH_WAY_NEXT_DIST = "rg_on_high_way_next_dist";
        public static final String RG_ON_HIGH_WAY_NEXT_NAME = "rg_on_high_way_next_name";
        public static final String RG_ON_HIGH_WAY_NEXT_NEXT_DIST = "rg_on_high_way_next_next_dist";
        public static final String RG_ON_HIGH_WAY_NEXT_NEXT_NAME = "rg_on_high_way_next_next_name";
        public static final String RG_ON_HIGH_WAY_NEXT_NEXT_TYPE = "rg_on_high_way_next_next_type";
        public static final String RG_ON_HIGH_WAY_NEXT_TYPE = "rg_on_high_way_next_type";
        public static final String RG_ON_LANE_LINES = "rg_on_lane_lines";
        public static final String RG_ON_LANE_LINE_SHOW = "rg_on_lane_line_show";
        public static final String RG_ON_NAVI = "rg_on_navi";
        public static final String RG_ON_NEXT_ROAD_NAME = "rg_on_next_road_name";
        public static final String RG_ON_OVER_SPEED = "rg_on_over_speed";
        public static final String RG_ON_REMAIN_HIGH_WAY_SERVICE = "rg_on_remain_high_way_service";
        public static final String RG_ON_REMAIN_TRAFFIC_LIGHT = "rg_on_remain_traffic_light";
        public static final String RG_ON_ROAD_CAMERA = "rg_on_road_camera";
        public static final String RG_ON_ROAD_CAMERA_SPEED = "rg_on_road_camera_speed_limit";
        public static final String RG_ON_ROAD_CAMERA_TYPE = "rg_on_road_camera_type";
        public static final String RG_ON_SPEED_ZONE_CAMERA = "rg_on_speed_zone_camera";
        public static final String RG_ON_SPEED_ZONE_CAMERA_AVG_SPEED = "rg_on_speed_zone_camera_avg_speed";
        public static final String RG_ON_SPEED_ZONE_CAMERA_REMAIN_DIST = "rg_on_speed_zone_camera_remain_dist";
        public static final String RG_ON_SPEED_ZONE_CAMERA_SPEED = "rg_on_speed_zone_camera_speed_limit";
        public static final String RG_ON_TIME_TO_DEST = "rg_on_time_to_dest";
        public static final String RG_ON_TOTAL_DISTANCE = "rg_on_total_distance";
        public static final String RG_ON_TOTAL_TIME = "rg_on_total_time";
        public static final String ROUTE_TYPE = "ROUTE_TYPE";
        public static final String RPTYPE = "RPTYPE";
        public static final String RST = "RST";
        public static final String SEARCH_ADDR_TOKEN = "ADDRESS_TOKEN";
        public static final String SEARCH_ALONG_ROUTE_FROM_NEARBY = "ALONG_ROUTE_FROM_NEARBY";
        public static final String SEARCH_ARRIVETIME = "arriveTime";
        public static final String SEARCH_CENTERLAT = "CENTERLAT";
        public static final String SEARCH_CENTERLNG = "CENTERLNG";
        public static final String SEARCH_CHILD = "childPois";
        public static final String SEARCH_CITY = "CITY";
        public static final String SEARCH_CLASSES = "classes";
        public static final String SEARCH_DISTANCE = "distance";
        public static final String SEARCH_KEYWORD = "KEYWORD";
        public static final String SEARCH_LAT = "latitude";
        public static final String SEARCH_LNG = "longitude";
        public static final String SEARCH_MAXCOUNT = "MAXCOUNT";
        public static final String SEARCH_NAME_TOKEN = "NAME_TOKEN";
        public static final String SEARCH_NEED_DIRECT = "NEED_DIRECT";
        public static final String SEARCH_NET_MODE = "NET_MODE";
        public static final String SEARCH_PAGE = "PAGE";
        public static final String SEARCH_PASS_CITY = "PASS_CITY";
        public static final String SEARCH_PASS_KEYWORD = "PASS_KEYWORD";
        public static final String SEARCH_POI = "POI";
        public static final String SEARCH_POIADDR = "address";
        public static final String SEARCH_POIID = "poiid";
        public static final String SEARCH_POINAME = "name";
        public static final String SEARCH_POITYPE = "poitype";
        public static final String SEARCH_POI_ALIAS = "alias";
        public static final String SEARCH_QUERY_TYPE = "FROM";
        public static final String SEARCH_RADIUS = "RADIUS";
        public static final String SEARCH_RANGE = "RANGE";
        public static final String SEARCH_RESULT = "RESULT";
        public static final String SEARCH_RESULT_CODE = "RESULT_CODE";
        public static final String SEARCH_RESULT_COUNT = "RESULT_COUNT";
        public static final String SEARCH_RESULT_TTS = "TTS";
        public static final String SEARCH_RESULT_TYPE = "RESULT_TYPE";
        public static final String SEARCH_RICHINFO = "richInfo";
        public static final String SEARCH_ROUTE_POI_TYPE = "SEARCH_ROUTE_POI_TYPE";
        public static final String SEARCH_SELECT_IDS = "IDS";
        public static final String SEARCH_STATUS = "STATUS";
        public static final String SEARCH_TEL = "tel";
        public static final String SEARCH_THIS_DISTRICT_ONLY = "SEARCH_THIS_DISTRICT_ONLY";
        public static final String SESSION_ID = "key_session_id";
        public static final String SIMULATE_LOCATION_INDEX = "FILE_INDEX";
        public static final String SOURCE_APP = "SOURCE_APP";
        public static final String TAG = "TAG";
        public static final String TIME = "TIME";
        public static final String TT_IS_VALID = "tt_is_valid";
        public static final String TT_MEMBER_COUNT = "tt_member_count";
        public static final String TYPE = "TYPE";
        public static final String VOICE_ROLE_ID = "VOICE_ROLE_ID";
        public static final String WORD = "WORD";
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class NAVI_GUIDE_TYPE {
        public static final int CURRENT_ANGLE = 10;
        public static final int CURRENT_ROAD_LIMIT = 13;
        public static final int CURRENT_ROAD_NAME = 6;
        public static final int CURRENT_ROAD_TYPE = 7;
        public static final int CURRENT_SPEED = 9;
        public static final int DEST_TYPE = 12;
        public static final int DISTANCE_TO_DEST = 2;
        public static final int DISTANCE_TO_NEXT_GUIDE = 1;
        public static final int ENTER_CROSS_STATUS = 16;
        public static final int GUIDE_DIRECTION = 0;
        public static final int IS_SPEEDING = 11;
        public static final int NEXT_ROAD_NAME = 8;
        public static final int REMAIN_HIGH_WAY_SERVICE = 14;
        public static final int REMAIN_TRAFFIC_LIGHT = 15;
        public static final int TIME_TO_DEST = 3;
        public static final int TOTAL_DISTANCE = 4;
        public static final int TOTAL_TIME = 5;
        public static final int TYPE_INVALID = -1;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class STATUS_TYPE {
        public static final int BACKGROUD = 4;
        public static final int CRUISE_END = 21;
        public static final int CRUISE_START = 20;
        public static final int EXIT = 2;
        public static final int FOREGROUND = 3;
        public static final int INIT_BEGIN = 0;
        public static final int INIT_END = 1;
        public static final int LIGHT_NAVI_BEGIN = 18;
        public static final int LIGHT_NAVI_ENG = 19;
        public static final int MUTILROUTE_START = 10;
        public static final int MUTIROUTE_END = 11;
        public static final int RG_REMAININFO_UPDATE = 12;
        public static final int ROUTE_GUIDE_ARRIVE_DEST = 26;
        public static final int ROUTE_GUIDE_BEGIN = 6;
        public static final int ROUTE_GUIDE_END = 7;
        public static final int ROUTE_PLAN_SUCCESS = 5;
        public static final int SIMULATE_NAVI_END = 23;
        public static final int SIMULATE_NAVI_PAUSE = 24;
        public static final int SIMULATE_NAVI_RESUME = 25;
        public static final int SIMULATE_NAVI_START = 22;
        public static final int TEAM_TRIP_EXIT = 14;
        public static final int TEAM_TRIP_JOIN = 13;
        public static final int TEAM_TRIP_MEMBER_UPDATE = 17;
        public static final int TEAM_TRIP_TARGET_ADDED = 15;
        public static final int TEAM_TRIP_TARGET_DELETED = 16;
        public static final int TTS_END = 9;
        public static final int TTS_START = 8;
        public static final int TYPE_INVALID = -1;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class SceneType {
        public static final int SCENE_TYPE_DEFAULT = 0;
        public static final int SCENE_TYPE_MULTIROUTE = 1;
        public static final int SCENE_TYPE_NAVIGATION = 2;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class SearchStatus {
        public static final int TYPE_DETAIL = 1;
        public static final int TYPE_END = 0;
        public static final int TYPE_NO_RESULT = 4;
        public static final int TYPE_SEARCHING = 3;
        public static final int TYPE_SELECT_POI = 2;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class TYPE {
        public static final int ACC_POWER_OFF = 1029;
        public static final int DIALOG_CMD = 1013;
        public static final int DIALOG_DISMISS = 1012;
        public static final int DIALOG_SHOW = 1011;
        public static final int ELECTRONIC_CAMERA_CONTROL = 1032;
        public static final int EXIT_TEAM_TRIP = 1033;
        public static final int INTERACTIVE_PAGE_CMD = 1040;
        public static final int INTERACTIVE_PAGE_HIDE = 1039;
        public static final int INTERACTIVE_PAGE_SHOW = 1038;
        public static final int JOIN_LAST_TEAM_TRIP = 1041;
        public static final int JOIN_TEAM_TRIP = 1037;
        public static final int LAUNCH_TEAM_TRIP = 1036;
        public static final int LVDS_INIT_COMPLETE = 4000;
        public static final int MAP = 1001;
        public static final int NAVI_BACKGROUND = 1007;
        public static final int NAVI_GUIDE_INFO = 2002;
        public static final int NAVI_HIGH_WAY_INFO = 2005;
        public static final int NAVI_LANE_LINE = 2001;
        public static final int NAVI_OPEN_CLOSE = 1002;
        public static final int NAVI_ROAD_CAMERA = 2003;
        public static final int NAVI_SCENE_TYPE = 2006;
        public static final int NAVI_STATUS = 2000;
        public static final int NAVI_TO_HOME_COMPANY = 1004;
        public static final int NAVI_TO_POI = 1008;
        public static final int NAVI_TO_TARGET = 1025;
        public static final int NAVI_VERSION = 1028;
        public static final int NAVI_ZONE_CAMERA = 2004;
        public static final int NOTIFY_CMD = 1022;
        public static final int NOTIFY_DISMISS = 1021;
        public static final int NOTIFY_SET_TIME = 1023;
        public static final int NOTIFY_SHOW = 1020;
        public static final int QUIT_MULTIROUTE_VIEW = 1031;
        public static final int REQ_CUR_ADDRESS = 1009;
        public static final int REQ_REMAIN_TIME_DISTANCE = 1010;
        public static final int RESUME_NAVI_VIEW = 1030;
        public static final int RG_FULLVIEW = 1005;
        public static final int RG_MODE = 1017;
        public static final int ROUTE_PLAN_SELECT = 1006;
        public static final int ROUTE_PLAN_START_SIMULATE_NAVI = 1043;
        public static final int ROUTE_PLAN_START_STOP_NAVI = 1003;
        public static final int SEARCH_ALONG_ROUTE = 3004;
        public static final int SEARCH_ALONG_ROUTE_RESULT_CMD = 3007;
        public static final int SEARCH_ALONG_ROUTE_RESULT_DISMISS = 3006;
        public static final int SEARCH_ALONG_ROUTE_RESULT_SHOW = 3005;
        public static final int SEARCH_CANCEL = 3002;
        public static final int SEARCH_HOMEANDCOM = 1014;
        public static final int SEARCH_KEYWORD = 3000;
        public static final int SEARCH_NEARBY = 3001;
        public static final int SEARCH_RESULT_CURR_SCREEN = 3009;
        public static final int SEARCH_RESULT_END = 3012;
        public static final int SEARCH_RESULT_SELECTE_POI = 3010;
        public static final int SEARCH_RESULT_SELECT_SCREEN = 3011;
        public static final int SEARCH_RESULT_SHOW_IN_NAVI = 3008;
        public static final int SEARCH_TRAFFIC = 3003;
        public static final int SELECT_POI = 1019;
        public static final int SELECT_ROUTEPALN_PREFERENCE = 1024;
        public static final int SEND_HOMEANDCOM = 1015;
        public static final int SET_HOMEANDCOM = 1016;
        public static final int SET_TARGET = 1026;
        public static final int SET_VOICE_ROLE = 1027;
        public static final int SHOW_POI_INFO = 1042;
        public static final int START_SIMULATE_LOCATION = 1500;
        public static final int TIMEOUT = 1000;
        public static final int TRY_CMD = 1035;
        public static final int TRY_REQUEST = 1034;
        public static final int TTS_VOICE_MODE = 1018;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class TYPE_SPEC {
        public static final int INIT_BEGIN = TypeSpec.makeTypeSpec(2000, 0);
        public static final int INIT_END = TypeSpec.makeTypeSpec(2000, 1);
        public static final int EXIT = TypeSpec.makeTypeSpec(2000, 2);
        public static final int FOREGROUND = TypeSpec.makeTypeSpec(2000, 3);
        public static final int BACKGROUD = TypeSpec.makeTypeSpec(2000, 4);
        public static final int ROUTE_PLAN_SUCCESS = TypeSpec.makeTypeSpec(2000, 5);
        public static final int ROUTE_GUIDE_BEGIN = TypeSpec.makeTypeSpec(2000, 6);
        public static final int ROUTE_GUIDE_END = TypeSpec.makeTypeSpec(2000, 7);
        public static final int TTS_START = TypeSpec.makeTypeSpec(2000, 8);
        public static final int TTS_END = TypeSpec.makeTypeSpec(2000, 9);
        public static final int MUTILROUTE_START = TypeSpec.makeTypeSpec(2000, 10);
        public static final int MUTIROUTE_END = TypeSpec.makeTypeSpec(2000, 11);
        public static final int RG_REMAININFO_UPDATE = TypeSpec.makeTypeSpec(2000, 12);
        public static final int TEAM_TRIP_JOIN = TypeSpec.makeTypeSpec(2000, 13);
        public static final int TEAM_TRIP_EXIT = TypeSpec.makeTypeSpec(2000, 14);
        public static final int TEAM_TRIP_TARGET_ADDED = TypeSpec.makeTypeSpec(2000, 15);
        public static final int TEAM_TRIP_TARGET_DELETED = TypeSpec.makeTypeSpec(2000, 16);
        public static final int TEAM_TRIP_MEMBER_UPDATE = TypeSpec.makeTypeSpec(2000, 17);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class TypeSpec {
        private static final int MODE_MASK = -256;
        private static final int MODE_SHIFT = 8;

        public static int getKeyType(int i) {
            return (i & (-256)) >> 8;
        }

        public static int getSubType(int i) {
            return i & 255;
        }

        public static int makeTypeSpec(int i, int i2) {
            return i << (i2 + 8);
        }
    }
}

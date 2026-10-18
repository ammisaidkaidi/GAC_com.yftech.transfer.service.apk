.class public abstract Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;
.super Ljava/lang/Object;
.source "BaseControl.java"


# static fields
.field static final DECIMAL:Ljava/lang/String; = "decimal"

.field static final INTEGER:Ljava/lang/String; = "integer"

.field static final NAME:Ljava/lang/String; = "name"

.field static final ORIGINAL_TEXT:Ljava/lang/String; = "original_text"

.field static final TEXT:Ljava/lang/String; = "text"

.field static final VALUES:Ljava/lang/String; = "values"


# instance fields
.field JSON_STR_NAME:Ljava/lang/String;

.field JSON_STR_ac_air_volume_incre_direction:[Ljava/lang/String;

.field JSON_STR_ac_air_volume_incre_offset_number:[Ljava/lang/String;

.field JSON_STR_ac_air_volume_mode:[Ljava/lang/String;

.field JSON_STR_ac_air_volume_number:[Ljava/lang/String;

.field JSON_STR_ac_area:[Ljava/lang/String;

.field JSON_STR_ac_control_type:[Ljava/lang/String;

.field JSON_STR_ac_device:[Ljava/lang/String;

.field JSON_STR_ac_mode:[Ljava/lang/String;

.field JSON_STR_ac_mode_level:[Ljava/lang/String;

.field JSON_STR_ac_temparature_incre_offset_number:[Ljava/lang/String;

.field JSON_STR_ac_temperature_area:[Ljava/lang/String;

.field JSON_STR_ac_temperature_incre_direction:[Ljava/lang/String;

.field JSON_STR_ac_temperature_mode:[Ljava/lang/String;

.field JSON_STR_ac_temperature_number:[Ljava/lang/String;

.field JSON_STR_ac_wind_direction:[Ljava/lang/String;

.field JSON_STR_action:[Ljava/lang/String;

.field JSON_STR_album:[Ljava/lang/String;

.field JSON_STR_any:[Ljava/lang/String;

.field JSON_STR_app:[Ljava/lang/String;

.field JSON_STR_appearance:[Ljava/lang/String;

.field JSON_STR_atlights_type:[Ljava/lang/String;

.field JSON_STR_backdoor_control:[Ljava/lang/String;

.field JSON_STR_colour:[Ljava/lang/String;

.field JSON_STR_curtain_device:[Ljava/lang/String;

.field JSON_STR_curtain_mode:[Ljava/lang/String;

.field JSON_STR_custom_poi:[Ljava/lang/String;

.field JSON_STR_dashboard_light_incre_direction:[Ljava/lang/String;

.field JSON_STR_dashboard_light_incre_offset_number:[Ljava/lang/String;

.field JSON_STR_dashboard_light_modeot:[Ljava/lang/String;

.field JSON_STR_dashboard_light_number:[Ljava/lang/String;

.field JSON_STR_device:[Ljava/lang/String;

.field JSON_STR_device_operation:[Ljava/lang/String;

.field JSON_STR_device_position:[Ljava/lang/String;

.field JSON_STR_display_control:[Ljava/lang/String;

.field JSON_STR_energy_capacity:[Ljava/lang/String;

.field JSON_STR_energy_num:[Ljava/lang/String;

.field JSON_STR_energy_type:[Ljava/lang/String;

.field JSON_STR_energy_unit:[Ljava/lang/String;

.field JSON_STR_fd_incre_direction:[Ljava/lang/String;

.field JSON_STR_fd_incre_offset_number:[Ljava/lang/String;

.field JSON_STR_fd_mode:[Ljava/lang/String;

.field JSON_STR_fd_number:[Ljava/lang/String;

.field JSON_STR_function:[Ljava/lang/String;

.field JSON_STR_gear_unit:[Ljava/lang/String;

.field JSON_STR_gears_num:[Ljava/lang/String;

.field JSON_STR_gears_position:[Ljava/lang/String;

.field JSON_STR_gears_unit:[Ljava/lang/String;

.field JSON_STR_light:[Ljava/lang/String;

.field JSON_STR_list_selection_mode:[Ljava/lang/String;

.field JSON_STR_list_selection_number:[Ljava/lang/String;

.field JSON_STR_list_tab_mode:[Ljava/lang/String;

.field JSON_STR_list_tab_number:[Ljava/lang/String;

.field JSON_STR_maintenance_device:[Ljava/lang/String;

.field JSON_STR_maintenance_number:[Ljava/lang/String;

.field JSON_STR_maintenance_type:[Ljava/lang/String;

.field JSON_STR_maintenance_unit:[Ljava/lang/String;

.field JSON_STR_manual_action:[Ljava/lang/String;

.field JSON_STR_manual_section:[Ljava/lang/String;

.field JSON_STR_media_source:[Ljava/lang/String;

.field JSON_STR_media_type:[Ljava/lang/String;

.field JSON_STR_page_unit:[Ljava/lang/String;

.field JSON_STR_period:[Ljava/lang/String;

.field JSON_STR_picture_preview_control:[Ljava/lang/String;

.field JSON_STR_poi:[Ljava/lang/String;

.field JSON_STR_recorder_action:[Ljava/lang/String;

.field JSON_STR_remainder_num:[Ljava/lang/String;

.field JSON_STR_remainder_unit:[Ljava/lang/String;

.field JSON_STR_running_mode:[Ljava/lang/String;

.field JSON_STR_running_num:[Ljava/lang/String;

.field JSON_STR_running_rule:[Ljava/lang/String;

.field JSON_STR_running_type:[Ljava/lang/String;

.field JSON_STR_running_unit:[Ljava/lang/String;

.field JSON_STR_screen_brightness_incre_direction:[Ljava/lang/String;

.field JSON_STR_screen_brightness_incre_offset_number:[Ljava/lang/String;

.field JSON_STR_screen_brightness_mode:[Ljava/lang/String;

.field JSON_STR_screen_brightness_option_number:[Ljava/lang/String;

.field JSON_STR_seat_adjustment_action:[Ljava/lang/String;

.field JSON_STR_seat_adjustment_mode:[Ljava/lang/String;

.field JSON_STR_seat_adjustment_number:[Ljava/lang/String;

.field JSON_STR_seat_area:[Ljava/lang/String;

.field JSON_STR_seat_heating_gear_incre_offset_number:[Ljava/lang/String;

.field JSON_STR_seat_heating_gear_number:[Ljava/lang/String;

.field JSON_STR_seat_heating_incre_direction:[Ljava/lang/String;

.field JSON_STR_seat_heating_incre_offset_number:[Ljava/lang/String;

.field JSON_STR_seat_heating_mode:[Ljava/lang/String;

.field JSON_STR_seat_heating_option_number:[Ljava/lang/String;

.field JSON_STR_seat_position:[Ljava/lang/String;

.field JSON_STR_seat_ventilation_incre_direction:[Ljava/lang/String;

.field JSON_STR_seat_ventilation_incre_offset_number:[Ljava/lang/String;

.field JSON_STR_seat_ventilation_mode:[Ljava/lang/String;

.field JSON_STR_seat_ventilation_option_number:[Ljava/lang/String;

.field JSON_STR_singer:[Ljava/lang/String;

.field JSON_STR_skill:[Ljava/lang/String;

.field JSON_STR_skylight_mode:[Ljava/lang/String;

.field JSON_STR_song:[Ljava/lang/String;

.field JSON_STR_sound_channel:[Ljava/lang/String;

.field JSON_STR_sound_unit:[Ljava/lang/String;

.field JSON_STR_sound_volume_control:[Ljava/lang/String;

.field JSON_STR_speed:[Ljava/lang/String;

.field JSON_STR_speed_cruise_mode:[Ljava/lang/String;

.field JSON_STR_speed_incre_direction:[Ljava/lang/String;

.field JSON_STR_speed_incre_offset_number:[Ljava/lang/String;

.field JSON_STR_speed_unit:[Ljava/lang/String;

.field JSON_STR_status:[Ljava/lang/String;

.field JSON_STR_status_device:[Ljava/lang/String;

.field JSON_STR_status_device_position:[Ljava/lang/String;

.field JSON_STR_status_extent:[Ljava/lang/String;

.field JSON_STR_switch_to_new:[Ljava/lang/String;

.field JSON_STR_temperature_unit:[Ljava/lang/String;

.field JSON_STR_tire_environment:[Ljava/lang/String;

.field JSON_STR_tire_load:[Ljava/lang/String;

.field JSON_STR_tire_num:[Ljava/lang/String;

.field JSON_STR_tire_positon:[Ljava/lang/String;

.field JSON_STR_tire_season:[Ljava/lang/String;

.field JSON_STR_tire_status:[Ljava/lang/String;

.field JSON_STR_tire_unit:[Ljava/lang/String;

.field JSON_STR_tone:[Ljava/lang/String;

.field JSON_STR_volumeto:[Ljava/lang/String;

.field JSON_STR_warning_action:[Ljava/lang/String;

.field JSON_STR_warning_color:[Ljava/lang/String;

.field JSON_STR_warning_device:[Ljava/lang/String;

.field JSON_STR_warning_name:[Ljava/lang/String;

.field JSON_STR_warning_position:[Ljava/lang/String;

.field JSON_STR_warning_refer:[Ljava/lang/String;

.field JSON_STR_warning_type:[Ljava/lang/String;

.field JSON_STR_window_action_percent:[Ljava/lang/String;

.field JSON_STR_window_incre_direction:[Ljava/lang/String;

.field JSON_STR_window_mode:[Ljava/lang/String;

.field JSON_STR_window_position:[Ljava/lang/String;

.field JSON_STR_wiper_mode:[Ljava/lang/String;

.field JSON_STR_wiper_position_number:[Ljava/lang/String;

.field JSON_STR_wiper_speed_incre:[Ljava/lang/String;

.field JSON_STR_wiper_speed_incre_offset_number:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    .line 22
    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_NAME:Ljava/lang/String;

    const-string v0, "usr.manual_section "

    const-string v1, "manual_section"

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_manual_section:[Ljava/lang/String;

    const-string v0, "usr.manual_action  "

    const-string v1, "manual_action"

    .line 28
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_manual_action:[Ljava/lang/String;

    const-string v0, "usr.device_operation"

    const-string v1, "device_operation"

    .line 34
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_device_operation:[Ljava/lang/String;

    const-string v0, "usr.ac_control_type"

    const-string v1, "ac_control_type"

    .line 35
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_ac_control_type:[Ljava/lang/String;

    const-string v0, "usr.ac_air_volume_incre_direction"

    const-string v1, "ac_air_volume_incre_direction"

    .line 36
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_ac_air_volume_incre_direction:[Ljava/lang/String;

    const-string v0, "usr.ac_wind_direction"

    const-string v1, "ac_wind_direction"

    .line 37
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_ac_wind_direction:[Ljava/lang/String;

    const-string v0, "usr.ac_temperature_incre_direction"

    const-string v1, "ac_temperature_incre_direction"

    .line 38
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_ac_temperature_incre_direction:[Ljava/lang/String;

    const-string v0, "usr.ac_temperature_area"

    const-string v1, "ac_temperature_area"

    .line 39
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_ac_temperature_area:[Ljava/lang/String;

    const-string v0, "usr.ac_mode"

    const-string v1, "ac_mode"

    .line 40
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_ac_mode:[Ljava/lang/String;

    const-string v0, "usr.ac_temperature_mode"

    const-string v1, "ac_temperature_mode"

    .line 41
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_ac_temperature_mode:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "ac_temparature_incre_offset_number"

    .line 42
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_ac_temparature_incre_offset_number:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "ac_temperature_number"

    .line 43
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_ac_temperature_number:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "ac_air_volume_number"

    .line 44
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_ac_air_volume_number:[Ljava/lang/String;

    const-string v0, "usr.gear_unit"

    const-string v1, "gear_unit"

    .line 45
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_gear_unit:[Ljava/lang/String;

    const-string v0, "usr.ac_device"

    const-string v1, "ac_device"

    .line 46
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_ac_device:[Ljava/lang/String;

    const-string v0, "usr.ac_air_volume_mode"

    const-string v1, "ac_air_volume_mode"

    .line 47
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_ac_air_volume_mode:[Ljava/lang/String;

    const-string v0, "usr.ac_air_volume_incre_offset_number"

    const-string v1, "ac_air_volume_incre_offset_number"

    .line 48
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_ac_air_volume_incre_offset_number:[Ljava/lang/String;

    const-string v0, "usr.temperature_unit"

    const-string v1, "temperature_unit"

    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_temperature_unit:[Ljava/lang/String;

    const-string v0, "usr.device"

    const-string v1, "device"

    .line 55
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_device:[Ljava/lang/String;

    const-string v0, "usr.device_position"

    const-string v1, "device_position"

    .line 56
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_device_position:[Ljava/lang/String;

    const-string v0, "usr.app"

    const-string v1, "app"

    .line 62
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_app:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "screen_brightness_option_number"

    .line 68
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_screen_brightness_option_number:[Ljava/lang/String;

    const-string v0, "usr.screen_brightness_incre_direction"

    const-string v1, "screen_brightness_incre_direction"

    .line 69
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_screen_brightness_incre_direction:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "screen_brightness_incre_offset_number"

    .line 70
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_screen_brightness_incre_offset_number:[Ljava/lang/String;

    const-string v0, "usr.screen_brightness_mode"

    const-string v1, "screen_brightness_mode"

    .line 71
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_screen_brightness_mode:[Ljava/lang/String;

    const-string v0, "usr.sound_volume_control"

    const-string v1, "sound_volume_control"

    .line 76
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_sound_volume_control:[Ljava/lang/String;

    const-string v0, "usr.sound_channel"

    const-string v1, "sound_channel"

    .line 77
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_sound_channel:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "volumeto"

    .line 78
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_volumeto:[Ljava/lang/String;

    const-string v0, "usr.sound_unit"

    const-string v1, "sound_unit"

    .line 79
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_sound_unit:[Ljava/lang/String;

    const-string v0, "usr.picture_preview_control"

    const-string v1, "picture_preview_control"

    .line 86
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_picture_preview_control:[Ljava/lang/String;

    const-string v0, "usr.display_control"

    const-string v1, "display_control"

    .line 95
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_display_control:[Ljava/lang/String;

    const-string v0, "usr.media_source"

    const-string v1, "media_source"

    .line 103
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_media_source:[Ljava/lang/String;

    const-string v0, "usr.media_type"

    const-string v1, "media_type"

    .line 104
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_media_type:[Ljava/lang/String;

    const-string v0, "sys.music.singer"

    const-string v1, "singer"

    .line 105
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_singer:[Ljava/lang/String;

    const-string v0, "sys.music.song"

    const-string v1, "song"

    .line 106
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_song:[Ljava/lang/String;

    const-string v0, "sys.music.album"

    const-string v1, "album"

    .line 107
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_album:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "list_selection_number"

    .line 115
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_list_selection_number:[Ljava/lang/String;

    const-string v0, "usr.page_unit"

    const-string v1, "page_unit"

    .line 116
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_page_unit:[Ljava/lang/String;

    const-string v0, "usr.list_selection_mode"

    const-string v1, "list_selection_mode"

    .line 117
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_list_selection_mode:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "list_tab_number"

    .line 118
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_list_tab_number:[Ljava/lang/String;

    const-string v0, "usr.list_tab_mode"

    const-string v1, "list_tab_mode"

    .line 119
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_list_tab_mode:[Ljava/lang/String;

    const-string v0, "usr.skill"

    const-string v1, "skill"

    .line 125
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_skill:[Ljava/lang/String;

    const-string v0, "sys.any"

    const-string v1, "any"

    .line 126
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_any:[Ljava/lang/String;

    const-string v0, "usr.ac_area"

    const-string v1, "ac_area"

    .line 132
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_ac_area:[Ljava/lang/String;

    const-string v0, "usr.ac_mode_level"

    const-string v1, "ac_mode_level"

    .line 133
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_ac_mode_level:[Ljava/lang/String;

    const-string v0, "usr.skylight_mode"

    const-string v1, "skylight_mode"

    .line 139
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_skylight_mode:[Ljava/lang/String;

    const-string v0, "usr.curtain_mode"

    const-string v1, "curtain_mode"

    .line 145
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_curtain_mode:[Ljava/lang/String;

    const-string v0, "usr.curtain_device"

    const-string v1, "curtain_device"

    .line 146
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_curtain_device:[Ljava/lang/String;

    const-string v0, "usr.backdoor_control"

    const-string v1, "backdoor_control"

    .line 152
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_backdoor_control:[Ljava/lang/String;

    const-string v0, "usr.recorder_action"

    const-string v1, "recorder_action"

    .line 158
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_recorder_action:[Ljava/lang/String;

    const-string v0, "usr.colour"

    const-string v1, "colour"

    .line 164
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_colour:[Ljava/lang/String;

    const-string v0, "usr.light"

    const-string v1, "light"

    .line 165
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_light:[Ljava/lang/String;

    const-string v0, "usr.switch_to_new"

    const-string v1, "switch_to_new"

    .line 166
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_switch_to_new:[Ljava/lang/String;

    const-string v0, "usr.tone"

    const-string v1, "tone"

    .line 167
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_tone:[Ljava/lang/String;

    const-string v0, "usr.atlights_type"

    const-string v1, "atlights_type"

    .line 168
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_atlights_type:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "speed"

    .line 174
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_speed:[Ljava/lang/String;

    const-string v0, "usr.speed_unit"

    const-string v1, "speed_unit"

    .line 175
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_speed_unit:[Ljava/lang/String;

    const-string v0, "usr.speed_incre_direction"

    const-string v1, "speed_incre_direction"

    .line 176
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_speed_incre_direction:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "speed_incre_offset_number"

    .line 177
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_speed_incre_offset_number:[Ljava/lang/String;

    const-string v0, "usr.speed_cruise_mode"

    const-string v1, "speed_cruise_mode"

    .line 178
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_speed_cruise_mode:[Ljava/lang/String;

    const-string v0, "usr.wiper_speed_incre"

    const-string v1, "wiper_speed_incre"

    .line 185
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_wiper_speed_incre:[Ljava/lang/String;

    const-string v0, "usr.wiper_mode"

    const-string v1, "wiper_mode"

    .line 186
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_wiper_mode:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "wiper_speed_incre_offset_number"

    .line 187
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_wiper_speed_incre_offset_number:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "wiper_position_number"

    .line 188
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_wiper_position_number:[Ljava/lang/String;

    const-string v0, "usr.seat_area"

    const-string v1, "seat_area"

    .line 196
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_seat_area:[Ljava/lang/String;

    const-string v0, "usr.seat_position"

    const-string v1, "seat_position"

    .line 197
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_seat_position:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "seat_adjustment_number"

    .line 198
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_seat_adjustment_number:[Ljava/lang/String;

    const-string v0, "usr.seat_adjustment_mode"

    const-string v1, "seat_adjustment_mode"

    .line 199
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_seat_adjustment_mode:[Ljava/lang/String;

    const-string v0, "usr.seat_adjustment_action"

    const-string v1, "seat_adjustment_action"

    .line 200
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_seat_adjustment_action:[Ljava/lang/String;

    const-string v0, "usr.seat_heating_incre_direction"

    const-string v1, "seat_heating_incre_direction"

    .line 208
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_seat_heating_incre_direction:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "seat_heating_option_number"

    .line 209
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_seat_heating_option_number:[Ljava/lang/String;

    const-string v0, "usr.seat_heating_mode"

    const-string v1, "seat_heating_mode"

    .line 210
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_seat_heating_mode:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "seat_heating_incre_offset_number"

    .line 211
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_seat_heating_incre_offset_number:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "seat_heating_gear_number"

    .line 212
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_seat_heating_gear_number:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "seat_heating_gear_incre_offset_number"

    .line 213
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_seat_heating_gear_incre_offset_number:[Ljava/lang/String;

    const-string v0, "usr.seat_ventilation_incre_direction"

    const-string v1, "seat_ventilation_incre_direction"

    .line 220
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_seat_ventilation_incre_direction:[Ljava/lang/String;

    const-string v0, "usr.seat_ventilation_mode"

    const-string v1, "seat_ventilation_mode"

    .line 221
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_seat_ventilation_mode:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "seat_ventilation_incre_offset_number"

    .line 222
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_seat_ventilation_incre_offset_number:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "seat_ventilation_option_number"

    .line 223
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_seat_ventilation_option_number:[Ljava/lang/String;

    const-string v0, "usr.dashboard_light_incre_direction"

    const-string v1, "dashboard_light_incre_direction"

    .line 229
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_dashboard_light_incre_direction:[Ljava/lang/String;

    const-string v0, "usr.dashboard_light_mode"

    const-string v1, "dashboard_light_mode"

    .line 230
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_dashboard_light_modeot:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "dashboard_light_number"

    .line 231
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_dashboard_light_number:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "dashboard_light_incre_offset_number"

    .line 232
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_dashboard_light_incre_offset_number:[Ljava/lang/String;

    const-string v0, "usr.maintenance.period"

    const-string v1, "period"

    .line 239
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_period:[Ljava/lang/String;

    const-string v0, "usr.maintenance_device"

    const-string v1, "maintenance_device"

    .line 240
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_maintenance_device:[Ljava/lang/String;

    const-string v0, "usr.maintenance.action"

    const-string v1, "action"

    .line 241
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_action:[Ljava/lang/String;

    const-string v0, "usr.maintenance.unit"

    const-string v1, "maintenance_unit"

    .line 242
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_maintenance_unit:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "maintenance_number"

    .line 243
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_maintenance_number:[Ljava/lang/String;

    const-string v0, "usr.maintenance.maintenance_type"

    const-string v1, "maintenance_type"

    .line 244
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_maintenance_type:[Ljava/lang/String;

    const-string v0, "usr.status_query.device"

    const-string v1, "status_device"

    .line 251
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_status_device:[Ljava/lang/String;

    const-string v0, "usr.status_query.function"

    const-string v1, "function"

    .line 252
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_function:[Ljava/lang/String;

    const-string v0, "usr.status_query.status"

    const-string v1, "status"

    .line 253
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_status:[Ljava/lang/String;

    const-string v0, "usr.status_query.position"

    const-string v1, "status_device_position"

    .line 254
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_status_device_position:[Ljava/lang/String;

    const-string v0, "usr.status_query.extent"

    const-string v1, "status_extent"

    .line 255
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_status_extent:[Ljava/lang/String;

    const-string v0, "usr.status_query.appearance"

    const-string v1, "appearance"

    .line 256
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_appearance:[Ljava/lang/String;

    const-string v0, "usr.energy_query_capacity"

    const-string v1, "energy_capacity"

    .line 263
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_energy_capacity:[Ljava/lang/String;

    const-string v0, "usr.energy_query_type"

    const-string v1, "energy_type"

    .line 264
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_energy_type:[Ljava/lang/String;

    const-string v0, "usr.energy_query_unit"

    const-string v1, "energy_unit"

    .line 265
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_energy_unit:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "energy_num"

    .line 266
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_energy_num:[Ljava/lang/String;

    const-string v0, "usr.warning_light.position"

    const-string v1, "warning_position"

    .line 274
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_warning_position:[Ljava/lang/String;

    const-string v0, "usr.warning_light.name"

    const-string v1, "warning_name"

    .line 275
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_warning_name:[Ljava/lang/String;

    const-string v0, "usr.warning_light.color"

    const-string v1, "warning_color"

    .line 276
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_warning_color:[Ljava/lang/String;

    const-string v0, "usr.warning_light.type"

    const-string v1, "warning_type"

    .line 277
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_warning_type:[Ljava/lang/String;

    const-string v0, "usr.warning_light.device"

    const-string v1, "warning_device"

    .line 278
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_warning_device:[Ljava/lang/String;

    const-string v0, "usr.warning_light.action"

    const-string v1, "warning_action"

    .line 279
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_warning_action:[Ljava/lang/String;

    const-string v0, "usr.warning_light.reference"

    const-string v1, "warning_refer"

    .line 280
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_warning_refer:[Ljava/lang/String;

    const-string v0, "usr.running_status.rule"

    const-string v1, "running_rule"

    .line 287
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_running_rule:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "running_num"

    .line 288
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_running_num:[Ljava/lang/String;

    const-string v0, "usr.running_status.mode"

    const-string v1, "running_mode"

    .line 289
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_running_mode:[Ljava/lang/String;

    const-string v0, "usr.running_status.type"

    const-string v1, "running_type"

    .line 290
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_running_type:[Ljava/lang/String;

    const-string v0, "usr.running_status.unit"

    const-string v1, "running_unit"

    .line 291
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_running_unit:[Ljava/lang/String;

    const-string v0, "usr.remainder_range.unit"

    const-string v1, "remainder_unit"

    .line 298
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_remainder_unit:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "remainder_num"

    .line 299
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_remainder_num:[Ljava/lang/String;

    const-string v0, "usr.navigation.custom_address"

    const-string v1, "custom_poi"

    .line 300
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_custom_poi:[Ljava/lang/String;

    const-string v0, "sys.geo.address"

    const-string v1, "poi"

    .line 301
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_poi:[Ljava/lang/String;

    const-string v0, "usr.gears_position"

    const-string v1, "gears_position"

    .line 308
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_gears_position:[Ljava/lang/String;

    const-string v0, "usr.gears_position.unit"

    const-string v1, "gears_unit"

    .line 309
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_gears_unit:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "gears_num"

    .line 310
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_gears_num:[Ljava/lang/String;

    const-string v0, "usr.tire_pressure.status"

    const-string v1, "tire_status"

    .line 318
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_tire_status:[Ljava/lang/String;

    const-string v0, "usr.tire_pressure.positon"

    const-string v1, "tire_positon"

    .line 319
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_tire_positon:[Ljava/lang/String;

    const-string v0, "usr.tire_pressure.unit"

    const-string v1, "tire_unit"

    .line 320
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_tire_unit:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "tire_num"

    .line 321
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_tire_num:[Ljava/lang/String;

    const-string v0, "usr.tire_pressure.environment"

    const-string v1, "tire_environment"

    .line 322
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_tire_environment:[Ljava/lang/String;

    const-string v0, "usr.tire_pressure.season"

    const-string v1, "tire_season"

    .line 323
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_tire_season:[Ljava/lang/String;

    const-string v0, "usr.tire_pressure.load"

    const-string v1, "tire_load"

    .line 324
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_tire_load:[Ljava/lang/String;

    const-string v0, "usr.window_mode"

    const-string v1, "window_mode"

    .line 332
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_window_mode:[Ljava/lang/String;

    const-string v0, "usr.window_position"

    const-string v1, "window_position"

    .line 333
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_window_position:[Ljava/lang/String;

    const-string v0, "usr.window_incre_direction"

    const-string v1, "window_incre_direction"

    .line 334
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_window_incre_direction:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "window_action_percent"

    .line 335
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_window_action_percent:[Ljava/lang/String;

    const-string v0, "usr.fd_mode"

    const-string v1, "fd_mode"

    .line 342
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_fd_mode:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "fd_number"

    .line 343
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_fd_number:[Ljava/lang/String;

    const-string v0, "sys.number"

    const-string v1, "fd_incre_offset_number"

    .line 344
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_fd_incre_offset_number:[Ljava/lang/String;

    const-string v0, "usr.fd_incre_direction"

    const-string v1, "fd_incre_direction"

    .line 345
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->JSON_STR_fd_incre_direction:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public SecondDispatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 364
    sget-object p0, Lcom/yftech/transfer/tencent/access/TASUtils;->no_support:[Ljava/lang/String;

    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASUtils;->success([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dispatch(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 0

    .line 351
    sget-object p0, Lcom/yftech/transfer/tencent/access/TASUtils;->no_support:[Ljava/lang/String;

    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASUtils;->success([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onInvokeAction(ZLcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;)Ljava/lang/String;
    .locals 0

    .line 355
    sget-object p0, Lcom/yftech/transfer/tencent/access/TASUtils;->no_support:[Ljava/lang/String;

    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASUtils;->success([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/sonyericsson/android/camera3d/CameraConfig;
.super Ljava/lang/Object;
.source "CameraConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;,
        Lcom/sonyericsson/android/camera3d/CameraConfig$MediaStore;,
        Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;,
        Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;
    }
.end annotation


# static fields
.field public static final ACTION_CAMERA_FINISH:Ljava/lang/String; = "com.sonyericsson.android.camera.intent.action.FINISH"

.field public static final ACTION_CAMERA_LAUNCH:Ljava/lang/String; = "com.sonyericsson.android.camera.intent.action.LAUNCH"

.field public static final ACTION_CAMERA_NEW_PICT:Ljava/lang/String; = "com.android.camera.NEW_PICTURE"

.field public static final ACTION_EDIT_NAMETAG:Ljava/lang/String; = "android.intent.action.PICK"

.field public static final ACTION_MUSICSERVICE_COMMAND:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field public static final ACTUAL_HEIGHT_HD:I = 0x1b0

.field public static final ACTUAL_WIDTH_HD:I = 0x300

.field public static final ADVANCED_SETTINGS_ACTIVITY_ENABLE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final AF_DELAY_AVERAGE_TIME:I = 0x0

.field public static final APPLICATION_DEFAULT_THREAD_TIMEOUT:I = 0xbb8

.field public static final AUTO_TERMINATION_TIMER_TIME:I = 0x2bf20

.field public static final BOOL_FALSE:I = 0x0

.field public static final BOOL_TRUE:I = 0x1

.field public static final CAMERATYPE_3D_CAMERA:I = 0x3

.field public static final CAMERATYPE_NONE:I = 0x0

.field public static final CAMERATYPE_STILL_CAMERA:I = 0x1

.field public static final CAMERATYPE_VIDEO_CAMERA:I = 0x2

.field public static final CAMERA_ACTION_ADVANCED_SETTING:Ljava/lang/String; = "com.sonyericsson.android.camera.intent.action.SETTING"

.field public static final CAMERA_DEVICE_OPEN_TIMEOUT:I = 0x1388

.field public static final CAMERA_ID_INVALID:I = -0x1

.field public static final CAMERA_MODE_KEY:Ljava/lang/String; = "com.sonyericsson.android.camera.intent.extra.Mode"

.field public static final CAMERA_THREAD_CAMERA_DEV_OPEN:Ljava/lang/String; = "Camera Device Opener"

.field public static final CAMERA_THREAD_PATH_BUILDER:Ljava/lang/String; = "DCF Path Builder"

.field public static final CAMERA_THREAD_SELF_TIMER:Ljava/lang/String; = "Camera Self Timer"

.field public static final CAMERA_THREAD_VIDEO_DEV_RELEASE:Ljava/lang/String; = "Video Device Releaser"

.field public static final CROP_ASPECT_CONTACT_X:I = 0x1e0

.field public static final CROP_ASPECT_CONTACT_X_STR:Ljava/lang/String; = "aspectX"

.field public static final CROP_ASPECT_CONTACT_Y:I = 0x11d

.field public static final CROP_ASPECT_CONTACT_Y_STR:Ljava/lang/String; = "aspectY"

.field public static final CROP_NO_FACE_DETECTION_STR:Ljava/lang/String; = "noFaceDetection"

.field public static final CROP_OUTPUT_CONTACT_X:I = 0x1e0

.field public static final CROP_OUTPUT_CONTACT_X_STR:Ljava/lang/String; = "outputX"

.field public static final CROP_OUTPUT_CONTACT_Y:I = 0x11d

.field public static final CROP_OUTPUT_CONTACT_Y_STR:Ljava/lang/String; = "outputY"

.field public static final CROP_RETURN_DATA_REQUIRE:Ljava/lang/String; = "return-data"

.field public static final CROP_SCALE_STR:Ljava/lang/String; = "scale"

.field public static final CROP_TEMPFILENAME:Ljava/lang/String; = "croptemp"

.field public static final DEBUG:Z = false

.field public static final DEBUG_BITMAP_MANAGER_DUMP:Z = false

.field public static final DEBUG_EMU:Z = false

.field public static final DEBUG_EVENT_INTRUDER:Z = false

.field public static final DEBUG_LOG_ALL_E:Z = false

.field public static final DEBUG_LOG_ALL_I:Z = false

.field public static final DEBUG_LOG_WITH_TIME:Z = false

.field public static final DEBUG_NO_SHUTTER_KEY:Z = false

.field public static final DEBUG_PERFORM_FILE:Ljava/lang/String; = "camera_perform.csv"

.field public static final DEBUG_PERFORM_MEM:Z = false

.field public static final DEBUG_PERFORM_TIME:Z = false

.field public static final DEBUG_SCENE_EVALUATION_ENABLE:Z = false

.field public static final DEBUG_STRICT_MODE:Z = false

.field public static final DEBUG_THUMBNAIL_WITHINFO:Z = false

.field public static final DEBUG_TOUCH_EDGE:Z = false

.field public static final DEBUG_TRACE_VIEW:Z = false

.field public static final DELAY_AFTER_SELF_TIMER:I = 0xc8

.field public static final DEV_CAMERA_ZOOM_MAX_RATIO:I = 0x10

.field public static final DEV_CAMERA_ZOOM_MIN_RATIO:I = 0x1

.field public static final DISPLAY_HEIGHT:I = 0x1e0

.field public static final DISPLAY_HEIGHT_SMALL:I = 0x140

.field public static final DISPLAY_WIDTH:I = 0x356

.field public static final DISPLAY_WIDTH_SMALL:I = 0x1e0

.field public static final EDIT_NAMETAG_MIMETYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact"

.field public static final EV_OPERATION_TIMEOUT:I = 0x7d0

.field public static final EXIF_VAL_AE_AUTO:Ljava/lang/String; = "0"

.field public static final EXIF_VAL_AE_MANUAL:Ljava/lang/String; = "1"

.field public static final EXIF_VAL_COLORSPACE_SRGB:Ljava/lang/String; = "1"

.field public static final EXIF_VAL_COMPO_CONFIG:Ljava/lang/String; = "01020300"

.field public static final EXIF_VAL_CUTOMRENDERED_NORMAL:Ljava/lang/String; = "0"

.field public static final EXIF_VAL_EXIF_VER_2_2:Ljava/lang/String; = "30323230"

.field public static final EXIF_VAL_FLASHPIX_VER_1_0:Ljava/lang/String; = "30313030"

.field public static final EXIF_VAL_FOCAL_LENGTH:Ljava/lang/String; = "465/100"

.field public static final EXIF_VAL_F_NUMBER:Ljava/lang/String; = "28/10"

.field public static final EXIF_VAL_GPS_VERSION:Ljava/lang/String; = "02020000"

.field public static final EXIF_VAL_MAKER:Ljava/lang/String; = null

.field public static final EXIF_VAL_MODEL:Ljava/lang/String; = null

.field public static final EXIF_VAL_RESUNIT_INCH:Ljava/lang/String; = "2"

.field public static final EXIF_VAL_WB_AUTO:Ljava/lang/String; = "0"

.field public static final EXIF_VAL_WB_MANUAL:Ljava/lang/String; = "1"

.field public static final EXIF_VAL_XRESOLUTION_72DPI:Ljava/lang/String; = "72/1"

.field public static final EXIF_VAL_YCBCR_POS_4_2_2:Ljava/lang/String; = "2"

.field public static final EXIF_VAL_YRESOLUTION_72DPI:Ljava/lang/String; = "72/1"

.field public static final EXTRA_SIZE_LIMIT_SEMC:Ljava/lang/String; = "com.sonyericsson.camera.sizeLimit"

.field public static final FACE_DETECT_MAX:I = 0x5

.field public static final FACE_DETECT_TIMEOUT:I = 0xbb8

.field public static final GET_VIDEO_PATH_POLLING_WAIT_TIME:I = 0x64

.field public static final GET_VIDEO_PATH_TIMEOUT:I = 0xbb8

.field public static final HEIGHT_2D_STANDARD_PORTRAIT:I = 0x1996

.field public static final HEIGHT_2D_WIDE_PORTRAIT:I = 0x2540

.field public static final HEIGHT_2MP:I = 0x4c8

.field public static final HEIGHT_6MP:I = 0x72c

.field public static final HEIGHT_8MP:I = 0x990

.field public static final HEIGHT_FULLHD:I = 0x438

.field public static final HEIGHT_FWVGA:I = 0x1e0

.field public static final HEIGHT_HD:I = 0x2d0

.field public static final HEIGHT_PREVIEW_2MP:I = 0x1e0

.field public static final HEIGHT_PREVIEW_6MP:I = 0x1e0

.field public static final HEIGHT_PREVIEW_8MP:I = 0x1e0

.field public static final HEIGHT_PREVIEW_FULLHD:I = 0x1e0

.field public static final HEIGHT_PREVIEW_FWVGA:I = 0x1e0

.field public static final HEIGHT_PREVIEW_HD:I = 0x2d0

.field public static final HEIGHT_PREVIEW_HVGA:I = 0x140

.field public static final HEIGHT_PREVIEW_QCIF:I = 0x90

.field public static final HEIGHT_PREVIEW_QVGA:I = 0xf0

.field public static final HEIGHT_PREVIEW_SWEEP:I = 0x4b0

.field public static final HEIGHT_PREVIEW_SWEEP_VERTICAL:I = 0x2d0

.field public static final HEIGHT_PREVIEW_VGA:I = 0x1e0

.field public static final HEIGHT_QCIF:I = 0x90

.field public static final HEIGHT_QVGA:I = 0xf0

.field public static final HEIGHT_SWEEP_16_BY_9:I = 0x438

.field public static final HEIGHT_SWEEP_STANDARD:I = 0x438

.field public static final HEIGHT_SWEEP_WIDE:I = 0x438

.field public static final HEIGHT_VGA:I = 0x1e0

.field static final IMAGE_FILLER_UV:[B = null

.field static final IMAGE_FILLER_Y:[B = null

.field static final IMAGE_FILLER_Y_DARK:[B = null

.field public static final INTENT_ACTION_3DCAMERA_FINISH_CAMERAACTIVITY:Ljava/lang/String; = "com.sonyericsson.android.camera3d.intent.action.FINISH_CAMERAACTIVITY"

.field public static final INTENT_ACTION_FRONT_STILL_IMAGE_CAMERA:Ljava/lang/String; = "com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA"

.field public static final INTENT_ACTION_FRONT_VIDEO_CAMERA:Ljava/lang/String; = "com.sonyericsson.android.camera.action.FRONT_VIDEO_CAMERA"

.field public static final INTERNAL_CAMERA_ERROR_NO_MEMORY:I = -0x1

.field public static final INTERNAL_CAMERA_ERROR_NO_RAWDATA:I = -0x2

.field public static final INTERNAL_VIDEO_ERROR_NO_SET_MAX_FILESIZE:I = -0x3

.field public static final LOCATION_GPS_MIN_UPDATE_DISTANCE:F = 0.0f

.field public static final LOCATION_GPS_MIN_UPDATE_TIME:I = 0xea60

.field public static final LOCATION_NETWORK_MIN_UPDATE_DISTANCE:F = 0.0f

.field public static final LOCATION_NETWORK_MIN_UPDATE_TIME:I = 0xea60

.field public static final LOG_LEVEL:I = 0x2

.field public static final MAX_WORK_AREA_SIZE:I = 0x8fe801

.field public static final MEDIASTORE_IS_CAMERA:Ljava/lang/String; = "is_camera"

.field public static final MEDIA_TYPE_3GP_EXT:Ljava/lang/String; = ".3gp"

.field public static final MEDIA_TYPE_3GP_MIME:Ljava/lang/String; = "video/3gpp"

.field public static final MEDIA_TYPE_JPEG_EXT:Ljava/lang/String; = ".JPG"

.field public static final MEDIA_TYPE_JPEG_MIME:Ljava/lang/String; = "image/jpeg"

.field public static final MEDIA_TYPE_MPEG4_EXT:Ljava/lang/String; = ".mp4"

.field public static final MEDIA_TYPE_MPEG4_MIME:Ljava/lang/String; = "video/mp4"

.field public static final MEDIA_TYPE_MPO_EXT:Ljava/lang/String; = ".MPO"

.field public static final MEDIA_TYPE_MPO_MIME:Ljava/lang/String; = "image/mpo"

.field public static final MICRO_THUMBNAIL_TEMP_PREFIX:Ljava/lang/String; = "Temp"

.field public static final MICRO_THUMBNAIL_TEMP_SUFFIX:Ljava/lang/String; = "Thumb"

.field public static final MINETYPE_PHOTO:Ljava/lang/String; = "image/*"

.field public static final MINETYPE_VIDEO:Ljava/lang/String; = "video/*"

.field public static final MIN_REMAIN_CAMERA:J = 0x32L

.field public static final MIN_REMAIN_VIDEO:J = 0x5L

.field public static final MMS_SIZE_DEFAULT:J = 0x46cd0L

.field public static final MMS_SIZE_MAX:J = 0x100000L

.field public static final MMS_SIZE_MIN:J = 0x2800L

.field public static final MP_COPY:I = 0x1

.field public static final MP_PUT:I = 0x2

.field public static final MP_YUV_CALLBACK:I = 0x0

.field public static final MUSICSERVICE_COMMAND:Ljava/lang/String; = "command"

.field public static final MUSICSERVICE_COMMAND_PAUSE:Ljava/lang/String; = "pause"

.field public static final MediaScapeIntent_ACTION_MEDIASCAPE_VIEW:Ljava/lang/String; = "com.sonyericsson.android.mediascape.Action.View"

.field public static final MediaScapeIntent_CATEGORY_DEFAULT:Ljava/lang/String; = "android.intent.category.DEFAULT"

.field public static final NO_SOUND_NAME:Ljava/lang/String; = "/system/media/audio/camera/sound0/no_sound.m4a"

.field public static final OPEN_CAMERA_RETRY_COUNT:I = 0x5

.field public static final OPEN_CAMERA_RETRY_INTERVAL:I = 0x1f4

.field public static final OPT_RAW_DATA_ALWAYS_NULL:Z = true

.field public static final OPT_TALLY_ALWAYS_OFF:Z = true

.field public static final PACKAGE_MAIN_CAMERA:Ljava/lang/String; = "com.sonyericsson.android.camera"

.field public static final PACKAGE_MEDIASCAPE:Ljava/lang/String; = "com.sonyericsson.android.mediascape"

.field public static final PACKAGE_VIDEOEDITOR:Ljava/lang/String; = "com.sonyericsson.videoedit"

.field public static final PACKAGE_YOUTUBE:Ljava/lang/String; = "com.google.android.youtube"

.field public static final PIXEL_DEPTH:F = 1.5f

.field public static final PREVIEW_HEIGHT_MIN:I = 0x1e0

.field public static final PREVIEW_WIDTH_MIN:I = 0x280

.field public static final QUALITY_MINI_THUMBNAIL:I = 0x46

.field public static final ROTATE_DEGREE_IN_PORTRAIT_VIEW:F = 90.0f

.field public static final SELF_TIMER_BLINK_TIME:I = 0x64

.field static final SELF_TIMER_INTERVALS:[I = null

.field static final SELF_TIMER_LEVELS:[I = null

.field public static final SELF_TIMER_TIME_10SECOND:I = 0x2710

.field public static final SELF_TIMER_TIME_2SECOND:I = 0x7d0

.field private static final SHARE_EXCLUDES:[Ljava/lang/String; = null

.field public static final SIZE_UNLIMITED:J = -0x1L

.field public static final SMILE_SCORE_HIGH:I = 0x46

.field public static final SMILE_SCORE_LOW:I = 0x28

.field public static final SMILE_SCORE_MID:I = 0x37

.field public static final SOUND_HOME:Ljava/lang/String; = "/system/media/audio/camera/"

.field static final SOUND_NAMES:[Ljava/lang/String; = null

.field static final SOUND_PATHS:[Ljava/lang/String; = null

.field static final SOUND_RESOURCES:[I = null

.field public static final SP_KEY_CAMERA_FRONT_NORMAL:I = 0xc8

.field public static final SP_KEY_CAMERA_MAIN_NORMAL:I = 0x64

.field public static final SP_KEY_CAMERA_MAIN_SCENE_RECOG:I = 0x65

.field public static final SP_KEY_CAMERA_MAIN_SMILE_SHUT:I = 0x66

.field public static final SP_KEY_VIDEO_FRONT_NORMAL:I = 0xd2

.field public static final SP_KEY_VIDEO_MAIN_NORMAL:I = 0x6e

.field public static final STORAGE_MARGIN_DURATION:J = 0x1L

.field public static final STORAGE_MARGIN_MAG:J = 0x2L

.field public static final STORE_VIDEO_THREAD_TIMEOUT:I = 0xbb8

.field public static final SWEEP_FRAME_RATE:I = 0x14

.field public static final SigCommonIntent_ACTION_SIGCOMMON_EDIT:Ljava/lang/String; = "com.sonyericsson.android.semcSigCommon.Action.Edit"

.field public static final SigCommonIntent_ACTION_SIGCOMMON_SHARE:Ljava/lang/String; = "com.sonyericsson.android.semcSigCommon.Action.Share"

.field public static final SigCommonIntent_ACTION_SIGCOMMON_VIEW:Ljava/lang/String; = "com.sonyericsson.android.semcSigCommon.Action.View"

.field public static final SigCommonIntent_CATEGORY_DEFAULT:Ljava/lang/String; = "android.intent.category.DEFAULT"

.field public static final SigCommonIntent_EXTRA_WHERE:Ljava/lang/String; = "EXTRA_WHERE"

.field private static final TAG:Ljava/lang/String; = "CameraConfig"

.field public static final THREAD_END_MAX_WAITING_TIME:I = 0x4e20

.field public static final THUMBNAIL_16vs9_HEIGHT:I = 0x1e0

.field public static final THUMBNAIL_16vs9_WIDTH:I = 0x356

.field public static final THUMBNAIL_4vs3_HEIGHT:I = 0x1e0

.field public static final THUMBNAIL_4vs3_WIDTH:I = 0x280

.field public static final THUMBNAIL_DELEY_START:I = 0x258

.field public static final THUMBNAIL_SWEEP_HEIGHT:I = 0x1e0

.field public static final THUMBNAIL_SWEEP_JPEG_QUALITY:I = 0x32

.field public static final THUMBNAIL_SWEEP_WIDTH:I = 0x356

.field public static final THUMBNAIL_SWEEP_WIDTH_EXIF:I = 0x280

.field public static final THUMBNAIL_VIDEO_16vs9_HEIGHT:I = 0xc0

.field public static final THUMBNAIL_VIDEO_16vs9_WIDTH:I = 0x140

.field public static final THUMBNAIL_VIDEO_4vs3_HEIGHT:I = 0xf0

.field public static final THUMBNAIL_VIDEO_4vs3_WIDTH:I = 0x140

.field public static final THUMB_MICRO_16vs9_HEIGHT:I = 0x36

.field public static final THUMB_MICRO_16vs9_WIDTH:I = 0x60

.field public static final THUMB_MICRO_4vs3_HEIGHT:I = 0x48

.field public static final THUMB_MICRO_4vs3_WIDTH:I = 0x60

.field public static final THUMB_MICRO_HEIGHT:I = 0x60

.field public static final THUMB_MICRO_WIDTH:I = 0x60

.field public static final TIMEOUT_GET_STATFS:I = 0xbb8

.field public static final TOUCH_EDGE:I = 0x10

.field public static final TOUCH_EDGE_HEIGHT:I = 0x1d0

.field public static final TOUCH_EDGE_WIDTH:I = 0x346

.field public static final UNIT_MIN_IN_HOUR:I = 0x3c

.field public static final UNIT_MSEC_IN_SEC:I = 0x3e8

.field public static final UNIT_SEC_IN_MIN:I = 0x3c

.field public static final URI_CONVERSATION_PROVIDER:Ljava/lang/String; = "content://com.sonyericsson.conversations/settings"

.field public static final URI_SETTINGS_PROVIDER:Ljava/lang/String; = "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.android.camera"

.field public static final VIDEO_AUDIO_BIT_RATE:I = 0xfa00

.field public static final VIDEO_AUDIO_BIT_RATE_MMS:I = 0x1388

.field public static final VIDEO_AUDIO_SAMPLE_RATE:I = 0x3e80

.field public static final VIDEO_AUDIO_SAMPLE_RATE_MMS:I = 0x1f40

.field public static final VIDEO_DEVICE_RELEASE_TIMEOUT:I = 0xbb8

.field public static final VIDEO_FRAME_RATE_24:J = 0x18L

.field public static final VIDEO_FRAME_RATE_30:J = 0x1eL

.field public static final VIDEO_FRAME_RATE_MMS:J = 0xfL

.field public static final VIDEO_MAX_SIZE:J = 0xffffffffL

.field public static final VIDEO_PROGRESS_BAR_UPDATE_INTERVAL:I = 0x64

.field public static final VIDEO_STOP_REC_INTERVAL:I = 0x3e8

.field public static final VideoEditorIntent_ACTION_VIDEOEDITOR_EDIT:Ljava/lang/String; = "com.sonyericsson.videoedit.EDIT"

.field public static final VideoEditorIntent_JOB_ID:Ljava/lang/String; = "com.sonyericsson.videoedit.VIDEO_EDIT_JOB_ID"

.field public static final WIDTH_2D_PORTRAIT:I = 0x5a0

.field public static final WIDTH_2MP:I = 0x660

.field public static final WIDTH_6MP:I = 0xcc0

.field public static final WIDTH_8MP:I = 0xcc0

.field public static final WIDTH_FULLHD:I = 0x780

.field public static final WIDTH_FWVGA:I = 0x360

.field public static final WIDTH_HD:I = 0x500

.field public static final WIDTH_PREVIEW_2MP:I = 0x280

.field public static final WIDTH_PREVIEW_6MP:I = 0x360

.field public static final WIDTH_PREVIEW_8MP:I = 0x280

.field public static final WIDTH_PREVIEW_FULLHD:I = 0x360

.field public static final WIDTH_PREVIEW_FWVGA:I = 0x360

.field public static final WIDTH_PREVIEW_HD:I = 0x500

.field public static final WIDTH_PREVIEW_HVGA:I = 0x1e0

.field public static final WIDTH_PREVIEW_QCIF:I = 0xb0

.field public static final WIDTH_PREVIEW_QVGA:I = 0x140

.field public static final WIDTH_PREVIEW_SWEEP:I = 0x640

.field public static final WIDTH_PREVIEW_SWEEP_VERTICAL:I = 0x500

.field public static final WIDTH_PREVIEW_VGA:I = 0x280

.field public static final WIDTH_QCIF:I = 0xb0

.field public static final WIDTH_QVGA:I = 0x140

.field public static final WIDTH_SWEEP_16_BY_9:I = 0x780

.field public static final WIDTH_SWEEP_STANDARD:I = 0x1330

.field public static final WIDTH_SWEEP_WIDE:I = 0x1bf0

.field public static final WIDTH_VGA:I = 0x280

.field public static final ZOOM_CONTINUE:I = 0x1

.field public static final ZOOM_MESSAGE_TIMEOUT:I = 0x9c4

.field public static final ZOOM_TOUCH:I = 0x8

.field private static final mColors:[[I

.field static sMicroThumbnailSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;",
            ">;"
        }
    .end annotation
.end field

.field public static final sMovieBpsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final sMovieFrameRateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final sMovieMinSizesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final sMovieSizesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final sPictureMaxSizesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static sPictureSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;",
            ">;"
        }
    .end annotation
.end field

.field public static final sPictureSizesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static sPreviewSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;",
            ">;"
        }
    .end annotation
.end field

.field static sThumbnailSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x140

    const/16 v8, 0x48

    const/16 v7, 0x280

    const/16 v6, 0x60

    const/16 v5, 0x1e0

    .line 204
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->EXIF_VAL_MAKER:Ljava/lang/String;

    .line 205
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->EXIF_VAL_MODEL:Ljava/lang/String;

    .line 371
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->SELF_TIMER_LEVELS:[I

    .line 372
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->SELF_TIMER_INTERVALS:[I

    .line 381
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->SELF_TIMER_INTERVALS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x3

    sput v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->AF_DELAY_AVERAGE_TIME:I

    .line 408
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/media/audio/camera/sound1/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/media/audio/camera/sound2/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/media/audio/camera/sound3/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/system/media/audio/camera/common/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_PATHS:[Ljava/lang/String;

    .line 418
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "af_success.m4a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "selftimer_2sec.m4a"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "selftimer_10sec.m4a"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "shutter.m4a"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "start_rec.m4a"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "stop_rec.m4a"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "error_sample.m4a"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_NAMES:[Ljava/lang/String;

    .line 432
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f06

    aput v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_RESOURCES:[I

    .line 483
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfig$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/CameraConfig$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizesMap:Ljava/util/HashMap;

    .line 509
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfig$2;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/CameraConfig$2;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureMaxSizesMap:Ljava/util/HashMap;

    .line 538
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfig$3;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/CameraConfig$3;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMovieBpsMap:Ljava/util/HashMap;

    .line 559
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfig$4;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/CameraConfig$4;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMovieSizesMap:Ljava/util/HashMap;

    .line 593
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfig$5;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/CameraConfig$5;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMovieMinSizesMap:Ljava/util/HashMap;

    .line 627
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfig$6;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/CameraConfig$6;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMovieFrameRateMap:Ljava/util/HashMap;

    .line 695
    const/4 v0, 0x5

    new-array v0, v0, [[I

    const/4 v1, 0x0

    const/16 v2, 0x14

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x14

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x14

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x14

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x14

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->mColors:[[I

    .line 938
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizeMap:Ljava/util/HashMap;

    .line 940
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizeMap:Ljava/util/HashMap;

    const-string v1, "EIGHT_MP"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0xcc0

    const/16 v4, 0x990

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizeMap:Ljava/util/HashMap;

    const-string v1, "SIX_MP"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0xcc0

    const/16 v4, 0x72c

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizeMap:Ljava/util/HashMap;

    const-string v1, "TWO_MP"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x660

    const/16 v4, 0x4c8

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizeMap:Ljava/util/HashMap;

    const-string v1, "FULL_HD"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x780

    const/16 v4, 0x438

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizeMap:Ljava/util/HashMap;

    const-string v1, "HD"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x500

    const/16 v4, 0x2d0

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizeMap:Ljava/util/HashMap;

    const-string v1, "FWVGA"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x360

    invoke-direct {v2, v3, v5}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizeMap:Ljava/util/HashMap;

    const-string v1, "VGA"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v7, v5}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizeMap:Ljava/util/HashMap;

    const-string v1, "QVGA"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0xf0

    invoke-direct {v2, v9, v3}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizeMap:Ljava/util/HashMap;

    const-string v1, "MMS"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0xb0

    const/16 v4, 0x90

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizeMap:Ljava/util/HashMap;

    const-string v1, "YouTube"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v7, v5}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizeMap:Ljava/util/HashMap;

    const-string v1, "Flickr"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v7, v5}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizeMap:Ljava/util/HashMap;

    const-string v1, "PANORAMA_3D_16_BY_9"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x780

    const/16 v4, 0x438

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizeMap:Ljava/util/HashMap;

    const-string v1, "PANORAMA_3D_STANDARD"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x1330

    const/16 v4, 0x438

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizeMap:Ljava/util/HashMap;

    const-string v1, "MULTI_ANGLE_16_BY_9"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x780

    const/16 v4, 0x438

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizeMap:Ljava/util/HashMap;

    const-string v1, "PANORAMA_2D_STANDARD"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x1330

    const/16 v4, 0x438

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPreviewSizeMap:Ljava/util/HashMap;

    .line 976
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPreviewSizeMap:Ljava/util/HashMap;

    const-string v1, "EIGHT_MP"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v7, v5}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPreviewSizeMap:Ljava/util/HashMap;

    const-string v1, "SIX_MP"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x360

    invoke-direct {v2, v3, v5}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPreviewSizeMap:Ljava/util/HashMap;

    const-string v1, "TWO_MP"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v7, v5}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPreviewSizeMap:Ljava/util/HashMap;

    const-string v1, "FULL_HD"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x360

    invoke-direct {v2, v3, v5}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPreviewSizeMap:Ljava/util/HashMap;

    const-string v1, "HD"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x500

    const/16 v4, 0x2d0

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPreviewSizeMap:Ljava/util/HashMap;

    const-string v1, "FWVGA"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x360

    invoke-direct {v2, v3, v5}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPreviewSizeMap:Ljava/util/HashMap;

    const-string v1, "VGA"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v7, v5}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPreviewSizeMap:Ljava/util/HashMap;

    const-string v1, "QVGA"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0xf0

    invoke-direct {v2, v9, v3}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPreviewSizeMap:Ljava/util/HashMap;

    const-string v1, "MMS"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0xb0

    const/16 v4, 0x90

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPreviewSizeMap:Ljava/util/HashMap;

    const-string v1, "YouTube"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v7, v5}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPreviewSizeMap:Ljava/util/HashMap;

    const-string v1, "Flickr"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v7, v5}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPreviewSizeMap:Ljava/util/HashMap;

    const-string v1, "PANORAMA_3D_16_BY_9"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x640

    const/16 v4, 0x4b0

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPreviewSizeMap:Ljava/util/HashMap;

    const-string v1, "PANORAMA_3D_STANDARD"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x640

    const/16 v4, 0x4b0

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPreviewSizeMap:Ljava/util/HashMap;

    const-string v1, "MULTI_ANGLE_16_BY_9"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x640

    const/16 v4, 0x4b0

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPreviewSizeMap:Ljava/util/HashMap;

    const-string v1, "PANORAMA_2D_STANDARD"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x640

    const/16 v4, 0x4b0

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sThumbnailSizeMap:Ljava/util/HashMap;

    .line 1023
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "EIGHT_MP"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v7, v5}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "SIX_MP"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x356

    invoke-direct {v2, v3, v5}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "TWO_MP"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v7, v5}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "FULL_HD"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x356

    invoke-direct {v2, v3, v5}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "HD"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0xc0

    invoke-direct {v2, v9, v3}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "FWVGA"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0xc0

    invoke-direct {v2, v9, v3}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "VGA"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0xf0

    invoke-direct {v2, v9, v3}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "QVGA"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0xf0

    invoke-direct {v2, v9, v3}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "MMS"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0xf0

    invoke-direct {v2, v9, v3}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "YouTube"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0xf0

    invoke-direct {v2, v9, v3}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "Flickr"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0xf0

    invoke-direct {v2, v9, v3}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMicroThumbnailSizeMap:Ljava/util/HashMap;

    .line 1051
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMicroThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "EIGHT_MP"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v6, v8}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMicroThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "SIX_MP"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x36

    invoke-direct {v2, v6, v3}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMicroThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "TWO_MP"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v6, v8}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMicroThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "FULL_HD"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    const/16 v3, 0x36

    invoke-direct {v2, v6, v3}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMicroThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "HD"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v6, v8}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMicroThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "FWVGA"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v6, v8}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMicroThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "VGA"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v6, v8}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMicroThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "QVGA"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v6, v8}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMicroThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "MMS"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v6, v8}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMicroThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "YouTube"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v6, v8}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMicroThumbnailSizeMap:Ljava/util/HashMap;

    const-string v1, "Flickr"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    invoke-direct {v2, v6, v8}, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->IMAGE_FILLER_Y:[B

    .line 1230
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->IMAGE_FILLER_Y_DARK:[B

    .line 1253
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->IMAGE_FILLER_UV:[B

    .line 1292
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.apps.uploader"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->SHARE_EXCLUDES:[Ljava/lang/String;

    return-void

    .line 371
    nop

    :array_0
    .array-data 0x4
        0xd0t 0x7t 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
    .end array-data

    .line 372
    :array_1
    .array-data 0x4
        0xfat 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t
    .end array-data

    .line 695
    :array_2
    .array-data 0x4
        0xfft 0xdet 0xb6t 0xfft
        0xfdt 0xdct 0xb4t 0xfft
        0xfbt 0xdat 0xb2t 0xfft
        0xf9t 0xd8t 0xb0t 0xfft
        0xf7t 0xd6t 0xaet 0xfft
        0xf5t 0xd4t 0xact 0xfft
        0xf3t 0xd2t 0xaat 0xfft
        0xf1t 0xd0t 0xa8t 0xfft
        0xeft 0xcet 0xa6t 0xfft
        0xedt 0xcct 0xa4t 0xfft
        0xebt 0xcat 0xa2t 0xfft
        0xeat 0xc9t 0xa1t 0xfft
        0xe9t 0xc8t 0xa0t 0xfft
        0xe8t 0xc7t 0x9ft 0xfft
        0xe7t 0xc6t 0x9et 0xfft
        0xe6t 0xc5t 0x9dt 0xfft
        0xe5t 0xc4t 0x9ct 0xfft
        0xe4t 0xc3t 0x9bt 0xfft
        0xe3t 0xc2t 0x9at 0xfft
        0xe2t 0xc1t 0x99t 0xfft
    .end array-data

    :array_3
    .array-data 0x4
        0xe1t 0xc0t 0x98t 0xfft
        0xe0t 0xbft 0x97t 0xfft
        0xdft 0xbet 0x96t 0xfft
        0xdet 0xbdt 0x95t 0xfft
        0xddt 0xbct 0x94t 0xfft
        0xdct 0xbbt 0x93t 0xfft
        0xdbt 0xbat 0x92t 0xfft
        0xdat 0xb9t 0x91t 0xfft
        0xd9t 0xb8t 0x90t 0xfft
        0xd8t 0xb7t 0x8ft 0xfft
        0xd7t 0xb6t 0x8et 0xfft
        0xd6t 0xb5t 0x8dt 0xfft
        0xd5t 0xb4t 0x8ct 0xfft
        0xd4t 0xb3t 0x8bt 0xfft
        0xd3t 0xb2t 0x8at 0xfft
        0xd2t 0xb1t 0x89t 0xfft
        0xd1t 0xb0t 0x88t 0xfft
        0xd0t 0xaft 0x87t 0xfft
        0xcft 0xaet 0x86t 0xfft
        0xcet 0xadt 0x85t 0xfft
    .end array-data

    :array_4
    .array-data 0x4
        0xcdt 0xact 0x84t 0xfft
        0xcct 0xabt 0x83t 0xfft
        0xcbt 0xaat 0x82t 0xfft
        0xcat 0xa9t 0x81t 0xfft
        0xc9t 0xa8t 0x80t 0xfft
        0xc8t 0xa7t 0x7ft 0xfft
        0xc7t 0xa6t 0x7et 0xfft
        0xc6t 0xa5t 0x7dt 0xfft
        0xc5t 0xa4t 0x7ct 0xfft
        0xc4t 0xa3t 0x7bt 0xfft
        0xc3t 0xa2t 0x7at 0xfft
        0xc2t 0xa1t 0x79t 0xfft
        0xc1t 0xa0t 0x78t 0xfft
        0xc0t 0x9ft 0x77t 0xfft
        0xbft 0x9et 0x76t 0xfft
        0xbet 0x9dt 0x75t 0xfft
        0xbdt 0x9ct 0x74t 0xfft
        0xbct 0x9bt 0x73t 0xfft
        0xbbt 0x9at 0x72t 0xfft
        0xbat 0x99t 0x71t 0xfft
    .end array-data

    :array_5
    .array-data 0x4
        0xb9t 0x98t 0x70t 0xfft
        0xb8t 0x97t 0x6ft 0xfft
        0xb7t 0x96t 0x6et 0xfft
        0xb6t 0x95t 0x6dt 0xfft
        0xb5t 0x94t 0x6ct 0xfft
        0xb4t 0x93t 0x6bt 0xfft
        0xb3t 0x92t 0x6at 0xfft
        0xb2t 0x91t 0x69t 0xfft
        0xb1t 0x90t 0x68t 0xfft
        0xb0t 0x8ft 0x67t 0xfft
        0xaft 0x8et 0x66t 0xfft
        0xaet 0x8dt 0x65t 0xfft
        0xadt 0x8ct 0x64t 0xfft
        0xact 0x8bt 0x63t 0xfft
        0xabt 0x8at 0x62t 0xfft
        0xaat 0x89t 0x61t 0xfft
        0xa9t 0x88t 0x60t 0xfft
        0xa8t 0x87t 0x5ft 0xfft
        0xa7t 0x86t 0x5et 0xfft
        0xa6t 0x85t 0x5dt 0xfft
    .end array-data

    :array_6
    .array-data 0x4
        0xa5t 0x84t 0x5ct 0xfft
        0xa4t 0x83t 0x5bt 0xfft
        0xa3t 0x82t 0x5at 0xfft
        0xa2t 0x81t 0x59t 0xfft
        0xa1t 0x80t 0x58t 0xfft
        0xa0t 0x7ft 0x57t 0xfft
        0x9ft 0x7et 0x56t 0xfft
        0x9et 0x7dt 0x55t 0xfft
        0x9dt 0x7ct 0x54t 0xfft
        0x9ct 0x7bt 0x53t 0xfft
        0x9at 0x79t 0x51t 0xfft
        0x9et 0x78t 0x4ft 0xfft
        0xa2t 0x77t 0x4dt 0xfft
        0xa6t 0x76t 0x4bt 0xfft
        0xaat 0x75t 0x49t 0xfft
        0xaet 0x74t 0x47t 0xfft
        0xb2t 0x73t 0x45t 0xfft
        0xb6t 0x72t 0x43t 0xfft
        0xbat 0x71t 0x41t 0xfft
        0xc1t 0x6ct 0x3ft 0xfft
    .end array-data

    .line 1207
    :array_7
    .array-data 0x1
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
        0x26t
    .end array-data

    .line 1230
    :array_8
    .array-data 0x1
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
    .end array-data

    .line 1253
    :array_9
    .array-data 0x1
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
        0x80t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    return-void
.end method

.method public static getAfPos(II)Landroid/graphics/Rect;
    .locals 7
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    const/16 v6, 0x140

    const/16 v5, 0x111

    const/16 v3, 0x1e0

    const/16 v4, 0x11d

    const/high16 v2, 0x4206

    .line 654
    const/16 v1, 0x280

    if-ne p0, v1, :cond_0

    if-ne p1, v3, :cond_0

    .line 655
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    rsub-int v1, v1, 0xf0

    const/16 v2, 0x163

    invoke-direct {v0, v4, v1, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 689
    .local v0, rect:Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .line 660
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_0
    if-ne p0, v6, :cond_1

    const/16 v1, 0xf0

    if-ne p1, v1, :cond_1

    .line 661
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    rsub-int v1, v1, 0xf0

    const/16 v2, 0x163

    invoke-direct {v0, v4, v1, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0       #rect:Landroid/graphics/Rect;
    goto :goto_0

    .line 666
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_1
    if-ne p0, v3, :cond_2

    if-ne p1, v6, :cond_2

    .line 667
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0xcd

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    rsub-int v2, v2, 0xa0

    const/16 v3, 0x113

    const/16 v4, 0xc1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0       #rect:Landroid/graphics/Rect;
    goto :goto_0

    .line 672
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_2
    const/16 v1, 0x320

    if-ne p0, v1, :cond_3

    if-ne p1, v3, :cond_3

    .line 673
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x164

    const/16 v2, 0xc6

    const/16 v3, 0x1bc

    const/16 v4, 0x11a

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0       #rect:Landroid/graphics/Rect;
    goto :goto_0

    .line 679
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, 0x423e

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    rsub-int v1, v1, 0x1b0

    const/high16 v2, 0x4236

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    rsub-int v2, v2, 0xf0

    const/16 v3, 0x1df

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0       #rect:Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public static getColors()[[I
    .locals 1

    .prologue
    .line 725
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->mColors:[[I

    if-eqz v0, :cond_0

    .line 726
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->mColors:[[I

    invoke-virtual {v0}, [[I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 728
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, [[I

    goto :goto_0
.end method

.method public static getMicroThumbnailHeight(Ljava/lang/String;)I
    .locals 4
    .parameter "res"

    .prologue
    .line 1195
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMicroThumbnailSizeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    .line 1196
    .local v0, size:Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;
    if-nez v0, :cond_0

    .line 1197
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No value found. res is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1199
    :cond_0
    iget v1, v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;->mHeight:I

    return v1
.end method

.method public static getMicroThumbnailWidth(Ljava/lang/String;)I
    .locals 4
    .parameter "res"

    .prologue
    .line 1179
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMicroThumbnailSizeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    .line 1180
    .local v0, size:Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;
    if-nez v0, :cond_0

    .line 1181
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No value found. res is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1183
    :cond_0
    iget v1, v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;->mWidth:I

    return v1
.end method

.method public static getPictureHeight(Ljava/lang/String;)I
    .locals 3
    .parameter "res"

    .prologue
    .line 1099
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    .line 1100
    .local v0, size:Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;
    if-nez v0, :cond_0

    .line 1101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No value found."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1103
    :cond_0
    iget v1, v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;->mHeight:I

    return v1
.end method

.method public static getPictureWidth(Ljava/lang/String;)I
    .locals 3
    .parameter "res"

    .prologue
    .line 1083
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    .line 1084
    .local v0, size:Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;
    if-nez v0, :cond_0

    .line 1085
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No value found."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1087
    :cond_0
    iget v1, v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;->mWidth:I

    return v1
.end method

.method public static getPreviewHeight(Ljava/lang/String;)I
    .locals 3
    .parameter "res"

    .prologue
    .line 1131
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPreviewSizeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    .line 1132
    .local v0, size:Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;
    if-nez v0, :cond_0

    .line 1133
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No value found."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1135
    :cond_0
    iget v1, v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;->mHeight:I

    return v1
.end method

.method public static getPreviewWidth(Ljava/lang/String;)I
    .locals 3
    .parameter "res"

    .prologue
    .line 1115
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPreviewSizeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    .line 1116
    .local v0, size:Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;
    if-nez v0, :cond_0

    .line 1117
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No value found."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1119
    :cond_0
    iget v1, v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;->mWidth:I

    return v1
.end method

.method public static final getShareExcludes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1297
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->SHARE_EXCLUDES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getThumbnailHeight(Ljava/lang/String;)I
    .locals 4
    .parameter "res"

    .prologue
    .line 1163
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig;->sThumbnailSizeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    .line 1164
    .local v0, size:Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;
    if-nez v0, :cond_0

    .line 1165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No value found. res is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1167
    :cond_0
    iget v1, v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;->mHeight:I

    return v1
.end method

.method public static getThumbnailWidth(Ljava/lang/String;)I
    .locals 4
    .parameter "res"

    .prologue
    .line 1147
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig;->sThumbnailSizeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;

    .line 1148
    .local v0, size:Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;
    if-nez v0, :cond_0

    .line 1149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No value found. res is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1151
    :cond_0
    iget v1, v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;->mWidth:I

    return v1
.end method

.method public static removeShareExcludes(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter
    .parameter "excludeList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1309
    .local p0, srcList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1312
    .local v1, dst:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1316
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 1317
    .local v5, packagename:Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1318
    invoke-interface {v1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1316
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1324
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #packagename:Ljava/lang/String;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    return-object v1
.end method

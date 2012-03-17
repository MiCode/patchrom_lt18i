.class public Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;
.super Ljava/lang/Object;
.source "CameraConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsDependency"
.end annotation


# static fields
.field public static final COLUMN_SCENE_AUTO:I = 0x0

.field public static final COLUMN_SCENE_INFINITY:I = 0x1

.field public static final COLUMN_SCENE_MACRO:I = 0x2

.field public static final COLUMN_SCENE_OTHER:I = 0x3

.field static final sCameraCommonSettings:[Z

.field static final sCameraPreferences:[Z

.field static final sCameraSceneSettings:[Z

.field public static final sSelectableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[[Z>;"
        }
    .end annotation
.end field

.field public static final sSelectableMapFront:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[[Z>;"
        }
    .end annotation
.end field

.field static final sSelectableNormal:[[Z

.field static final sSelectableNormalFront:[[Z

.field static final sSelectableSceneRecognition:[[Z

.field static final sSelectableSmile:[[Z

.field static final sSelectableVideo:[[Z

.field static final sSelectableVideoFront:[[Z

.field private static final sSharedSettings:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field static final sVideoCommonSettings:[Z

.field static final sVideoPreferences:[Z

.field static final sVideoSceneSettings:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x11

    const/4 v3, 0x4

    .line 3306
    const/16 v0, 0x14

    new-array v0, v0, [[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v3, [Z

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [Z

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [Z

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Z

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Z

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Z

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [Z

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [Z

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    fill-array-data v1, :array_11

    aput-object v1, v0, v4

    const/16 v1, 0x12

    new-array v2, v3, [Z

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [Z

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableNormal:[[Z

    .line 3329
    const/16 v0, 0x14

    new-array v0, v0, [[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_14

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    fill-array-data v1, :array_15

    aput-object v1, v0, v6

    new-array v1, v3, [Z

    fill-array-data v1, :array_16

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [Z

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    fill-array-data v1, :array_18

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [Z

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Z

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Z

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Z

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [Z

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [Z

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    fill-array-data v1, :array_25

    aput-object v1, v0, v4

    const/16 v1, 0x12

    new-array v2, v3, [Z

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [Z

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableSceneRecognition:[[Z

    .line 3352
    const/16 v0, 0x14

    new-array v0, v0, [[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_28

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    fill-array-data v1, :array_29

    aput-object v1, v0, v6

    new-array v1, v3, [Z

    fill-array-data v1, :array_2a

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [Z

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    fill-array-data v1, :array_2c

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [Z

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Z

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Z

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Z

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [Z

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [Z

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    fill-array-data v1, :array_39

    aput-object v1, v0, v4

    const/16 v1, 0x12

    new-array v2, v3, [Z

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [Z

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableSmile:[[Z

    .line 3380
    new-array v0, v4, [[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_3c

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    fill-array-data v1, :array_3d

    aput-object v1, v0, v6

    new-array v1, v3, [Z

    fill-array-data v1, :array_3e

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [Z

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    fill-array-data v1, :array_40

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [Z

    fill-array-data v2, :array_41

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    fill-array-data v2, :array_43

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Z

    fill-array-data v2, :array_44

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    fill-array-data v2, :array_45

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    fill-array-data v2, :array_46

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    fill-array-data v2, :array_47

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Z

    fill-array-data v2, :array_48

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Z

    fill-array-data v2, :array_49

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    fill-array-data v2, :array_4a

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [Z

    fill-array-data v2, :array_4b

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [Z

    fill-array-data v2, :array_4c

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableVideo:[[Z

    .line 3400
    const/16 v0, 0x14

    new-array v0, v0, [[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_4d

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    fill-array-data v1, :array_4e

    aput-object v1, v0, v6

    new-array v1, v3, [Z

    fill-array-data v1, :array_4f

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [Z

    fill-array-data v2, :array_50

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    fill-array-data v1, :array_51

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [Z

    fill-array-data v2, :array_52

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    fill-array-data v2, :array_53

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    fill-array-data v2, :array_54

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Z

    fill-array-data v2, :array_55

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    fill-array-data v2, :array_56

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    fill-array-data v2, :array_57

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    fill-array-data v2, :array_58

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Z

    fill-array-data v2, :array_59

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Z

    fill-array-data v2, :array_5a

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    fill-array-data v2, :array_5b

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [Z

    fill-array-data v2, :array_5c

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [Z

    fill-array-data v2, :array_5d

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    fill-array-data v1, :array_5e

    aput-object v1, v0, v4

    const/16 v1, 0x12

    new-array v2, v3, [Z

    fill-array-data v2, :array_5f

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [Z

    fill-array-data v2, :array_60

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableNormalFront:[[Z

    .line 3423
    new-array v0, v4, [[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_61

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    fill-array-data v1, :array_62

    aput-object v1, v0, v6

    new-array v1, v3, [Z

    fill-array-data v1, :array_63

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [Z

    fill-array-data v2, :array_64

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    fill-array-data v1, :array_65

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [Z

    fill-array-data v2, :array_66

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    fill-array-data v2, :array_67

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    fill-array-data v2, :array_68

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Z

    fill-array-data v2, :array_69

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    fill-array-data v2, :array_6a

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    fill-array-data v2, :array_6b

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    fill-array-data v2, :array_6c

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Z

    fill-array-data v2, :array_6d

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Z

    fill-array-data v2, :array_6e

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    fill-array-data v2, :array_6f

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [Z

    fill-array-data v2, :array_70

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [Z

    fill-array-data v2, :array_71

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableVideoFront:[[Z

    .line 3443
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableMap:Ljava/util/HashMap;

    .line 3446
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableMap:Ljava/util/HashMap;

    const-string v1, "NORMAL"

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableNormal:[[Z

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3447
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableMap:Ljava/util/HashMap;

    const-string v1, "SCENE_RECOGNITION"

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableSceneRecognition:[[Z

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3448
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableMap:Ljava/util/HashMap;

    const-string v1, "SMILE_DETECTION"

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableSmile:[[Z

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3449
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableMap:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableVideo:[[Z

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableMapFront:Ljava/util/HashMap;

    .line 3455
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableMapFront:Ljava/util/HashMap;

    const-string v1, "NORMAL"

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableNormalFront:[[Z

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3456
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableMapFront:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableVideoFront:[[Z

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3471
    const/16 v0, 0x15

    new-array v0, v0, [Z

    fill-array-data v0, :array_72

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sCameraPreferences:[Z

    .line 3498
    new-array v0, v4, [Z

    fill-array-data v0, :array_73

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sVideoPreferences:[Z

    .line 3517
    const/16 v0, 0x14

    new-array v0, v0, [Z

    fill-array-data v0, :array_74

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sCameraCommonSettings:[Z

    .line 3540
    new-array v0, v4, [Z

    fill-array-data v0, :array_75

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sVideoCommonSettings:[Z

    .line 3560
    const/16 v0, 0x14

    new-array v0, v0, [Z

    fill-array-data v0, :array_76

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sCameraSceneSettings:[Z

    .line 3583
    new-array v0, v4, [Z

    fill-array-data v0, :array_77

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sVideoSceneSettings:[Z

    .line 3603
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG_DIALOG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSharedSettings:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    return-void

    .line 3306
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_2
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_3
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_4
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_5
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_6
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_7
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_8
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_9
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_a
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_b
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_c
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_d
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_e
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_f
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_10
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_11
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_12
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_13
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 3329
    :array_14
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_15
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_16
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_17
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_18
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_19
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1a
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_1b
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1c
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1d
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1e
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_1f
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_20
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_21
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_22
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_23
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_24
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_25
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_26
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_27
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 3352
    :array_28
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_29
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_2a
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2b
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2c
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2d
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2e
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2f
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_30
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_31
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_32
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_33
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_34
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_35
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_36
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_37
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_38
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_39
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_3a
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_3b
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 3380
    :array_3c
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3d
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_3e
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_3f
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_40
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_41
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_42
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_43
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_44
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_45
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_46
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_47
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_48
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_49
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_4a
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_4b
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_4c
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 3400
    :array_4d
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4e
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4f
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_50
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_51
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_52
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_53
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_54
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_55
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_56
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_57
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_58
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_59
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_5a
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_5b
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_5c
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_5d
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_5e
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_5f
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_60
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 3423
    :array_61
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_62
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_63
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_64
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_65
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_66
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_67
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_68
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_69
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_6a
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_6b
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_6c
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_6d
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_6e
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_6f
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_70
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_71
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 3471
    :array_72
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 3498
    nop

    :array_73
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 3517
    nop

    :array_74
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    .line 3540
    :array_75
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 3560
    nop

    :array_76
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 3583
    :array_77
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    .locals 1

    .prologue
    .line 3263
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSharedSettings:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    return-object v0
.end method

.method public static getColumn(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 3276
    instance-of v3, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v3, :cond_5

    .line 3277
    const-string v3, "auto"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3296
    :cond_0
    :goto_0
    return v0

    .line 3279
    :cond_1
    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    .line 3283
    goto :goto_0

    .line 3284
    :cond_3
    const-string v0, "document"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3285
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 3287
    goto :goto_0

    .line 3290
    :cond_5
    const-string v3, "auto"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3292
    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    .line 3294
    goto :goto_0

    :cond_6
    move v0, v1

    .line 3296
    goto :goto_0
.end method

.method public static getSelectableMap(Ljava/lang/Object;)[[Z
    .locals 1
    .parameter "key"

    .prologue
    .line 3460
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    return-object v0
.end method

.method public static getSelectableMapFront(Ljava/lang/Object;)[[Z
    .locals 1
    .parameter "key"

    .prologue
    .line 3464
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sSelectableMapFront:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    return-object v0
.end method

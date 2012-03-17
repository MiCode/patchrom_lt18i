.class public final enum Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;
.super Ljava/lang/Enum;
.source "CapturingModeSelectorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CapturingModeId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

.field public static final enum SEMCCAMERA_CAMERA_FASTCAPTURING:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

.field public static final enum SEMCCAMERA_CAMERA_FRONT:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

.field public static final enum SEMCCAMERA_CAMERA_NORMAL:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

.field public static final enum SEMCCAMERA_CAMERA_SCENERECOGNITION:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

.field public static final enum SEMCCAMERA_VIDEO_FRONT:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

.field public static final enum SEMCCAMERA_VIDEO_MAIN:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

.field public static final enum THREEDCAMERA_3DPANPRAMA:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

.field public static final enum THREEDCAMERA_SWEEPMULTI:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

.field public static final enum THREEDCAMERA_SWEEPPANPRAMA:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    const-string v1, "SEMCCAMERA_CAMERA_FASTCAPTURING"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_CAMERA_FASTCAPTURING:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    const-string v1, "SEMCCAMERA_CAMERA_NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_CAMERA_NORMAL:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    .line 41
    new-instance v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    const-string v1, "SEMCCAMERA_CAMERA_SCENERECOGNITION"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_CAMERA_SCENERECOGNITION:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    const-string v1, "SEMCCAMERA_CAMERA_FRONT"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_CAMERA_FRONT:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    const-string v1, "SEMCCAMERA_VIDEO_MAIN"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_VIDEO_MAIN:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    .line 44
    new-instance v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    const-string v1, "SEMCCAMERA_VIDEO_FRONT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_VIDEO_FRONT:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    const-string v1, "THREEDCAMERA_3DPANPRAMA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->THREEDCAMERA_3DPANPRAMA:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    const-string v1, "THREEDCAMERA_SWEEPPANPRAMA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->THREEDCAMERA_SWEEPPANPRAMA:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    const-string v1, "THREEDCAMERA_SWEEPMULTI"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->THREEDCAMERA_SWEEPMULTI:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    .line 38
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    sget-object v1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_CAMERA_FASTCAPTURING:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_CAMERA_NORMAL:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_CAMERA_SCENERECOGNITION:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_CAMERA_FRONT:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_VIDEO_MAIN:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_VIDEO_FRONT:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->THREEDCAMERA_3DPANPRAMA:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->THREEDCAMERA_SWEEPPANPRAMA:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->THREEDCAMERA_SWEEPMULTI:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->$VALUES:[Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;
    .locals 1
    .parameter "name"

    .prologue
    .line 38
    const-class v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->$VALUES:[Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    return-object v0
.end method

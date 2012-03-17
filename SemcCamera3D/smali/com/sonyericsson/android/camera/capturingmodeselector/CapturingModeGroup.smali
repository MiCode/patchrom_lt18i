.class public Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;
.super Ljava/lang/Object;
.source "CapturingModeGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup$1;,
        Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup$OnModeGroupDataChangeListner;
    }
.end annotation


# static fields
.field private static final SEMCCAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.android.camera"

.field private static final TAG:Ljava/lang/String; = "CapturingModeSelectorListDataController"

.field private static final THREEDCAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.android.camera3d"


# instance fields
.field private mCameraModeAttrsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentModeAttrs:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

.field private mCurrentModeAttrsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentVisibleFlag:I

.field private mIsFrontSupprt:Z

.field private mListners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup$OnModeGroupDataChangeListner;",
            ">;"
        }
    .end annotation
.end field

.field private mModeAttrsListList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUnableModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoModeAttrsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "isFrontSupprt"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p3, unableModeList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCameraModeAttrsList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mVideoModeAttrsList:Ljava/util/ArrayList;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mIsFrontSupprt:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mUnableModeList:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mListners:Ljava/util/ArrayList;

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mContext:Landroid/content/Context;

    .line 76
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mIsFrontSupprt:Z

    .line 77
    iput-object p3, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mUnableModeList:Ljava/util/List;

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->init()V

    .line 79
    return-void
.end method

.method private createDefault3DCameraModeAttrsList()V
    .locals 10

    .prologue
    .line 182
    const-string v2, "com.sonyericsson.android.camera3d"

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/util/CommonUtility;->isPackageExist(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    .line 185
    .local v9, is3DCameraExist:Z
    if-nez v9, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    sget-object v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->THREEDCAMERA_3DPANPRAMA:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->isEnableMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    new-instance v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    sget-object v1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->THREEDCAMERA_3DPANPRAMA:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    sget-object v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;->Camera:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    const v3, 0x7f02003e

    const v4, 0x7f02003f

    const v5, 0x7f0c00e7

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;-><init>(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;IIIIZ)V

    .line 200
    .local v0, threeD:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCameraModeAttrsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v0           #threeD:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    :cond_2
    sget-object v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->THREEDCAMERA_SWEEPMULTI:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->isEnableMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 221
    :cond_3
    sget-object v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->THREEDCAMERA_SWEEPPANPRAMA:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->isEnableMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    new-instance v1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    sget-object v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->THREEDCAMERA_SWEEPPANPRAMA:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    sget-object v3, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;->Camera:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    const v4, 0x7f020048

    const v5, 0x7f020049

    const v6, 0x7f0c00e9

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;-><init>(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;IIIIZ)V

    .line 231
    .local v1, sweepPanorama:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCameraModeAttrsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private createDefaultCameraModeAttrsList()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCameraModeAttrsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->createDefaultSemcCameraModeAttrsList()V

    .line 111
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->createDefault3DCameraModeAttrsList()V

    .line 112
    return-void
.end method

.method private createDefaultSemcCameraModeAttrsList()V
    .locals 12

    .prologue
    .line 116
    const-string v4, "com.sonyericsson.android.camera"

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera/capturingmodeselector/util/CommonUtility;->isPackageExist(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v11

    .line 119
    .local v11, isSemcCameraExist:Z
    if-nez v11, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    sget-object v4, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_CAMERA_FASTCAPTURING:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->isEnableMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    new-instance v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    sget-object v1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_CAMERA_FASTCAPTURING:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    sget-object v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;->Camera:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    const v3, 0x7f020044

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;-><init>(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;IIIIZ)V

    .line 134
    .local v0, fast:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCameraModeAttrsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v0           #fast:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    :cond_2
    sget-object v4, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_CAMERA_SCENERECOGNITION:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->isEnableMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 139
    new-instance v1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    sget-object v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_CAMERA_SCENERECOGNITION:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    sget-object v3, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;->Camera:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    const v4, 0x7f020044

    const v5, 0x7f020045

    const v6, 0x7f0c00e2

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;-><init>(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;IIIIZ)V

    .line 148
    .local v1, scene:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCameraModeAttrsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v1           #scene:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    :cond_3
    sget-object v4, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_CAMERA_NORMAL:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->isEnableMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 152
    new-instance v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    sget-object v3, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_CAMERA_NORMAL:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    sget-object v4, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;->Camera:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    const v5, 0x7f020042

    const v6, 0x7f020043

    const v7, 0x7f0c00e3

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;-><init>(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;IIIIZ)V

    .line 161
    .local v2, normal:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCameraModeAttrsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v2           #normal:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    :cond_4
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mIsFrontSupprt:Z

    if-eqz v4, :cond_0

    .line 165
    sget-object v4, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_CAMERA_FRONT:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->isEnableMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    new-instance v3, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    sget-object v4, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_CAMERA_FRONT:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    sget-object v5, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;->Camera:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    const v6, 0x7f020040

    const v7, 0x7f020041

    const v8, 0x7f0c00e4

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;-><init>(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;IIIIZ)V

    .line 175
    .local v3, front:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCameraModeAttrsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private createDefaultVideoModeAttrsList()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mVideoModeAttrsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 271
    return-void
.end method

.method private getCapturingMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;Ljava/util/ArrayList;)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    .locals 4
    .parameter "modeId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;",
            ">;)",
            "Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;"
        }
    .end annotation

    .prologue
    .line 342
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;>;"
    const/4 v2, 0x0

    .line 343
    .local v2, result:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    if-eqz p1, :cond_1

    .line 344
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    .line 345
    .local v1, modeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->getModeId()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    move-object v2, v1

    .line 354
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #modeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    :cond_1
    return-object v2
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mModeAttrsListList:Ljava/util/ArrayList;

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mModeAttrsListList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCameraModeAttrsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mModeAttrsListList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mVideoModeAttrsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->createDefaultCameraModeAttrsList()V

    .line 100
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->createDefaultVideoModeAttrsList()V

    .line 101
    return-void
.end method

.method private isEnableMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)Z
    .locals 2
    .parameter "modeId"

    .prologue
    .line 86
    const/4 v0, 0x1

    .line 87
    .local v0, result:Z
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mUnableModeList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mUnableModeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setModeList(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;)V
    .locals 3
    .parameter "modeAttr"

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;>;"
    sget-object v1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup$1;->$SwitchMap$com$sonyericsson$android$camera$capturingmodeselector$CapturingModeAttributes$Type:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->getType()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 324
    :goto_0
    iput-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentModeAttrsList:Ljava/util/ArrayList;

    .line 325
    return-void

    .line 315
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCameraModeAttrsList:Ljava/util/ArrayList;

    .line 316
    goto :goto_0

    .line 318
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mVideoModeAttrsList:Ljava/util/ArrayList;

    .line 319
    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCapturingMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    .locals 4
    .parameter "modeId"

    .prologue
    .line 328
    const/4 v2, 0x0

    .line 330
    .local v2, result:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mModeAttrsListList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 331
    .local v1, modeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;>;"
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->getCapturingMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;Ljava/util/ArrayList;)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    move-result-object v2

    .line 332
    if-eqz v2, :cond_0

    .line 336
    .end local v1           #modeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;>;"
    :cond_1
    return-object v2
.end method

.method public getCount(Z)I
    .locals 4
    .parameter "notShowUnableMode"

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, count:I
    iget-object v3, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentModeAttrsList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 372
    iget-object v3, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentModeAttrsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    .line 373
    .local v2, modeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    if-eqz v2, :cond_0

    .line 374
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->isAlwaysInvisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 378
    if-eqz p1, :cond_1

    .line 379
    iget v3, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentVisibleFlag:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->isEnable(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 383
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #modeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    :cond_2
    return v0
.end method

.method public getCurrentModeAttributes()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentModeAttrs:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    return-object v0
.end method

.method public getCurrentModePosition(Z)I
    .locals 1
    .parameter "notShowUnableMode"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentModeAttrs:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->getModePosition(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;Z)I

    move-result v0

    return v0
.end method

.method public getCurrentVisibleFlag()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentVisibleFlag:I

    return v0
.end method

.method public getModeAttributes(IZ)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    .locals 5
    .parameter "position"
    .parameter "notShowUnableMode"

    .prologue
    .line 394
    const/4 v2, 0x0

    .line 395
    .local v2, modeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentModeAttrsList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, count:I
    iget-object v4, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentModeAttrsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    .line 398
    .local v3, temp:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    if-eqz v3, :cond_0

    .line 399
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->isAlwaysInvisible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 403
    if-eqz p2, :cond_1

    .line 404
    iget v4, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentVisibleFlag:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->isEnable(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 409
    :cond_1
    if-ne v0, p1, :cond_3

    .line 410
    move-object v2, v3

    .line 418
    .end local v0           #count:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #temp:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    :cond_2
    return-object v2

    .line 413
    .restart local v0       #count:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #temp:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getModePosition(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;Z)I
    .locals 6
    .parameter "modeAttr"
    .parameter "notShowUnableMode"

    .prologue
    .line 425
    const/4 v1, -0x1

    .line 426
    .local v1, result:I
    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentModeAttrsList:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 427
    const/4 v3, 0x0

    .line 428
    .local v3, tempresult:I
    iget-object v4, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentModeAttrsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    .line 429
    .local v2, temp:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    if-eqz v2, :cond_0

    .line 433
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->isAlwaysInvisible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 437
    if-eqz p2, :cond_1

    .line 438
    iget v4, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentVisibleFlag:I

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->isEnable(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 442
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->getModeId()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->getModeId()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 443
    move v1, v3

    .line 445
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 449
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #temp:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    .end local v3           #tempresult:I
    :cond_3
    return v1
.end method

.method public listDataChanged()V
    .locals 3

    .prologue
    .line 469
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mListners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup$OnModeGroupDataChangeListner;

    .line 470
    .local v1, listener:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup$OnModeGroupDataChangeListner;
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->listDataChanged(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup$OnModeGroupDataChangeListner;)V

    goto :goto_0

    .line 472
    .end local v1           #listener:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup$OnModeGroupDataChangeListner;
    :cond_0
    return-void
.end method

.method public listDataChanged(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup$OnModeGroupDataChangeListner;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 475
    if-eqz p1, :cond_0

    .line 476
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup$OnModeGroupDataChangeListner;->onModeGroupDataChanged()V

    .line 478
    :cond_0
    return-void
.end method

.method public listDataUpdated()V
    .locals 3

    .prologue
    .line 485
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mListners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup$OnModeGroupDataChangeListner;

    .line 486
    .local v1, listener:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup$OnModeGroupDataChangeListner;
    if-eqz v1, :cond_0

    .line 487
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup$OnModeGroupDataChangeListner;->onModeGroupDataUpdated()V

    goto :goto_0

    .line 490
    .end local v1           #listener:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup$OnModeGroupDataChangeListner;
    :cond_1
    return-void
.end method

.method public setCurrentModeAttributes(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;)V
    .locals 3
    .parameter "modeAttr"

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, changelist:Z
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentModeAttrs:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    if-eqz v1, :cond_2

    .line 280
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->getType()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentModeAttrs:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->getType()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 281
    const/4 v0, 0x1

    .line 289
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentModeAttrs:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    .line 292
    if-eqz v0, :cond_3

    .line 293
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentModeAttrs:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentModeAttrs:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->setModeList(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;)V

    .line 295
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->listDataChanged()V

    .line 300
    :cond_1
    :goto_1
    return-void

    .line 284
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentModeAttrs:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    if-eq p1, v1, :cond_0

    .line 285
    const/4 v0, 0x1

    goto :goto_0

    .line 298
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->listDataUpdated()V

    goto :goto_1
.end method

.method public setCurrentVisibleFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 457
    iput p1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mCurrentVisibleFlag:I

    .line 458
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->listDataChanged()V

    .line 459
    return-void
.end method

.method public setDataChangeListener(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup$OnModeGroupDataChangeListner;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 358
    if-nez p1, :cond_0

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->mListners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->listDataChanged(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup$OnModeGroupDataChangeListner;)V

    goto :goto_0
.end method

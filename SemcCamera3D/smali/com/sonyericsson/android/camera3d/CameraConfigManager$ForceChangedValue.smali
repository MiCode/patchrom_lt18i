.class Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;
.super Ljava/lang/Object;
.source "CameraConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForceChangedValue"
.end annotation


# instance fields
.field private final mCameraFacing:Ljava/lang/String;

.field private final mCameraType:I

.field private final mKeyPrefix:Ljava/lang/String;

.field private mOriginalValueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "cameraFacing"

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->mOriginalValueMap:Ljava/util/HashMap;

    .line 412
    iput p1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->mCameraType:I

    .line 413
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->mCameraFacing:Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->mCameraFacing:Ljava/lang/String;

    const-string v1, "MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const-string v0, "CAMERA_DEVICE_MAIN_FORCE_CHANGED_"

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->mKeyPrefix:Ljava/lang/String;

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    const-string v0, "CAMERA_DEVICE_FRONT_FORCE_CHANGED_"

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->mKeyPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->mKeyPrefix:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getOriginalValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 448
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->mOriginalValueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->mOriginalValueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 452
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->mOriginalValueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOriginalValue(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 429
    if-nez p2, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->mOriginalValueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->mOriginalValueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

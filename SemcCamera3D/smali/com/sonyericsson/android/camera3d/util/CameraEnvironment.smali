.class public Lcom/sonyericsson/android/camera3d/util/CameraEnvironment;
.super Ljava/lang/Object;
.source "CameraEnvironment.java"


# static fields
.field public static final EXTERNAL_STORAGE_TYPE_EMMC:Ljava/lang/String; = "Emmc"

.field public static final EXTERNAL_STORAGE_TYPE_SDCARD:Ljava/lang/String; = "SdCard"

.field public static final EXTERNAL_STORAGE_TYPE_USBOTG:Ljava/lang/String; = "UsbOtg"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalStorageState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "storage"

    .prologue
    .line 23
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 19
    const-string v0, "Emmc"

    return-object v0
.end method

.method public static getExternalStorages()[Ljava/io/File;
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

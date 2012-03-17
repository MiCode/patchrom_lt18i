.class Lcom/sonyericsson/android/camera3d/ImageManager$GetStatFsTask;
.super Landroid/os/AsyncTask;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetStatFsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/os/StatFs;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1062
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/ImageManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1062
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ImageManager$GetStatFsTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/os/StatFs;
    .locals 5
    .parameter "params"

    .prologue
    .line 1065
    const/4 v1, 0x0

    .line 1067
    .local v1, statFs:Landroid/os/StatFs;
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getInstance()Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getDestinationToSave()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #statFs:Landroid/os/StatFs;
    .local v2, statFs:Landroid/os/StatFs;
    move-object v1, v2

    .line 1071
    .end local v2           #statFs:Landroid/os/StatFs;
    .restart local v1       #statFs:Landroid/os/StatFs;
    :goto_0
    return-object v1

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "ImageManager"

    const-string v4, "Create StatFs failed."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1062
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/ImageManager$GetStatFsTask;->doInBackground([Ljava/lang/Void;)Landroid/os/StatFs;

    move-result-object v0

    return-object v0
.end method

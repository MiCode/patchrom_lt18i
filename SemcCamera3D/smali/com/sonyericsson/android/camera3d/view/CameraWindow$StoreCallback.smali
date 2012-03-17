.class Lcom/sonyericsson/android/camera3d/view/CameraWindow$StoreCallback;
.super Ljava/lang/Object;
.source "CameraWindow.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/CameraWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$StoreCallback;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;Lcom/sonyericsson/android/camera3d/view/CameraWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$StoreCallback;-><init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V

    return-void
.end method


# virtual methods
.method public onStoreComplete(Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .parameter "status"
    .parameter "storeResult"
    .parameter "filename"
    .parameter "uri"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$StoreCallback;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideStoreProgress()V

    .line 126
    if-nez p2, :cond_0

    const/4 v2, 0x1

    .line 127
    .local v2, result:Z
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$StoreCallback;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget v1, p1, Lcom/sonyericsson/android/camera3d/TakenStatus;->mRequestId:I

    const-string v4, "image/mpo"

    iget v5, p1, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientation:I

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->onStoreComplete(IZLandroid/net/Uri;Ljava/lang/String;I)V

    .line 133
    return-void

    .line 126
    .end local v2           #result:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onStoreProgress(II)V
    .locals 0
    .parameter "current"
    .parameter "total"

    .prologue
    .line 118
    return-void
.end method

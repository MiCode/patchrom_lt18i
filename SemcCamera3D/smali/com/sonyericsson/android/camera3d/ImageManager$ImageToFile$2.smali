.class Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile$2;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->storeData(Ljava/lang/Exception;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;)V
    .locals 0
    .parameter

    .prologue
    .line 1557
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile$2;->this$1:Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile$2;->this$1:Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    const/4 v1, -0x3

    #calls: Lcom/sonyericsson/android/camera3d/ImageManager;->notifyExternalMemoryListener(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$500(Lcom/sonyericsson/android/camera3d/ImageManager;I)V

    .line 1560
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile$2;->this$1:Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    #getter for: Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$600(Lcom/sonyericsson/android/camera3d/ImageManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    move-result-object v0

    const v1, 0x7f0c00eb

    const v2, 0x7f0c00d4

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showErrorOk(IIZ)Landroid/app/Dialog;

    .line 1564
    return-void
.end method

.class Lcom/sonyericsson/android/camera3d/view/CameraWindow$2;
.super Ljava/lang/Object;
.source "CameraWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/view/CameraWindow;->onStoreComplete(IZLandroid/net/Uri;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

.field final synthetic val$fixMediaId:I

.field final synthetic val$mime:Ljava/lang/String;

.field final synthetic val$originalUri:Landroid/net/Uri;

.field final synthetic val$requestId:I

.field final synthetic val$result:Z

.field final synthetic val$thumbnailOrientation:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;IIILandroid/net/Uri;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$2;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iput p2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$2;->val$requestId:I

    iput p3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$2;->val$fixMediaId:I

    iput p4, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$2;->val$thumbnailOrientation:I

    iput-object p5, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$2;->val$originalUri:Landroid/net/Uri;

    iput-object p6, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$2;->val$mime:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$2;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$2;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$2200(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$2;->val$requestId:I

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$2;->val$fixMediaId:I

    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$2;->val$thumbnailOrientation:I

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$2;->val$originalUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$2;->val$mime:Ljava/lang/String;

    iget v7, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$2;->val$fixMediaId:I

    if-gez v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->addComplete(IIIILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 1169
    return-void

    .line 1167
    :cond_0
    iget-boolean v7, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$2;->val$result:Z

    goto :goto_0
.end method

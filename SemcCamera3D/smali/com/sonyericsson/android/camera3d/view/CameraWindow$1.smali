.class Lcom/sonyericsson/android/camera3d/view/CameraWindow$1;
.super Ljava/lang/Object;
.source "CameraWindow.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch$PhotoVideoSwitchStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setupVideoSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 891
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$1;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedToPhotoMode()Z
    .locals 1

    .prologue
    .line 901
    const/4 v0, 0x1

    return v0
.end method

.method public onChangedToVideoMode()Z
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$1;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/util/ApplicationLauncher;->launchVideoCamera(Landroid/content/Context;)V

    .line 895
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$1;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 896
    const/4 v0, 0x1

    return v0
.end method

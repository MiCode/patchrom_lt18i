.class Lcom/sonyericsson/android/camera3d/view/CameraWindow$TouchGuideAnimationListener;
.super Ljava/lang/Object;
.source "CameraWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/CameraWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchGuideAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 822
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$TouchGuideAnimationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 826
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$TouchGuideAnimationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const v1, 0x7f0d002c

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 827
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$TouchGuideAnimationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const v1, 0x7f0d0058

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/Notification;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/Notification;->onTouchGuideAnimationEnd()V

    .line 829
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$TouchGuideAnimationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPanoramaSweeper:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$2100(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->onTouchGuideAnimationEnd()V

    .line 830
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$TouchGuideAnimationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showCaptureGuide()V

    .line 831
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 834
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 839
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$TouchGuideAnimationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const v1, 0x7f0d002c

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$TouchGuideAnimationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const v1, 0x7f0d0058

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/Notification;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/Notification;->onTouchGuideAnimationStart()V

    .line 842
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$TouchGuideAnimationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPanoramaSweeper:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$2100(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->onTouchGuideAnimationStart()V

    .line 843
    return-void
.end method

.class Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$6;
.super Ljava/lang/Object;
.source "ReviewIconView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setupAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$6;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$6;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->access$100(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 262
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 264
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 266
    return-void
.end method

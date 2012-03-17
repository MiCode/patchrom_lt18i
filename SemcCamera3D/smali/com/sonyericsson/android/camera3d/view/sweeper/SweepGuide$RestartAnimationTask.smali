.class Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$RestartAnimationTask;
.super Ljava/lang/Object;
.source "SweepGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestartAnimationTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$RestartAnimationTask;->this$0:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$RestartAnimationTask;-><init>(Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const v2, 0x7f0c00c0

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$RestartAnimationTask;->this$0:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

    #getter for: Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mPanorama2d:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->access$100(Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$RestartAnimationTask;->this$0:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

    #getter for: Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideMessageId:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->access$200(Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 71
    invoke-static {}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->hasShutterKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$RestartAnimationTask;->this$0:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

    const v1, 0x7f0c00bf

    #setter for: Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideMessageId:I
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->access$202(Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;I)I

    .line 80
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$RestartAnimationTask;->this$0:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

    #getter for: Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->access$300(Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$RestartAnimationTask;->this$0:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

    #getter for: Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideMessageId:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->access$200(Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$RestartAnimationTask;->this$0:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

    #calls: Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->startAnimation()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->access$400(Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;)V

    .line 83
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$RestartAnimationTask;->this$0:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

    const v1, 0x7f0c00c1

    #setter for: Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideMessageId:I
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->access$202(Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;I)I

    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$RestartAnimationTask;->this$0:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

    #setter for: Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideMessageId:I
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->access$202(Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;I)I

    goto :goto_0
.end method

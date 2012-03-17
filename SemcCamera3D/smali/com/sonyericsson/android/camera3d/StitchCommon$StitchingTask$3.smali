.class Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$3;
.super Ljava/lang/Object;
.source "StitchCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$3;->this$1:Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;

    iput-boolean p2, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$3;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$3;->this$1:Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCaptureCallback:Lcom/sonyericsson/android/camera3d/StitchCommon$CaptureCallback;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$3;->this$1:Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCaptureCallback:Lcom/sonyericsson/android/camera3d/StitchCommon$CaptureCallback;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$3;->val$success:Z

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera3d/StitchCommon$CaptureCallback;->onCaptureDone(Z)V

    .line 474
    :cond_0
    return-void
.end method

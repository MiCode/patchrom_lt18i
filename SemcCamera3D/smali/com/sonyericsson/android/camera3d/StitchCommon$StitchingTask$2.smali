.class Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$2;
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

.field final synthetic val$notificationProgress:F

.field final synthetic val$notificationResult:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;FI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$2;->this$1:Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;

    iput p2, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$2;->val$notificationProgress:F

    iput p3, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$2;->val$notificationResult:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 450
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$2;->this$1:Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/StitchCommon;->stop()Z

    .line 453
    iget v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$2;->val$notificationProgress:F

    const/high16 v2, 0x4248

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$2;->this$1:Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCaptureCallback:Lcom/sonyericsson/android/camera3d/StitchCommon$CaptureCallback;

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$2;->this$1:Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$2;->val$notificationResult:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/StitchCommon;->updateNotificationResult(I)I

    move-result v0

    .line 456
    .local v0, result:I
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$2;->this$1:Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCaptureCallback:Lcom/sonyericsson/android/camera3d/StitchCommon$CaptureCallback;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$2;->val$notificationProgress:F

    invoke-interface {v1, v0, v2}, Lcom/sonyericsson/android/camera3d/StitchCommon$CaptureCallback;->onCaptureInfo(IF)V

    .line 460
    .end local v0           #result:I
    :cond_0
    return-void
.end method

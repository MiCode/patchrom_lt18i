.class Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$1;
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
.method constructor <init>(Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;IF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$1;->this$1:Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;

    iput p2, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$1;->val$notificationResult:I

    iput p3, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$1;->val$notificationProgress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$1;->this$1:Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCaptureCallback:Lcom/sonyericsson/android/camera3d/StitchCommon$CaptureCallback;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$1;->this$1:Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCaptureCallback:Lcom/sonyericsson/android/camera3d/StitchCommon$CaptureCallback;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$1;->val$notificationResult:I

    iget v2, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$1;->val$notificationProgress:F

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/StitchCommon$CaptureCallback;->onCaptureInfo(IF)V

    .line 443
    :cond_0
    return-void
.end method

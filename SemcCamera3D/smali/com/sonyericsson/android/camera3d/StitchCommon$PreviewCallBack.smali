.class public Lcom/sonyericsson/android/camera3d/StitchCommon$PreviewCallBack;
.super Ljava/lang/Object;
.source "StitchCommon.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/StitchCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/StitchCommon;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$PreviewCallBack;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measure(I)V

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$PreviewCallBack;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    #getter for: Lcom/sonyericsson/android/camera3d/StitchCommon;->mPreviewBufferQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/StitchCommon;->access$100(Lcom/sonyericsson/android/camera3d/StitchCommon;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    .line 350
    return-void
.end method

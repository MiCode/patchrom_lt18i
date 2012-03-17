.class public final Lcom/sonyericsson/android/camera3d/BaseController$AutoZoomCallback;
.super Ljava/lang/Object;
.source "BaseController.java"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/BaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AutoZoomCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/BaseController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/BaseController;)V
    .locals 0
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/BaseController$AutoZoomCallback;->this$0:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 3
    .parameter "zoomValue"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController$AutoZoomCallback;->this$0:Lcom/sonyericsson/android/camera3d/BaseController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/BaseController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x20

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 679
    return-void
.end method

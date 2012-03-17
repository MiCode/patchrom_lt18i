.class public interface abstract Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;
.super Ljava/lang/Object;
.source "CaptureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/CaptureButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureAreaStateListener"
.end annotation


# virtual methods
.method public abstract onCaptureAreaCanceled()V
.end method

.method public abstract onCaptureAreaMoved(Landroid/graphics/Point;)V
.end method

.method public abstract onCaptureAreaReleased(Landroid/graphics/Point;)V
.end method

.method public abstract onCaptureAreaReleasedAfterMove(Landroid/graphics/Point;)V
.end method

.method public abstract onCaptureAreaTouched(Landroid/graphics/Point;)V
.end method

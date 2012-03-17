.class public interface abstract Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;
.super Ljava/lang/Object;
.source "PhotoStackGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotoStackGestureListener"
.end annotation


# virtual methods
.method public abstract onDown(Landroid/view/MotionEvent;)I
.end method

.method public abstract onFlingTray(Landroid/view/MotionEvent;ZF)V
.end method

.method public abstract onMove(II)V
.end method

.method public abstract onRelease(Landroid/view/MotionEvent;)V
.end method

.method public abstract onSelectThumbnail(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onShowMenu(Landroid/view/MotionEvent;)Z
.end method

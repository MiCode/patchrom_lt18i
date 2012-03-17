.class Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$2;
.super Ljava/lang/Object;
.source "ReviewGestureDetector.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->onImageDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

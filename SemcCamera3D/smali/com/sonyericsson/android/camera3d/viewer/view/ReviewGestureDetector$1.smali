.class Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$1;
.super Ljava/lang/Object;
.source "ReviewGestureDetector.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


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
    .line 172
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->onImageFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->onImageLongPress(Landroid/view/MotionEvent;)V

    .line 193
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->onImageScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 183
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->access$000(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->access$000(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;->onSingleTapUp()Z

    move-result v0

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom$1;
.super Ljava/lang/Object;
.source "ReviewGestureDetectorWithPinchZoom.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;

    #calls: Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->onImageScale(Landroid/view/ScaleGestureDetector;)Z
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->access$000(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;

    #calls: Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->onImageScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->access$100(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;

    #calls: Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->onImageScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->access$200(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;Landroid/view/ScaleGestureDetector;)Z

    .line 118
    return-void
.end method

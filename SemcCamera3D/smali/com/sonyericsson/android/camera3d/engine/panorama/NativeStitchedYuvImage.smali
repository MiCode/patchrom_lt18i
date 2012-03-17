.class public Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;
.super Ljava/lang/Object;
.source "NativeStitchedYuvImage.java"


# instance fields
.field public area:Landroid/graphics/Rect;

.field public memoryHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;->memoryHandle:J

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;->area:Landroid/graphics/Rect;

    .line 29
    return-void
.end method


# virtual methods
.method public set(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;->area:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 33
    return-void
.end method

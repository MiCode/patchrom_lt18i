.class public Lcom/sonyericsson/android/camera3d/view/CameraSurfaceView;
.super Landroid/view/SurfaceView;
.source "CameraSurfaceView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraSurfaceView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraSurfaceView;->initialize()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraSurfaceView;->initialize()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraSurfaceView;->initialize()V

    .line 79
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraSurfaceView;->setFocusable(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 93
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 100
    return-void
.end method

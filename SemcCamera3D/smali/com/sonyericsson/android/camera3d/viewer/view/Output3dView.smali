.class public Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;
.super Landroid/widget/RelativeLayout;
.source "Output3dView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$1;,
        Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Output3dView"

.field private static sNumOfInstance:I

.field private static sOffscreenBitmapCache:Landroid/graphics/Bitmap;


# instance fields
.field private mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->sNumOfInstance:I

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->sOffscreenBitmapCache:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    .line 58
    return-void
.end method

.method private static expandOffscreenBitmap(II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 204
    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->sOffscreenBitmapCache:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 205
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->sOffscreenBitmapCache:Landroid/graphics/Bitmap;

    .line 218
    :cond_0
    :goto_0
    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->sOffscreenBitmapCache:Landroid/graphics/Bitmap;

    return-object v2

    .line 207
    :cond_1
    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->sOffscreenBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 208
    .local v1, expandedWidth:I
    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->sOffscreenBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 209
    .local v0, expandedHeight:I
    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->sOffscreenBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_2

    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->sOffscreenBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 211
    :cond_2
    const/4 v2, 0x0

    sput-object v2, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->sOffscreenBitmapCache:Landroid/graphics/Bitmap;

    .line 212
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->sOffscreenBitmapCache:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 107
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->is3D()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-direct {v0, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 109
    .local v0, clip:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->expandOffscreenBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 111
    .local v1, offScreenBitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    .local v2, offscreen:Landroid/graphics/Canvas;
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 113
    invoke-super {p0, v2}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 115
    new-instance v4, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    invoke-direct {v4, v5, v6, v7}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;-><init>(IILcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 119
    .local v4, viewport:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 120
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->source()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->destLeftEye()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p1, v1, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 121
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->source()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->destRightEye()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p1, v1, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 126
    .end local v0           #clip:Landroid/graphics/Rect;
    .end local v1           #offScreenBitmap:Landroid/graphics/Bitmap;
    .end local v2           #offscreen:Landroid/graphics/Canvas;
    .end local v3           #paint:Landroid/graphics/Paint;
    .end local v4           #viewport:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1
    .parameter "location"
    .parameter "dirty"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->postInvalidate()V

    .line 69
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->sNumOfInstance:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->sNumOfInstance:I

    .line 81
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 82
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 87
    sget v0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->sNumOfInstance:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->sNumOfInstance:I

    if-gtz v0, :cond_0

    .line 88
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->sOffscreenBitmapCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->sOffscreenBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->sOffscreenBitmapCache:Landroid/graphics/Bitmap;

    .line 93
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 98
    return-void
.end method

.method public setOutputMode(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->postInvalidate()V

    .line 76
    return-void
.end method

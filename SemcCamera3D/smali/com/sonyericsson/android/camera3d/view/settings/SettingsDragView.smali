.class public Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;
.super Landroid/view/View;
.source "SettingsDragView.java"


# static fields
.field private static final DRAG_SCALE:I = 0x18

.field private static final TAG:Ljava/lang/String; = "SettingsDragView"


# instance fields
.field private mAnimationScale:F

.field private final mBackupColor:I

.field private mBackupPaint:Landroid/graphics/Paint;

.field private mBackupRect:Landroid/graphics/RectF;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mPaint:Landroid/graphics/Paint;

.field private mRegistrationX:I

.field private mRegistrationY:I

.field private mScale:F

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIII)V
    .locals 9
    .parameter "context"
    .parameter "bitmap"
    .parameter "registrationX"
    .parameter "registrationY"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mAnimationScale:F

    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mWindowManager:Landroid/view/WindowManager;

    .line 95
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 96
    .local v6, scale:Landroid/graphics/Matrix;
    move/from16 v0, p7

    int-to-float v8, v0

    .line 97
    .local v8, scaleFactor:F
    const/high16 v1, 0x41c0

    add-float/2addr v1, v8

    div-float/2addr v1, v8

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mScale:F

    .line 98
    iget v8, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mScale:F

    .line 99
    invoke-virtual {v6, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 102
    if-eqz p2, :cond_0

    .line 103
    const/4 v7, 0x1

    move-object v1, p2

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    :try_start_0
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    add-int/lit8 v1, p3, 0xc

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mRegistrationX:I

    .line 111
    add-int/lit8 v1, p4, 0xc

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mRegistrationY:I

    .line 113
    move/from16 v0, p7

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBitmapWidth:I

    .line 114
    move/from16 v0, p8

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBitmapHeight:I

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBackupColor:I

    .line 117
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 118
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBackupPaint:Landroid/graphics/Paint;

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBackupPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBackupColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBitmapWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mScale:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBitmapHeight:I

    int-to-float v5, v5

    iget v7, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mScale:F

    mul-float/2addr v5, v7

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBackupRect:Landroid/graphics/RectF;

    .line 122
    :cond_1
    return-void

    .line 105
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method move(II)V
    .locals 2
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 214
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mRegistrationX:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 215
    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mRegistrationY:I

    sub-int v1, p2, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 217
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 158
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 159
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 132
    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mAnimationScale:F

    .line 133
    .local v1, scale:F
    const v3, 0x3f7fbe77

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 135
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBitmapWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mScale:F

    mul-float v2, v3, v4

    .line 136
    .local v2, width:F
    mul-float v3, v2, v1

    sub-float v3, v2, v3

    const/high16 v4, 0x4000

    div-float v0, v3, v4

    .line 137
    .local v0, offset:F
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 138
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 140
    .end local v0           #offset:F
    .end local v2           #width:F
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 149
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_2

    .line 144
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBackupRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBackupRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBackupPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 126
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBitmapWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mBitmapHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->setMeasuredDimension(II)V

    .line 128
    return-void
.end method

.method remove()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 222
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "paint"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mPaint:Landroid/graphics/Paint;

    .line 163
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->invalidate()V

    .line 164
    return-void
.end method

.method public show(Landroid/os/IBinder;II)V
    .locals 8
    .parameter "windowToken"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v1, -0x2

    .line 181
    const/4 v7, -0x3

    .line 183
    .local v7, pixelFormat:I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mRegistrationX:I

    sub-int v3, p2, v2

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mRegistrationY:I

    sub-int v4, p3, v2

    const/16 v5, 0x3ea

    const/16 v6, 0x300

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 192
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 193
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 194
    const-string v1, "DragView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 198
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mScale:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->mAnimationScale:F

    .line 201
    return-void
.end method

.class public Lcom/sonyericsson/android/camera3d/view/CaptureButton;
.super Landroid/widget/ImageView;
.source "CaptureButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;,
        Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;
    }
.end annotation


# static fields
.field public static final PHOTO_CAPTURE_BUTTON_LANDSCAPE:I = 0x7f02007c

.field public static final PHOTO_CAPTURE_BUTTON_LANDSCAPE_PRESSED:I = 0x7f02007f

.field public static final PHOTO_CAPTURE_BUTTON_PORTRAIT:I = 0x7f02007d

.field public static final PHOTO_CAPTURE_BUTTON_PORTRAIT_PRESSED:I = 0x7f02007e

.field private static final TAG:Ljava/lang/String; = "CaptureButton"


# instance fields
.field private mApplicableTouchCaptureSettingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBgLandscape:I

.field private mBgLandscapePressed:I

.field private mBgPortrait:I

.field private mBgPortraitPressed:I

.field private mCurrentOrientation:I

.field private mCurrentTouchCaptureSetting:Ljava/lang/String;

.field private mIsFingerMoved:Z

.field private mIsTouchFocus:Z

.field private mIsTouched:Z

.field private mLastTouchDownPosX:F

.field private mLastTouchDownPosY:F

.field private mListener:Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;

.field private mTouchListener:Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;

.field private mTouchListenerForClient:Landroid/view/View$OnTouchListener;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const-string v0, "OFF"

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mCurrentTouchCaptureSetting:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mApplicableTouchCaptureSettingList:Ljava/util/List;

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mCurrentOrientation:I

    .line 53
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mIsTouched:Z

    .line 56
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mIsFingerMoved:Z

    .line 59
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mIsTouchFocus:Z

    .line 62
    iput v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mLastTouchDownPosX:F

    .line 63
    iput v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mLastTouchDownPosY:F

    .line 66
    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mTouchSlop:I

    .line 69
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;-><init>(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mTouchListener:Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mTouchSlop:I

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/view/CaptureButton;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->storeLastTouchPosition(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/view/CaptureButton;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->hitTest(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->resetLastTouchPosition()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->updateView()V

    return-void
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera3d/view/CaptureButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mIsTouched:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mListener:Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/view/CaptureButton;Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->getTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mTouchListenerForClient:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mLastTouchDownPosX:F

    return v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mLastTouchDownPosY:F

    return v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mIsFingerMoved:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sonyericsson/android/camera3d/view/CaptureButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mIsFingerMoved:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mTouchSlop:I

    return v0
.end method

.method private applyTouchCaptureSetting()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mApplicableTouchCaptureSettingList:Ljava/util/List;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mCurrentTouchCaptureSetting:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mTouchListener:Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private getTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .locals 3
    .parameter "motion"

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    const-string v0, "VIEW_FINDER"

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mCurrentTouchCaptureSetting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 292
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hitTest(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "targetView"
    .parameter "motion"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 309
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 310
    .local v0, locationOfView:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 313
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 317
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method private resetLastTouchPosition()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 302
    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mLastTouchDownPosX:F

    .line 303
    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mLastTouchDownPosY:F

    .line 305
    return-void
.end method

.method private storeLastTouchPosition(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "motion"

    .prologue
    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mLastTouchDownPosX:F

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mLastTouchDownPosY:F

    .line 299
    return-void
.end method

.method private updateView()V
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mBgLandscape:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mBgLandscapePressed:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mBgPortrait:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mBgPortraitPressed:I

    if-nez v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 329
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 355
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->requestLayout()V

    .line 356
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->invalidate()V

    goto :goto_0

    .line 332
    :pswitch_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mIsTouched:Z

    if-eqz v0, :cond_1

    .line 333
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mBgLandscapePressed:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setImageResource(I)V

    goto :goto_1

    .line 336
    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mBgLandscape:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setImageResource(I)V

    goto :goto_1

    .line 343
    :pswitch_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mIsTouched:Z

    if-eqz v0, :cond_2

    .line 344
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mBgPortraitPressed:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setImageResource(I)V

    goto :goto_1

    .line 347
    :cond_2
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mBgPortrait:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setImageResource(I)V

    goto :goto_1

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addApplicableTouchCaptureSetting(Ljava/lang/String;)V
    .locals 1
    .parameter "applicable"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mApplicableTouchCaptureSettingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->applyTouchCaptureSetting()V

    .line 109
    return-void
.end method

.method public isTouched()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mIsTouched:Z

    return v0
.end method

.method public setCaptureAreaStateListener(Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mListener:Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;

    .line 372
    return-void
.end method

.method public setController(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mTouchListenerForClient:Landroid/view/View$OnTouchListener;

    .line 376
    return-void
.end method

.method public setLandscapeBackgroundResource(II)V
    .locals 0
    .parameter "normal"
    .parameter "pressed"

    .prologue
    .line 138
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mBgLandscape:I

    .line 139
    iput p2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mBgLandscapePressed:I

    .line 141
    return-void
.end method

.method public setPortraitBackgroundResource(II)V
    .locals 0
    .parameter "normal"
    .parameter "pressed"

    .prologue
    .line 144
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mBgPortrait:I

    .line 145
    iput p2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mBgPortraitPressed:I

    .line 147
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 171
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mCurrentOrientation:I

    .line 174
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->updateView()V

    .line 176
    return-void
.end method

.method public setTouchCaptureSetting(Ljava/lang/String;)V
    .locals 0
    .parameter "touchCapture"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mCurrentTouchCaptureSetting:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->applyTouchCaptureSetting()V

    .line 117
    return-void
.end method

.method public setTouchFocusMode(Z)V
    .locals 0
    .parameter "isTouchFocusEnabled"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mIsTouchFocus:Z

    .line 135
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mApplicableTouchCaptureSettingList:Ljava/util/List;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mCurrentTouchCaptureSetting:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x4

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

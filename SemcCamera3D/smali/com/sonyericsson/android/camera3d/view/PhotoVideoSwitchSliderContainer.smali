.class public Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;
.super Landroid/widget/RelativeLayout;
.source "PhotoVideoSwitchSliderContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$1;,
        Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;
    }
.end annotation


# static fields
.field public static final RES_PHOTO_POSITION_Y:I = 0x7f090045

.field public static final RES_SCROLL_OFFSET_X:I = 0x7f090047

.field public static final RES_VIDEO_POSITION_Y:I = 0x7f090046

.field public static final SLIDER_GRIP_HIGHLIGHTED_ICN:I = 0x7f02006f

.field public static final SLIDER_GRIP_ICN:I = 0x7f02006c

.field public static final SLIDER_GRIP_VIEW:I = 0x7f0d0073

.field private static final TAG:Ljava/lang/String; = "PhotoVideoSwitchSliderContainer"


# instance fields
.field private final PHOTO_POSITION_Y:I

.field private final SCROLL_OFFSET_X:I

.field private final VIDEO_POSITION_Y:I

.field private mCurrentMode:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

.field private mIsFingerMoved:Z

.field private mLastDownX:F

.field private mLastDownY:F

.field private mListener:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch$PhotoVideoSwitchStateListener;

.field private mSliderGrip:Landroid/widget/ImageView;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mLastDownX:F

    .line 23
    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mLastDownY:F

    .line 26
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mIsFingerMoved:Z

    .line 39
    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mTouchSlop:I

    .line 42
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->PHOTO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mCurrentMode:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->PHOTO_POSITION_Y:I

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->VIDEO_POSITION_Y:I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->SCROLL_OFFSET_X:I

    .line 81
    return-void
.end method

.method private changeMode()V
    .locals 2

    .prologue
    .line 291
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$1;->$SwitchMap$com$sonyericsson$android$camera3d$view$PhotoVideoSwitchSliderContainer$Mode:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mCurrentMode:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 293
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->changeToVideoMode()V

    goto :goto_0

    .line 297
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->changeToPhotoMode()V

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private changeToPhotoMode()V
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->PHOTO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->setPosition(Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;)V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mCurrentMode:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    sget-object v1, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->PHOTO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    if-eq v0, v1, :cond_0

    .line 242
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->PHOTO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mCurrentMode:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mListener:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch$PhotoVideoSwitchStateListener;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mListener:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch$PhotoVideoSwitchStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch$PhotoVideoSwitchStateListener;->onChangedToPhotoMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->VIDEO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->setPosition(Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;)V

    .line 252
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->VIDEO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mCurrentMode:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    .line 260
    :cond_0
    return-void
.end method

.method private changeToVideoMode()V
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->VIDEO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->setPosition(Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;)V

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mCurrentMode:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    sget-object v1, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->VIDEO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    if-eq v0, v1, :cond_0

    .line 270
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->VIDEO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mCurrentMode:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mListener:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch$PhotoVideoSwitchStateListener;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mListener:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch$PhotoVideoSwitchStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch$PhotoVideoSwitchStateListener;->onChangedToVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->PHOTO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->setPosition(Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;)V

    .line 280
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->PHOTO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mCurrentMode:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    .line 288
    :cond_0
    return-void
.end method

.method private getCurrentSliderGripPositionY(Landroid/view/MotionEvent;I)I
    .locals 5
    .parameter "event"
    .parameter "lastDownY"

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 181
    .local v2, motionEventY:I
    sub-int v1, v2, p2

    .line 184
    .local v1, diffY:I
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mCurrentMode:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    sget-object v4, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->PHOTO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    if-ne v3, v4, :cond_1

    .line 185
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->PHOTO_POSITION_Y:I

    sub-int v0, v3, v1

    .line 191
    .local v0, currentY:I
    :goto_0
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->PHOTO_POSITION_Y:I

    if-ge v3, v0, :cond_2

    .line 192
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->PHOTO_POSITION_Y:I

    .line 197
    :cond_0
    :goto_1
    return v0

    .line 187
    .end local v0           #currentY:I
    :cond_1
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->VIDEO_POSITION_Y:I

    sub-int v0, v3, v1

    .restart local v0       #currentY:I
    goto :goto_0

    .line 193
    :cond_2
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->VIDEO_POSITION_Y:I

    if-ge v0, v3, :cond_0

    .line 194
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->VIDEO_POSITION_Y:I

    goto :goto_1
.end method

.method private isPointerLocationSameAsTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "motion"

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 209
    .local v1, relX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 211
    .local v2, relY:I
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mLastDownX:F

    float-to-int v3, v3

    sub-int v3, v1, v3

    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mLastDownX:F

    float-to-int v4, v4

    sub-int v4, v1, v4

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mLastDownY:F

    float-to-int v4, v4

    sub-int v4, v2, v4

    iget v5, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mLastDownY:F

    float-to-int v5, v5

    sub-int v5, v2, v5

    mul-int/2addr v4, v5

    add-int v0, v3, v4

    .line 214
    .local v0, diff:I
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mTouchSlop:I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mTouchSlop:I

    mul-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    .line 215
    const/4 v3, 0x1

    .line 218
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setPosition(Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 222
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$1;->$SwitchMap$com$sonyericsson$android$camera3d$view$PhotoVideoSwitchSliderContainer$Mode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 232
    :goto_0
    return-void

    .line 224
    :pswitch_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->SCROLL_OFFSET_X:I

    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->PHOTO_POSITION_Y:I

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->scrollTo(II)V

    goto :goto_0

    .line 228
    :pswitch_1
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->SCROLL_OFFSET_X:I

    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->VIDEO_POSITION_Y:I

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->scrollTo(II)V

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private storeDownPosition(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "motion"

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mLastDownX:F

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mLastDownY:F

    .line 204
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public disableHighlighted()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mSliderGrip:Landroid/widget/ImageView;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    return-void
.end method

.method public enableHighlighted()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mSliderGrip:Landroid/widget/ImageView;

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 92
    const v0, 0x7f0d0073

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mSliderGrip:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mSliderGrip:Landroid/widget/ImageView;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mTouchSlop:I

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->requestLayout()V

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->invalidate()V

    .line 102
    return-void
.end method

.method public onLocalTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "motion"

    .prologue
    const/4 v5, 0x1

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 176
    :goto_0
    return v5

    .line 122
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->storeDownPosition(Landroid/view/MotionEvent;)Z

    .line 125
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mIsFingerMoved:Z

    goto :goto_0

    .line 132
    :pswitch_1
    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mLastDownY:F

    float-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->getCurrentSliderGripPositionY(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 135
    .local v2, draggingY:I
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->isPointerLocationSameAsTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 137
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mIsFingerMoved:Z

    .line 141
    :cond_0
    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->SCROLL_OFFSET_X:I

    invoke-virtual {p0, v4, v2}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->scrollTo(II)V

    goto :goto_0

    .line 149
    .end local v2           #draggingY:I
    :pswitch_2
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mIsFingerMoved:Z

    if-nez v4, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->changeMode()V

    goto :goto_0

    .line 156
    :cond_1
    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mLastDownY:F

    float-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->getCurrentSliderGripPositionY(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 160
    .local v3, releasedY:I
    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->PHOTO_POSITION_Y:I

    sub-int v0, v3, v4

    .line 161
    .local v0, distToPhoto:I
    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->VIDEO_POSITION_Y:I

    sub-int v1, v4, v3

    .line 163
    .local v1, distToVideo:I
    if-gt v0, v1, :cond_2

    .line 164
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->changeToVideoMode()V

    goto :goto_0

    .line 167
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->changeToPhotoMode()V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetMode(Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 305
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$1;->$SwitchMap$com$sonyericsson$android$camera3d$view$PhotoVideoSwitchSliderContainer$Mode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 307
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->PHOTO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mCurrentMode:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    .line 308
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->PHOTO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->setPosition(Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;)V

    goto :goto_0

    .line 312
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->VIDEO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mCurrentMode:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    .line 313
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->VIDEO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->setPosition(Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;)V

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStateListener(Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch$PhotoVideoSwitchStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->mListener:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch$PhotoVideoSwitchStateListener;

    .line 86
    return-void
.end method

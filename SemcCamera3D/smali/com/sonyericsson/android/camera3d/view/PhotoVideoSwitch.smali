.class public Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;
.super Landroid/widget/RelativeLayout;
.source "PhotoVideoSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch$PhotoVideoSwitchStateListener;
    }
.end annotation


# static fields
.field public static final BACK_GROUND_VIEW:I = 0x7f0d0071

.field public static final BASE_LANDSCAPE_HIGHLIGHTED_ICN:I = 0x7f020073

.field public static final BASE_LANDSCAPE_ICN:I = 0x7f020070

.field public static final BASE_PORTRAIT_HIGHLIGHTED_ICN:I = 0x7f020072

.field public static final BASE_PORTRAIT_ICN:I = 0x7f020071

.field public static final SLIDER_GRIP_CONTAINER_VIEW:I = 0x7f0d0072

.field private static final TAG:Ljava/lang/String; = "PhotoVideoSwitch"


# instance fields
.field private mBackGround:Landroid/widget/ImageView;

.field private mCurrentOrientation:I

.field private mIsHighlighted:Z

.field private mListener:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch$PhotoVideoSwitchStateListener;

.field private mSliderGripContainer:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mCurrentOrientation:I

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mIsHighlighted:Z

    .line 54
    return-void
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mIsHighlighted:Z

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mSliderGripContainer:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->enableHighlighted()V

    .line 148
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->requestLayout()V

    .line 149
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->invalidate()V

    .line 151
    return-void

    .line 116
    :pswitch_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mIsHighlighted:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mBackGround:Landroid/widget/ImageView;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mBackGround:Landroid/widget/ImageView;

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 127
    :pswitch_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mIsHighlighted:Z

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mBackGround:Landroid/widget/ImageView;

    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mBackGround:Landroid/widget/ImageView;

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mSliderGripContainer:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->disableHighlighted()V

    goto :goto_1

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 60
    const v0, 0x7f0d0071

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mBackGround:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f0d0072

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mSliderGripContainer:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;

    .line 65
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->updateView()V

    .line 67
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "motion"

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mSliderGripContainer:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->onLocalTouchEvent(Landroid/view/MotionEvent;)Z

    .line 105
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->updateView()V

    .line 107
    return v1

    .line 89
    :pswitch_1
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mIsHighlighted:Z

    goto :goto_0

    .line 96
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mIsHighlighted:Z

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setPhotoMode()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mSliderGripContainer:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;

    sget-object v1, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->PHOTO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->resetMode(Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;)V

    .line 169
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 73
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mCurrentOrientation:I

    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->updateView()V

    .line 78
    return-void
.end method

.method public setStateListener(Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch$PhotoVideoSwitchStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mListener:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch$PhotoVideoSwitchStateListener;

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mSliderGripContainer:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mListener:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch$PhotoVideoSwitchStateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->setStateListener(Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch$PhotoVideoSwitchStateListener;)V

    .line 164
    return-void
.end method

.method public setVideoMode()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->mSliderGripContainer:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;

    sget-object v1, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->VIDEO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;->resetMode(Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;)V

    .line 174
    return-void
.end method

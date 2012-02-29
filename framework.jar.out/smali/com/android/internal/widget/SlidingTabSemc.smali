.class public Lcom/android/internal/widget/SlidingTabSemc;
.super Landroid/view/ViewGroup;
.source "SlidingTabSemc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final ANIMATE_MOVE_TIME:I = 0x12c

.field private static final BACKGROUND_ID:I = 0x3ed

.field private static final BUTTON_POSITION:D = 0.135

.field private static final DISABLED_FIRST_BUTTON_ID:I = 0x3eb

.field private static final DISABLED_SECOND_BUTTON_ID:I = 0x3ec

.field private static final EXPANDED_BUTTON_ID:I = 0x3e9

.field private static final EXP_TO_DIS_ANIM_TIME:I = 0x190

.field private static final FINGER_FLICKERING_THRESHOLD:I = 0x14

.field private static final GHOST_ANIM_MOVE_TIME:I = 0x352

.field private static final GHOST_ANIM_TIMES:I = 0x2

.field private static final GHOST_BUTTON_ID:I = 0x3ea

.field private static final GHOST_START_AFTER:I = 0x258

.field private static final NONE_TOUCH_PART_VERTICALLY:D = 0.4

.field private static final NO_POINTER_ID:I = -0x1

.field private static final SLIDER_STATE_FIRST:B = 0x1t

.field private static final SLIDER_STATE_NONE:B = 0x0t

.field private static final SLIDER_STATE_SECOND:B = 0x2t

.field private static final THRESHOLD_VAL_PART_OF_SCREEN:D = 0.3

.field private static final VIBRATE_ON_TOUCH_MS:I = 0x1e

.field private static mHapticsEnabled:Z


# instance fields
.field private mAbortGhostAnimation:Z

.field private mActivePointerId:I

.field private mBackground:Landroid/widget/ImageView;

.field private mDisabledFirstButton:Landroid/widget/ImageView;

.field private mDisabledSecondButton:Landroid/widget/ImageView;

.field private mDrawableFirstDisabledId:I

.field private mDrawableFirstExpandedId:I

.field private mDrawableFirstGhostId:I

.field private mDrawableFirstGotoId:I

.field private mDrawableSecondDisabledId:I

.field private mDrawableSecondExpandedId:I

.field private mDrawableSecondGhostId:I

.field private mDrawableSecondGotoId:I

.field private mExpandedButton:Landroid/widget/ImageView;

.field private mFingerFlickerDone:Z

.field private mFingerOff:I

.field private mFingerStartPos:I

.field private mFirstActivatePoint:I

.field private mFirstBtnPosition:I

.field private mFirstTouchablePart:I

.field private mGhostButton:Landroid/widget/ImageView;

.field private mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

.field private mIsAnimating:Z

.field private mIsGhostAnimating:Z

.field private mLastMovePos:F

.field private mLongpressGhostStarted:Z

.field private mNoneTouchPart:I

.field private mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

.field private mPastActionPoint:Z

.field private mPortrait:Z

.field private mPressTimestamp:J

.field private mResetAfterGhost:Z

.field private mSecondActivatePoint:I

.field private mSecondBtnPosition:I

.field private mSecondTouchablePart:I

.field private mSlider1Id:I

.field private mSlider2Id:I

.field private mSlider3Id:I

.field private mSliderHeight:I

.field private mSliderState:B

.field private mSliderWidth:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v7, 0x3ec

    const/16 v6, 0x3eb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 167
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    .line 106
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    .line 108
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLongpressGhostStarted:Z

    .line 109
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mResetAfterGhost:Z

    .line 110
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPressTimestamp:J

    .line 113
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsAnimating:Z

    .line 116
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 122
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    .line 125
    iput-boolean v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    .line 128
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    .line 131
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mNoneTouchPart:I

    .line 135
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    .line 137
    const v1, 0x10803c9

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    .line 138
    const v1, 0x10803ca

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstExpandedId:I

    .line 139
    const v1, 0x10803c8

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGotoId:I

    .line 140
    const v1, 0x10803c7

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    .line 142
    const v1, 0x10803d2

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    .line 143
    const v1, 0x10803d3

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondExpandedId:I

    .line 144
    const v1, 0x10803d1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGotoId:I

    .line 145
    const v1, 0x10803d0

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    .line 147
    const v1, 0x108042f

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    .line 148
    const v1, 0x1080431

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider2Id:I

    .line 149
    const v1, 0x1080430

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider3Id:I

    .line 152
    iput-byte v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Portrait"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iput-boolean v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    .line 176
    :goto_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    .line 177
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    .line 178
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    .line 179
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    .line 180
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    :goto_1
    sput-boolean v1, Lcom/android/internal/widget/SlidingTabSemc;->mHapticsEnabled:Z

    .line 184
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x3ed

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 185
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 187
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 189
    .local v0, display:Landroid/view/Display;
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_3

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    .line 191
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderWidth:I

    .line 192
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 193
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2, v5, v7}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 201
    :goto_2
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstExpandedId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 202
    return-void

    .line 173
    .end local v0           #display:Landroid/view/Display;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_1

    move v1, v5

    :goto_3
    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    goto/16 :goto_0

    :cond_1
    move v1, v4

    goto :goto_3

    :cond_2
    move v1, v4

    .line 181
    goto/16 :goto_1

    .line 195
    .restart local v0       #display:Landroid/view/Display;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderWidth:I

    .line 196
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    .line 197
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 198
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2, v5, v7}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SlidingTabSemc;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SlidingTabSemc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mResetAfterGhost:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SlidingTabSemc;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/widget/SlidingTabSemc;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLongpressGhostStarted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/widget/SlidingTabSemc;)B
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/SlidingTabSemc;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/SlidingTabSemc;->animateGhostMore(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/widget/SlidingTabSemc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/widget/SlidingTabSemc;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/widget/SlidingTabSemc;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private animateExpandedToDisabled(Z)V
    .locals 6
    .parameter "animateExpanded"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 510
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 511
    .local v0, goneToDispAnim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 512
    new-instance v1, Lcom/android/internal/widget/SlidingTabSemc$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/SlidingTabSemc$1;-><init>(Lcom/android/internal/widget/SlidingTabSemc;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 522
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 523
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 524
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 531
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 532
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 533
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 535
    if-eqz p1, :cond_3

    .line 536
    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 537
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 546
    :cond_0
    :goto_1
    return-void

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 527
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 538
    :cond_2
    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 539
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 542
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 543
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 544
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private animateGhost(J)V
    .locals 8
    .parameter "afterMs"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 549
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    if-nez v3, :cond_1

    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-eqz v3, :cond_1

    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, animMove:I
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 553
    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v3, v4, :cond_3

    .line 554
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_2

    .line 555
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 560
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    sub-int v0, v3, v4

    .line 570
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 572
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_5

    move v1, v0

    .line 573
    .local v1, fromX:I
    :goto_2
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_6

    move v2, v6

    .line 574
    .local v2, fromY:I
    :goto_3
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-direct {v3, v4, v7, v5, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    .line 575
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v4, 0x352

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 576
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v3, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 577
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    new-instance v4, Lcom/android/internal/widget/SlidingTabSemc$2;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/SlidingTabSemc$2;-><init>(Lcom/android/internal/widget/SlidingTabSemc;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 591
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 593
    .end local v0           #animMove:I
    .end local v1           #fromX:I
    .end local v2           #fromY:I
    :cond_1
    return-void

    .line 557
    .restart local v0       #animMove:I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 561
    :cond_3
    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 562
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_4

    .line 563
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    :goto_4
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 568
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    sub-int v0, v3, v4

    goto :goto_1

    .line 565
    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_5
    move v1, v6

    .line 572
    goto :goto_2

    .restart local v1       #fromX:I
    :cond_6
    move v2, v0

    .line 573
    goto :goto_3
.end method

.method private animateGhostMore(II)V
    .locals 10
    .parameter "amount"
    .parameter "sliderState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 597
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    if-nez v4, :cond_6

    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, animMove:I
    iput-boolean v7, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 601
    iget-byte v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v4, v7, :cond_2

    .line 602
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v4, :cond_1

    .line 603
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 607
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 608
    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    sub-int v0, v4, v5

    .line 618
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 620
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v4, :cond_4

    move v1, v0

    .line 621
    .local v1, fromX:I
    :goto_2
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v4, :cond_5

    move v2, v8

    .line 622
    .local v2, fromY:I
    :goto_3
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-direct {v3, v4, v9, v5, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 623
    .local v3, ghostMoveAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x352

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 624
    new-instance v4, Lcom/android/internal/widget/SlidingTabSemc$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/internal/widget/SlidingTabSemc$3;-><init>(Lcom/android/internal/widget/SlidingTabSemc;II)V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 639
    iput-boolean v7, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 640
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 644
    .end local v0           #animMove:I
    .end local v1           #fromX:I
    .end local v2           #fromY:I
    .end local v3           #ghostMoveAnimation:Landroid/view/animation/TranslateAnimation;
    :goto_4
    return-void

    .line 605
    .restart local v0       #animMove:I
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 609
    :cond_2
    iget-byte v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 610
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v4, :cond_3

    .line 611
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 615
    :goto_5
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 616
    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    sub-int v0, v4, v5

    goto :goto_1

    .line 613
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_4
    move v1, v8

    .line 620
    goto :goto_2

    .restart local v1       #fromX:I
    :cond_5
    move v2, v0

    .line 621
    goto :goto_3

    .line 642
    .end local v0           #animMove:I
    .end local v1           #fromX:I
    :cond_6
    invoke-direct {p0, v7}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    goto :goto_4
.end method

.method private disableButtonPress()V
    .locals 2

    .prologue
    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPressTimestamp:J

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    .line 409
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTabSemc;->dispatchGrabbedStateChangeEvent(I)V

    .line 410
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->updateExpandable()V

    .line 411
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->vibrate(J)V

    .line 412
    return-void
.end method

.method private dispatchGrabbedStateChangeEvent(I)V
    .locals 3
    .parameter "whichHandle"

    .prologue
    const/4 v2, 0x1

    .line 845
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    if-eqz v1, :cond_0

    .line 846
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 847
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    invoke-interface {v1, p0, p1}, Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    if-ne p1, v2, :cond_2

    const/4 v1, 0x2

    move v0, v1

    .line 853
    .local v0, handle:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    invoke-interface {v1, p0, v0}, Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    goto :goto_0

    .end local v0           #handle:I
    :cond_2
    move v0, v2

    .line 850
    goto :goto_1
.end method

.method private dispatchTriggerEvent(I)V
    .locals 3
    .parameter "whichHandle"

    .prologue
    const/4 v2, 0x1

    .line 827
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    if-eqz v1, :cond_0

    .line 828
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 829
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    invoke-interface {v1, p0, p1}, Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    if-ne p1, v2, :cond_2

    const/4 v1, 0x2

    move v0, v1

    .line 835
    .local v0, handle:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    invoke-interface {v1, p0, v0}, Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    goto :goto_0

    .end local v0           #handle:I
    :cond_2
    move v0, v2

    .line 832
    goto :goto_1
.end method

.method private initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V
    .locals 2
    .parameter "v"
    .parameter "icon"
    .parameter "visible"
    .parameter "id"

    .prologue
    const/4 v1, -0x2

    .line 211
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 213
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setId(I)V

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SlidingTabSemc;->addView(Landroid/view/View;)V

    .line 218
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private measureDimension(II)I
    .locals 4
    .parameter "measureSpec"
    .parameter "wantedSize"

    .prologue
    .line 270
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 271
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 272
    .local v2, specSize:I
    move v0, p2

    .line 274
    .local v0, size:I
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_1

    .line 275
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_0

    .line 277
    move v0, v2

    goto :goto_0
.end method

.method private moveAnimation(Landroid/view/View;I)V
    .locals 10
    .parameter "v"
    .parameter "toPos"

    .prologue
    const/16 v9, 0x1e

    const/16 v8, -0x1e

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 647
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_0

    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-eq v3, v6, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-nez v3, :cond_4

    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 649
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 654
    :goto_0
    const/4 v1, 0x0

    .line 655
    .local v1, animToX:I
    const/4 v2, 0x0

    .line 656
    .local v2, animToY:I
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_5

    .line 657
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v1, v3, p2

    .line 662
    :goto_1
    if-gt v1, v9, :cond_2

    if-lt v1, v8, :cond_2

    if-gt v2, v9, :cond_2

    if-ge v2, v8, :cond_7

    .line 663
    :cond_2
    iput-boolean v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsAnimating:Z

    .line 664
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    iget-byte v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v4, v6, :cond_6

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    :goto_2
    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 666
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {v0, v3, v7, v4, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 667
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 668
    new-instance v3, Lcom/android/internal/widget/SlidingTabSemc$4;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/SlidingTabSemc$4;-><init>(Lcom/android/internal/widget/SlidingTabSemc;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 676
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 684
    .end local v0           #anim:Landroid/view/animation/TranslateAnimation;
    :cond_3
    :goto_3
    return-void

    .line 651
    .end local v1           #animToX:I
    .end local v2           #animToY:I
    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 659
    .restart local v1       #animToX:I
    .restart local v2       #animToY:I
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, p2

    goto :goto_1

    .line 664
    :cond_6
    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    goto :goto_2

    .line 678
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    if-eqz v3, :cond_8

    .line 679
    invoke-direct {p0, v6}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    goto :goto_3

    .line 680
    :cond_8
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLongpressGhostStarted:Z

    if-eqz v3, :cond_3

    .line 681
    iput-boolean v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    goto :goto_3
.end method

.method private moveControl(F)V
    .locals 3
    .parameter "newPos"

    .prologue
    .line 439
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 441
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    .line 443
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    .line 444
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 447
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 448
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 450
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 452
    .local v0, moveBy:I
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    float-to-int v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 457
    :goto_0
    return-void

    .line 454
    .end local v0           #moveBy:I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 455
    .restart local v0       #moveBy:I
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    float-to-int v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    goto :goto_0
.end method

.method private resetSlider(Z)V
    .locals 3
    .parameter "animateExpanded"

    .prologue
    const/4 v2, 0x0

    .line 493
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SlidingTabSemc;->animateExpandedToDisabled(Z)V

    .line 494
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 495
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mResetAfterGhost:Z

    .line 498
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsAnimating:Z

    .line 499
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 500
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    .line 501
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    .line 502
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLongpressGhostStarted:Z

    .line 503
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    .line 504
    iput-byte v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    .line 505
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    .line 506
    return-void
.end method

.method private setBackgroundLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 241
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderWidth:I

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0
.end method

.method private setLayout(Landroid/widget/ImageView;I)V
    .locals 6
    .parameter "v"
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    .line 231
    iget-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 233
    .local v1, w:I
    sub-int v2, p2, v1

    add-int v3, p2, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 238
    .end local v1           #w:I
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 236
    .local v0, h:I
    sub-int v2, p2, v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int v4, p2, v0

    invoke-virtual {p1, v5, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0
.end method

.method private sliderButtonReleaseAfter(I)V
    .locals 3
    .parameter "pos"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 430
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v0, v1, :cond_1

    .line 431
    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->dispatchTriggerEvent(I)V

    .line 435
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    .line 436
    return-void

    .line 432
    :cond_1
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v0, v2, :cond_0

    .line 433
    invoke-direct {p0, v2}, Lcom/android/internal/widget/SlidingTabSemc;->dispatchTriggerEvent(I)V

    goto :goto_0
.end method

.method private sliderButtonReleaseBefore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 416
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTabSemc;->dispatchGrabbedStateChangeEvent(I)V

    .line 418
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPressTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    .line 421
    const/4 v0, 0x2

    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->animateGhostMore(II)V

    .line 425
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v1, v4, :cond_1

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->moveAnimation(Landroid/view/View;I)V

    .line 426
    return-void

    .line 423
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mResetAfterGhost:Z

    goto :goto_0

    .line 425
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    goto :goto_1
.end method

.method private sliderPastActivatePoint()V
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    .line 402
    return-void
.end method

.method private sliderTouchEvent(IFFI)Z
    .locals 6
    .parameter "action"
    .parameter "xPos"
    .parameter "yPos"
    .parameter "pointerId"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 313
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_1

    move v0, p2

    .line 315
    .local v0, touchVal:F
    :goto_0
    if-eqz p1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_8

    .line 318
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_2

    move v1, p3

    :goto_1
    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mNoneTouchPart:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    move v1, v3

    .line 396
    :goto_2
    return v1

    .end local v0           #touchVal:F
    :cond_1
    move v0, p3

    .line 313
    goto :goto_0

    .restart local v0       #touchVal:F
    :cond_2
    move v1, p2

    .line 318
    goto :goto_1

    .line 322
    :cond_3
    float-to-int v1, v0

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    .line 324
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstTouchablePart:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    .line 325
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    if-eqz v1, :cond_4

    .line 326
    invoke-direct {p0, v4}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    .line 329
    :cond_4
    iput-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    .line 330
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->disableButtonPress()V

    .line 331
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    .line 332
    iput p4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    .line 395
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->invalidate()V

    move v1, v3

    .line 396
    goto :goto_2

    .line 333
    :cond_6
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondTouchablePart:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    .line 334
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    if-eqz v1, :cond_7

    .line 335
    invoke-direct {p0, v4}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    .line 338
    :cond_7
    iput-byte v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    .line 339
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->disableButtonPress()V

    .line 340
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    .line 341
    iput p4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    goto :goto_3

    .line 343
    :cond_8
    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-eqz v1, :cond_b

    if-eq p1, v3, :cond_9

    const/4 v1, 0x6

    if-ne p1, v1, :cond_b

    .line 347
    :cond_9
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    .line 348
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    if-eqz v1, :cond_a

    .line 349
    float-to-int v1, v0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->sliderButtonReleaseAfter(I)V

    goto :goto_3

    .line 351
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->sliderButtonReleaseBefore()V

    goto :goto_3

    .line 353
    :cond_b
    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-eqz v1, :cond_5

    if-ne p1, v5, :cond_5

    .line 356
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    add-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_c

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    sub-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_c

    move v1, v4

    .line 357
    goto :goto_2

    .line 359
    :cond_c
    iput v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    .line 362
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    if-nez v1, :cond_12

    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v1, v3, :cond_d

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondActivatePoint:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_e

    :cond_d
    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v1, v5, :cond_12

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstActivatePoint:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_12

    .line 368
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->sliderPastActivatePoint()V

    .line 378
    :cond_f
    :goto_4
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    if-eqz v1, :cond_10

    .line 379
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    if-lez v1, :cond_15

    .line 380
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    .line 386
    :cond_10
    :goto_5
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    if-nez v1, :cond_11

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    add-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_11

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    const/16 v2, 0x14

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    .line 390
    :cond_11
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    .line 391
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->moveControl(F)V

    goto/16 :goto_3

    .line 369
    :cond_12
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    if-eqz v1, :cond_f

    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v1, v3, :cond_13

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondActivatePoint:I

    const/16 v2, 0xa

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_14

    :cond_13
    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v1, v5, :cond_f

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstActivatePoint:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_f

    .line 375
    :cond_14
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    goto :goto_4

    .line 382
    :cond_15
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    goto :goto_5
.end method

.method private updateExpandable()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 461
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 462
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 464
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 465
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider2Id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 466
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 467
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGotoId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 474
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 487
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 489
    const-wide/16 v0, 0x258

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->animateGhost(J)V

    .line 490
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGotoId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 475
    :cond_2
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider3Id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v0, :cond_3

    .line 479
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGotoId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 480
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 485
    :goto_2
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 482
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGotoId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 687
    sget-boolean v0, Lcom/android/internal/widget/SlidingTabSemc;->mHapticsEnabled:Z

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mVibrator:Landroid/os/Vibrator;

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 694
    :cond_1
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->setBackgroundLayout()V

    .line 225
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 226
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 251
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderWidth:I

    invoke-direct {p0, p1, v3}, Lcom/android/internal/widget/SlidingTabSemc;->measureDimension(II)I

    move-result v2

    .line 252
    .local v2, width:I
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    invoke-direct {p0, p2, v3}, Lcom/android/internal/widget/SlidingTabSemc;->measureDimension(II)I

    move-result v0

    .line 254
    .local v0, height:I
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_0

    move v1, v2

    .line 255
    .local v1, length:I
    :goto_0
    int-to-double v3, v1

    const-wide v5, 0x3fc147ae147ae148L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    .line 256
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    sub-int v3, v1, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    .line 258
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstTouchablePart:I

    .line 259
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstTouchablePart:I

    sub-int v3, v1, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondTouchablePart:I

    .line 261
    int-to-double v3, v1

    const-wide v5, 0x3fd3333333333333L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstActivatePoint:I

    .line 262
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstActivatePoint:I

    sub-int v3, v1, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondActivatePoint:I

    .line 264
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_1

    move v3, v0

    :goto_1
    int-to-double v3, v3

    const-wide v5, 0x3fd999999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mNoneTouchPart:I

    .line 266
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/SlidingTabSemc;->setMeasuredDimension(II)V

    .line 267
    return-void

    .end local v1           #length:I
    :cond_0
    move v1, v0

    .line 254
    goto :goto_0

    .restart local v1       #length:I
    :cond_1
    move v3, v2

    .line 264
    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v6, -0x1

    .line 285
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsAnimating:Z

    if-eqz v4, :cond_0

    .line 286
    const/4 v4, 0x1

    .line 309
    :goto_0
    return v4

    .line 289
    :cond_0
    const/4 v3, 0x0

    .line 290
    .local v3, touchHandled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v0, v4, 0x8

    .line 292
    .local v0, currentIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 294
    .local v1, currentPointerId:I
    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    if-eq v4, v6, :cond_1

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    if-ne v4, v1, :cond_3

    .line 295
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-direct {p0, v4, v5, v6, v1}, Lcom/android/internal/widget/SlidingTabSemc;->sliderTouchEvent(IFFI)Z

    move-result v3

    :cond_2
    :goto_1
    move v4, v3

    .line 309
    goto :goto_0

    .line 298
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 299
    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 301
    .local v2, pointerIndex:I
    if-eq v2, v6, :cond_4

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/internal/widget/SlidingTabSemc;->sliderTouchEvent(IFFI)Z

    move-result v3

    goto :goto_1

    .line 305
    :cond_4
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    goto :goto_1
.end method

.method public setHoldAfterTrigger(ZZ)V
    .locals 0
    .parameter "holdLeft"
    .parameter "holdRight"

    .prologue
    .line 811
    return-void
.end method

.method public setLeftHintText(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 783
    return-void
.end method

.method public setLeftTabResources(IIII)V
    .locals 0
    .parameter "disabledId"
    .parameter "expandedId"
    .parameter "gotoId"
    .parameter "ghostId"

    .prologue
    .line 771
    iput p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    .line 772
    iput p2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstExpandedId:I

    .line 773
    iput p3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGotoId:I

    .line 774
    iput p4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    .line 775
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 819
    iput-object p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    .line 820
    return-void
.end method

.method public setRightHintText(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 808
    return-void
.end method

.method public setRightTabResources(IIII)V
    .locals 0
    .parameter "disabledId"
    .parameter "expandedId"
    .parameter "gotoId"
    .parameter "ghostId"

    .prologue
    .line 796
    iput p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    .line 797
    iput p2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondExpandedId:I

    .line 798
    iput p3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGotoId:I

    .line 799
    iput p4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    .line 800
    return-void
.end method

.method public setSliderBackground(III)V
    .locals 2
    .parameter "sliderNormalId"
    .parameter "sliderRightId"
    .parameter "sliderLeftId"

    .prologue
    .line 747
    iput p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    .line 748
    iput p2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider2Id:I

    .line 749
    iput p3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider3Id:I

    .line 751
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    .line 756
    :goto_0
    return-void

    .line 754
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderWidth:I

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    .line 208
    return-void
.end method

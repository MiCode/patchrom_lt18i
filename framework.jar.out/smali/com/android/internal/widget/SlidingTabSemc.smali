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

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 167
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    .line 106
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    .line 108
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLongpressGhostStarted:Z

    .line 109
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mResetAfterGhost:Z

    .line 110
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPressTimestamp:J

    .line 113
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsAnimating:Z

    .line 116
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 122
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

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
    const v1, 0x108061f

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    .line 138
    const v1, 0x1080620

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstExpandedId:I

    .line 139
    const v1, 0x108061e

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGotoId:I

    .line 140
    const v1, 0x108061d

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    .line 142
    const v1, 0x1080627

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    .line 143
    const v1, 0x1080628

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondExpandedId:I

    .line 144
    const v1, 0x1080626

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGotoId:I

    .line 145
    const v1, 0x1080625

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    .line 147
    const v1, 0x1080685

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    .line 148
    const v1, 0x1080687

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider2Id:I

    .line 149
    const v1, 0x1080686

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider3Id:I

    .line 152
    iput-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "Portrait"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    .line 177
    :goto_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    .line 178
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    .line 179
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    .line 180
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    .line 181
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "haptic_feedback_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/android/internal/widget/SlidingTabSemc;->mHapticsEnabled:Z

    .line 185
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0x3ed

    invoke-direct {p0, v1, v4, v2, v5}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 186
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0x3ea

    invoke-direct {p0, v1, v4, v3, v5}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 189
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 192
    .local v0, display:Landroid/view/Display;
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    .line 194
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderWidth:I

    .line 195
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v1, v4, v2, v6}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 197
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v1, v4, v2, v7}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 208
    :goto_2
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstExpandedId:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v4, 0x3e9

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 210
    return-void

    .line 173
    .end local v0           #display:Landroid/view/Display;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    goto/16 :goto_0

    :cond_1
    move v1, v3

    goto :goto_3

    :cond_2
    move v1, v3

    .line 182
    goto/16 :goto_1

    .line 200
    .restart local v0       #display:Landroid/view/Display;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderWidth:I

    .line 201
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    .line 202
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v1, v4, v2, v6}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 204
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v1, v4, v2, v7}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

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

    .line 535
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 536
    .local v0, goneToDispAnim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 537
    new-instance v1, Lcom/android/internal/widget/SlidingTabSemc$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/SlidingTabSemc$1;-><init>(Lcom/android/internal/widget/SlidingTabSemc;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 547
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 560
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    if-eqz p1, :cond_3

    .line 565
    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 566
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 575
    :cond_0
    :goto_1
    return-void

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 555
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 567
    :cond_2
    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 568
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 571
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 572
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 573
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private animateGhost(J)V
    .locals 8
    .parameter "afterMs"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 578
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    if-nez v4, :cond_1

    iget-byte v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-eqz v4, :cond_1

    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, animMove:I
    iput-boolean v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 582
    iget-byte v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v4, v5, :cond_3

    .line 583
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v4, :cond_2

    .line 584
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 590
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 591
    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    sub-int v0, v4, v5

    .line 603
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 605
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v4, :cond_5

    move v1, v0

    .line 606
    .local v1, fromX:I
    :goto_2
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v4, :cond_6

    move v2, v3

    .line 607
    .local v2, fromY:I
    :goto_3
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-direct {v3, v4, v7, v5, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    .line 608
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v4, 0x352

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 609
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v3, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 610
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    new-instance v4, Lcom/android/internal/widget/SlidingTabSemc$2;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/SlidingTabSemc$2;-><init>(Lcom/android/internal/widget/SlidingTabSemc;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 624
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 626
    .end local v0           #animMove:I
    .end local v1           #fromX:I
    .end local v2           #fromY:I
    :cond_1
    return-void

    .line 587
    .restart local v0       #animMove:I
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 592
    :cond_3
    iget-byte v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 593
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v4, :cond_4

    .line 594
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 600
    :goto_4
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 601
    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    sub-int v0, v4, v5

    goto :goto_1

    .line 597
    :cond_4
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_5
    move v1, v3

    .line 605
    goto :goto_2

    .restart local v1       #fromX:I
    :cond_6
    move v2, v0

    .line 606
    goto :goto_3
.end method

.method private animateGhostMore(II)V
    .locals 10
    .parameter "amount"
    .parameter "sliderState"

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 630
    iget-boolean v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    if-nez v5, :cond_6

    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, animMove:I
    iput-boolean v8, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 634
    iget-byte v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v5, v8, :cond_2

    .line 635
    iget-boolean v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v5, :cond_1

    .line 636
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 642
    :goto_0
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    invoke-direct {p0, v5, v6}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 643
    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    sub-int v0, v5, v6

    .line 655
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 657
    iget-boolean v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v5, :cond_4

    move v1, v0

    .line 658
    .local v1, fromX:I
    :goto_2
    iget-boolean v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v5, :cond_5

    move v2, v4

    .line 659
    .local v2, fromY:I
    :goto_3
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-direct {v3, v4, v9, v5, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 660
    .local v3, ghostMoveAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x352

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 661
    new-instance v4, Lcom/android/internal/widget/SlidingTabSemc$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/internal/widget/SlidingTabSemc$3;-><init>(Lcom/android/internal/widget/SlidingTabSemc;II)V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 676
    iput-boolean v8, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 677
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 681
    .end local v0           #animMove:I
    .end local v1           #fromX:I
    .end local v2           #fromY:I
    .end local v3           #ghostMoveAnimation:Landroid/view/animation/TranslateAnimation;
    :goto_4
    return-void

    .line 639
    .restart local v0       #animMove:I
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 644
    :cond_2
    iget-byte v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 645
    iget-boolean v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v5, :cond_3

    .line 646
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 652
    :goto_5
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    invoke-direct {p0, v5, v6}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 653
    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    sub-int v0, v5, v6

    goto :goto_1

    .line 649
    :cond_3
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_4
    move v1, v4

    .line 657
    goto :goto_2

    .restart local v1       #fromX:I
    :cond_5
    move v2, v0

    .line 658
    goto :goto_3

    .line 679
    .end local v0           #animMove:I
    .end local v1           #fromX:I
    :cond_6
    invoke-direct {p0, v8}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    goto :goto_4
.end method

.method private disableButtonPress()V
    .locals 2

    .prologue
    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPressTimestamp:J

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    .line 424
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTabSemc;->dispatchGrabbedStateChangeEvent(I)V

    .line 425
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->updateExpandable()V

    .line 426
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->vibrate(J)V

    .line 427
    return-void
.end method

.method private dispatchGrabbedStateChangeEvent(I)V
    .locals 2
    .parameter "whichHandle"

    .prologue
    const/4 v0, 0x1

    .line 886
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    if-eqz v1, :cond_0

    .line 887
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 888
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    invoke-interface {v1, p0, p1}, Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    .line 895
    .local v0, handle:I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    invoke-interface {v1, p0, v0}, Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .parameter "whichHandle"

    .prologue
    const/4 v0, 0x1

    .line 867
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    if-eqz v1, :cond_0

    .line 868
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 869
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    invoke-interface {v1, p0, p1}, Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    .line 876
    .local v0, handle:I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    invoke-interface {v1, p0, v0}, Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V
    .locals 2
    .parameter "v"
    .parameter "icon"
    .parameter "visible"
    .parameter "id"

    .prologue
    const/4 v1, -0x2

    .line 219
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 221
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setId(I)V

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SlidingTabSemc;->addView(Landroid/view/View;)V

    .line 226
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private measureDimension(II)I
    .locals 4
    .parameter "measureSpec"
    .parameter "wantedSize"

    .prologue
    .line 285
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 286
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 287
    .local v2, specSize:I
    move v0, p2

    .line 289
    .local v0, size:I
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_1

    .line 290
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 291
    :cond_1
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_0

    .line 292
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

    .line 684
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

    .line 686
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 693
    :goto_0
    const/4 v1, 0x0

    .line 694
    .local v1, animToX:I
    const/4 v2, 0x0

    .line 695
    .local v2, animToY:I
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_5

    .line 696
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v1, v3, p2

    .line 701
    :goto_1
    if-gt v1, v9, :cond_2

    if-lt v1, v8, :cond_2

    if-gt v2, v9, :cond_2

    if-ge v2, v8, :cond_7

    .line 702
    :cond_2
    iput-boolean v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsAnimating:Z

    .line 703
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v3, v6, :cond_6

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    :goto_2
    invoke-direct {p0, v4, v3}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 706
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {v0, v3, v7, v4, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 707
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 708
    new-instance v3, Lcom/android/internal/widget/SlidingTabSemc$4;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/SlidingTabSemc$4;-><init>(Lcom/android/internal/widget/SlidingTabSemc;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 716
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 724
    .end local v0           #anim:Landroid/view/animation/TranslateAnimation;
    :cond_3
    :goto_3
    return-void

    .line 689
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

    .line 698
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

    .line 703
    :cond_6
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    goto :goto_2

    .line 718
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    if-eqz v3, :cond_8

    .line 719
    invoke-direct {p0, v6}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    goto :goto_3

    .line 720
    :cond_8
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLongpressGhostStarted:Z

    if-eqz v3, :cond_3

    .line 721
    iput-boolean v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    goto :goto_3
.end method

.method private moveControl(F)V
    .locals 3
    .parameter "newPos"

    .prologue
    .line 456
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 458
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    .line 460
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    .line 461
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 464
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 465
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 467
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 468
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 469
    .local v0, moveBy:I
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    float-to-int v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 474
    :goto_0
    return-void

    .line 471
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

    .line 472
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

    .line 518
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SlidingTabSemc;->animateExpandedToDisabled(Z)V

    .line 519
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 520
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 522
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mResetAfterGhost:Z

    .line 523
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsAnimating:Z

    .line 524
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 525
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    .line 526
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    .line 527
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLongpressGhostStarted:Z

    .line 528
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    .line 529
    iput-byte v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    .line 530
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    .line 531
    return-void
.end method

.method private setBackgroundLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 256
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 261
    :goto_0
    return-void

    .line 259
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

    .line 246
    iget-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v2, :cond_0

    .line 247
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 248
    .local v1, w:I
    sub-int v2, p2, v1

    add-int v3, p2, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 253
    .end local v1           #w:I
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 251
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

    .line 447
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v0, v1, :cond_1

    .line 448
    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->dispatchTriggerEvent(I)V

    .line 452
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    .line 453
    return-void

    .line 449
    :cond_1
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v0, v2, :cond_0

    .line 450
    invoke-direct {p0, v2}, Lcom/android/internal/widget/SlidingTabSemc;->dispatchTriggerEvent(I)V

    goto :goto_0
.end method

.method private sliderButtonReleaseBefore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 431
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTabSemc;->dispatchGrabbedStateChangeEvent(I)V

    .line 433
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPressTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    .line 437
    const/4 v0, 0x2

    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->animateGhostMore(II)V

    .line 441
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/SlidingTabSemc;->moveAnimation(Landroid/view/View;I)V

    .line 443
    return-void

    .line 439
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mResetAfterGhost:Z

    goto :goto_0

    .line 441
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    goto :goto_1
.end method

.method private sliderPastActivatePoint()V
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    .line 417
    return-void
.end method

.method private sliderTouchEvent(IFFI)Z
    .locals 6
    .parameter "action"
    .parameter "xPos"
    .parameter "yPos"
    .parameter "pointerId"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 328
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_2

    move v0, p2

    .line 330
    .local v0, touchVal:F
    :goto_0
    if-eqz p1, :cond_0

    const/4 v3, 0x5

    if-ne p1, v3, :cond_9

    .line 333
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_3

    .end local p3
    :goto_1
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mNoneTouchPart:I

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gez v3, :cond_4

    move v1, v2

    .line 411
    :cond_1
    :goto_2
    return v1

    .end local v0           #touchVal:F
    .restart local p3
    :cond_2
    move v0, p3

    .line 328
    goto :goto_0

    .restart local v0       #touchVal:F
    :cond_3
    move p3, p2

    .line 333
    goto :goto_1

    .line 337
    .end local p3
    :cond_4
    float-to-int v3, v0

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    .line 339
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstTouchablePart:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_7

    .line 340
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    if-eqz v3, :cond_5

    .line 341
    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    .line 344
    :cond_5
    iput-byte v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    .line 345
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->disableButtonPress()V

    .line 346
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    .line 347
    iput p4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    .line 410
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->invalidate()V

    move v1, v2

    .line 411
    goto :goto_2

    .line 348
    :cond_7
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondTouchablePart:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_6

    .line 349
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    if-eqz v3, :cond_8

    .line 350
    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    .line 353
    :cond_8
    iput-byte v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    .line 354
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->disableButtonPress()V

    .line 355
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    .line 356
    iput p4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    goto :goto_3

    .line 358
    .restart local p3
    :cond_9
    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-eqz v3, :cond_c

    if-eq p1, v2, :cond_a

    const/4 v3, 0x6

    if-ne p1, v3, :cond_c

    .line 362
    :cond_a
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    .line 363
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    if-eqz v1, :cond_b

    .line 364
    float-to-int v1, v0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->sliderButtonReleaseAfter(I)V

    goto :goto_3

    .line 366
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->sliderButtonReleaseBefore()V

    goto :goto_3

    .line 368
    :cond_c
    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-eqz v3, :cond_6

    if-ne p1, v4, :cond_6

    .line 371
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    add-float/2addr v3, v5

    cmpg-float v3, v0, v3

    if-gez v3, :cond_d

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    sub-float/2addr v3, v5

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_1

    .line 374
    :cond_d
    iput v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    .line 377
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    if-nez v3, :cond_13

    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v3, v2, :cond_e

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondActivatePoint:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_f

    :cond_e
    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v3, v4, :cond_13

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstActivatePoint:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_13

    .line 383
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->sliderPastActivatePoint()V

    .line 393
    :cond_10
    :goto_4
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    if-eqz v1, :cond_11

    .line 394
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    if-lez v1, :cond_16

    .line 395
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    .line 401
    :cond_11
    :goto_5
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    if-nez v1, :cond_12

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    add-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_12

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    .line 405
    :cond_12
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    .line 406
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->moveControl(F)V

    goto/16 :goto_3

    .line 384
    :cond_13
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    if-eqz v3, :cond_10

    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v3, v2, :cond_14

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondActivatePoint:I

    add-int/lit8 v3, v3, -0xa

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_15

    :cond_14
    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v3, v4, :cond_10

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstActivatePoint:I

    add-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_10

    .line 390
    :cond_15
    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    goto :goto_4

    .line 397
    :cond_16
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    goto :goto_5
.end method

.method private updateExpandable()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 478
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 479
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 481
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 482
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider2Id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGotoId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 487
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 495
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 512
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 514
    const-wide/16 v0, 0x258

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->animateGhost(J)V

    .line 515
    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGotoId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 492
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 496
    :cond_2
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider3Id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 498
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 499
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v0, :cond_3

    .line 500
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGotoId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 502
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 510
    :goto_2
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 505
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGotoId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 507
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
    .line 727
    sget-boolean v0, Lcom/android/internal/widget/SlidingTabSemc;->mHapticsEnabled:Z

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mVibrator:Landroid/os/Vibrator;

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 734
    :cond_1
    return-void
.end method


# virtual methods
.method protected handleLayoutDirection()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->setBackgroundLayout()V

    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 234
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
    .line 266
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderWidth:I

    invoke-direct {p0, p1, v3}, Lcom/android/internal/widget/SlidingTabSemc;->measureDimension(II)I

    move-result v2

    .line 267
    .local v2, width:I
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    invoke-direct {p0, p2, v3}, Lcom/android/internal/widget/SlidingTabSemc;->measureDimension(II)I

    move-result v0

    .line 269
    .local v0, height:I
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_0

    move v1, v2

    .line 270
    .local v1, length:I
    :goto_0
    int-to-double v3, v1

    const-wide v5, 0x3fc147ae147ae148L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    .line 271
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    sub-int v3, v1, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    .line 273
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstTouchablePart:I

    .line 274
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstTouchablePart:I

    sub-int v3, v1, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondTouchablePart:I

    .line 276
    int-to-double v3, v1

    const-wide v5, 0x3fd3333333333333L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstActivatePoint:I

    .line 277
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstActivatePoint:I

    sub-int v3, v1, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondActivatePoint:I

    .line 279
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_1

    move v3, v0

    :goto_1
    int-to-double v3, v3

    const-wide v5, 0x3fd999999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mNoneTouchPart:I

    .line 281
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/SlidingTabSemc;->setMeasuredDimension(II)V

    .line 282
    return-void

    .end local v1           #length:I
    :cond_0
    move v1, v0

    .line 269
    goto :goto_0

    .restart local v1       #length:I
    :cond_1
    move v3, v2

    .line 279
    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v6, -0x1

    .line 300
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsAnimating:Z

    if-eqz v4, :cond_1

    .line 301
    const/4 v3, 0x1

    .line 324
    :cond_0
    :goto_0
    return v3

    .line 304
    :cond_1
    const/4 v3, 0x0

    .line 305
    .local v3, touchHandled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v0, v4, 0x8

    .line 307
    .local v0, currentIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 309
    .local v1, currentPointerId:I
    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    if-eq v4, v6, :cond_2

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    if-ne v4, v1, :cond_3

    .line 310
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-direct {p0, v4, v5, v6, v1}, Lcom/android/internal/widget/SlidingTabSemc;->sliderTouchEvent(IFFI)Z

    move-result v3

    goto :goto_0

    .line 313
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 314
    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 316
    .local v2, pointerIndex:I
    if-eq v2, v6, :cond_4

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/internal/widget/SlidingTabSemc;->sliderTouchEvent(IFFI)Z

    move-result v3

    goto :goto_0

    .line 320
    :cond_4
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    goto :goto_0
.end method

.method public setHoldAfterTrigger(ZZ)V
    .locals 0
    .parameter "holdLeft"
    .parameter "holdRight"

    .prologue
    .line 851
    return-void
.end method

.method public setLeftHintText(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 823
    return-void
.end method

.method public setLeftTabResources(IIII)V
    .locals 0
    .parameter "disabledId"
    .parameter "expandedId"
    .parameter "gotoId"
    .parameter "ghostId"

    .prologue
    .line 811
    iput p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    .line 812
    iput p2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstExpandedId:I

    .line 813
    iput p3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGotoId:I

    .line 814
    iput p4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    .line 815
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 859
    iput-object p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    .line 860
    return-void
.end method

.method public setRightHintText(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 848
    return-void
.end method

.method public setRightTabResources(IIII)V
    .locals 0
    .parameter "disabledId"
    .parameter "expandedId"
    .parameter "gotoId"
    .parameter "ghostId"

    .prologue
    .line 836
    iput p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    .line 837
    iput p2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondExpandedId:I

    .line 838
    iput p3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGotoId:I

    .line 839
    iput p4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    .line 840
    return-void
.end method

.method public setSliderBackground(III)V
    .locals 2
    .parameter "sliderNormalId"
    .parameter "sliderRightId"
    .parameter "sliderLeftId"

    .prologue
    .line 787
    iput p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    .line 788
    iput p2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider2Id:I

    .line 789
    iput p3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider3Id:I

    .line 791
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    .line 796
    :goto_0
    return-void

    .line 794
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
    .line 214
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    .line 216
    return-void
.end method

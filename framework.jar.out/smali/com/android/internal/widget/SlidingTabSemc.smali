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

.field private static final NONE_TOUCH_PART_VERTICALLY:D = 0.5

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

.field private mLanguageIsRtl:Z

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

    .line 171
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    .line 107
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    .line 109
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLongpressGhostStarted:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mResetAfterGhost:Z

    .line 111
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPressTimestamp:J

    .line 114
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsAnimating:Z

    .line 117
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 123
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    .line 126
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    .line 129
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLanguageIsRtl:Z

    .line 132
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    .line 135
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mNoneTouchPart:I

    .line 139
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    .line 141
    const v1, 0x108061f

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    .line 142
    const v1, 0x1080620

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstExpandedId:I

    .line 143
    const v1, 0x108061e

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGotoId:I

    .line 144
    const v1, 0x108061d

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    .line 146
    const v1, 0x1080627

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    .line 147
    const v1, 0x1080628

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondExpandedId:I

    .line 148
    const v1, 0x1080626

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGotoId:I

    .line 149
    const v1, 0x1080625

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    .line 151
    const v1, 0x1080686

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    .line 152
    const v1, 0x1080688

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider2Id:I

    .line 153
    const v1, 0x1080687

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider3Id:I

    .line 156
    iput-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    .line 174
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "Portrait"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    .line 181
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v4, 0x111

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLanguageIsRtl:Z

    .line 183
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    .line 184
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    .line 185
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    .line 186
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    .line 187
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "haptic_feedback_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/android/internal/widget/SlidingTabSemc;->mHapticsEnabled:Z

    .line 191
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0x3ed

    invoke-direct {p0, v1, v4, v2, v5}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 192
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0x3ea

    invoke-direct {p0, v1, v4, v3, v5}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 195
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 198
    .local v0, display:Landroid/view/Display;
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_3

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    .line 200
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderWidth:I

    .line 201
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v1, v4, v2, v6}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 203
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v1, v4, v2, v7}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 214
    :goto_2
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstExpandedId:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v4, 0x3e9

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 216
    return-void

    .line 177
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

    .line 188
    goto/16 :goto_1

    .line 206
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

    .line 207
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    .line 208
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v1, v4, v2, v6}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 210
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
    .line 45
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SlidingTabSemc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mResetAfterGhost:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SlidingTabSemc;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/widget/SlidingTabSemc;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLongpressGhostStarted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/widget/SlidingTabSemc;)B
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/SlidingTabSemc;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/SlidingTabSemc;->animateGhostMore(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/widget/SlidingTabSemc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/widget/SlidingTabSemc;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/widget/SlidingTabSemc;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private animateExpandedToDisabled(Z)V
    .locals 6
    .parameter "animateExpanded"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 548
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 549
    .local v0, goneToDispAnim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 550
    new-instance v1, Lcom/android/internal/widget/SlidingTabSemc$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/SlidingTabSemc$1;-><init>(Lcom/android/internal/widget/SlidingTabSemc;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 560
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 561
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 563
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 572
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 573
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 577
    if-eqz p1, :cond_3

    .line 578
    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 579
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 588
    :cond_0
    :goto_1
    return-void

    .line 566
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 568
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 580
    :cond_2
    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 584
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 586
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

    .line 591
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    if-nez v4, :cond_1

    iget-byte v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-eqz v4, :cond_1

    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, animMove:I
    iput-boolean v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 595
    iget-byte v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v4, v5, :cond_3

    .line 596
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v4, :cond_2

    .line 597
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 603
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 604
    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    sub-int v0, v4, v5

    .line 616
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 618
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v4, :cond_5

    move v1, v0

    .line 619
    .local v1, fromX:I
    :goto_2
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v4, :cond_6

    move v2, v3

    .line 620
    .local v2, fromY:I
    :goto_3
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-direct {v3, v4, v7, v5, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    .line 621
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v4, 0x352

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 622
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v3, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 623
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    new-instance v4, Lcom/android/internal/widget/SlidingTabSemc$2;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/SlidingTabSemc$2;-><init>(Lcom/android/internal/widget/SlidingTabSemc;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 637
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 639
    .end local v0           #animMove:I
    .end local v1           #fromX:I
    .end local v2           #fromY:I
    :cond_1
    return-void

    .line 600
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

    .line 605
    :cond_3
    iget-byte v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 606
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v4, :cond_4

    .line 607
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 613
    :goto_4
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 614
    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    sub-int v0, v4, v5

    goto :goto_1

    .line 610
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

    .line 618
    goto :goto_2

    .restart local v1       #fromX:I
    :cond_6
    move v2, v0

    .line 619
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

    .line 643
    iget-boolean v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    if-nez v5, :cond_6

    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, animMove:I
    iput-boolean v8, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 647
    iget-byte v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v5, v8, :cond_2

    .line 648
    iget-boolean v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v5, :cond_1

    .line 649
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 655
    :goto_0
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    invoke-direct {p0, v5, v6}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 656
    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    sub-int v0, v5, v6

    .line 668
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 670
    iget-boolean v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v5, :cond_4

    move v1, v0

    .line 671
    .local v1, fromX:I
    :goto_2
    iget-boolean v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v5, :cond_5

    move v2, v4

    .line 672
    .local v2, fromY:I
    :goto_3
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-direct {v3, v4, v9, v5, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 673
    .local v3, ghostMoveAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x352

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 674
    new-instance v4, Lcom/android/internal/widget/SlidingTabSemc$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/internal/widget/SlidingTabSemc$3;-><init>(Lcom/android/internal/widget/SlidingTabSemc;II)V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 689
    iput-boolean v8, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 690
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 694
    .end local v0           #animMove:I
    .end local v1           #fromX:I
    .end local v2           #fromY:I
    .end local v3           #ghostMoveAnimation:Landroid/view/animation/TranslateAnimation;
    :goto_4
    return-void

    .line 652
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

    .line 657
    :cond_2
    iget-byte v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 658
    iget-boolean v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v5, :cond_3

    .line 659
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 665
    :goto_5
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    invoke-direct {p0, v5, v6}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 666
    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    sub-int v0, v5, v6

    goto :goto_1

    .line 662
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

    .line 670
    goto :goto_2

    .restart local v1       #fromX:I
    :cond_5
    move v2, v0

    .line 671
    goto :goto_3

    .line 692
    .end local v0           #animMove:I
    .end local v1           #fromX:I
    :cond_6
    invoke-direct {p0, v8}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    goto :goto_4
.end method

.method private disableButtonPress()V
    .locals 2

    .prologue
    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPressTimestamp:J

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    .line 437
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTabSemc;->dispatchGrabbedStateChangeEvent(I)V

    .line 438
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->updateExpandable()V

    .line 439
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->vibrate(J)V

    .line 440
    return-void
.end method

.method private dispatchGrabbedStateChangeEvent(I)V
    .locals 2
    .parameter "whichHandle"

    .prologue
    const/4 v0, 0x1

    .line 899
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    if-eqz v1, :cond_0

    .line 900
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 901
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    invoke-interface {v1, p0, p1}, Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    .line 908
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

    .line 880
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    if-eqz v1, :cond_0

    .line 881
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 882
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    invoke-interface {v1, p0, p1}, Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    .line 889
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

    .line 225
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 227
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setId(I)V

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SlidingTabSemc;->addView(Landroid/view/View;)V

    .line 232
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private measureDimension(II)I
    .locals 4
    .parameter "measureSpec"
    .parameter "wantedSize"

    .prologue
    .line 292
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 293
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 294
    .local v2, specSize:I
    move v0, p2

    .line 296
    .local v0, size:I
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_1

    .line 297
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 298
    :cond_1
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_0

    .line 299
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

    .line 697
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

    .line 699
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 706
    :goto_0
    const/4 v1, 0x0

    .line 707
    .local v1, animToX:I
    const/4 v2, 0x0

    .line 708
    .local v2, animToY:I
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_5

    .line 709
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v1, v3, p2

    .line 714
    :goto_1
    if-gt v1, v9, :cond_2

    if-lt v1, v8, :cond_2

    if-gt v2, v9, :cond_2

    if-ge v2, v8, :cond_7

    .line 715
    :cond_2
    iput-boolean v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsAnimating:Z

    .line 716
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v3, v6, :cond_6

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    :goto_2
    invoke-direct {p0, v4, v3}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 719
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {v0, v3, v7, v4, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 720
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 721
    new-instance v3, Lcom/android/internal/widget/SlidingTabSemc$4;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/SlidingTabSemc$4;-><init>(Lcom/android/internal/widget/SlidingTabSemc;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 729
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 737
    .end local v0           #anim:Landroid/view/animation/TranslateAnimation;
    :cond_3
    :goto_3
    return-void

    .line 702
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

    .line 711
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

    .line 716
    :cond_6
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    goto :goto_2

    .line 731
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    if-eqz v3, :cond_8

    .line 732
    invoke-direct {p0, v6}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    goto :goto_3

    .line 733
    :cond_8
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLongpressGhostStarted:Z

    if-eqz v3, :cond_3

    .line 734
    iput-boolean v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    goto :goto_3
.end method

.method private moveControl(F)V
    .locals 3
    .parameter "newPos"

    .prologue
    .line 469
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 471
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    .line 473
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    .line 474
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 477
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 478
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 480
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 481
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 482
    .local v0, moveBy:I
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    float-to-int v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 487
    :goto_0
    return-void

    .line 484
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

    .line 485
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

    .line 531
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SlidingTabSemc;->animateExpandedToDisabled(Z)V

    .line 532
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 533
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 535
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mResetAfterGhost:Z

    .line 536
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsAnimating:Z

    .line 537
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 538
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    .line 539
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    .line 540
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLongpressGhostStarted:Z

    .line 541
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    .line 542
    iput-byte v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    .line 543
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    .line 544
    return-void
.end method

.method private setBackgroundLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 267
    :goto_0
    return-void

    .line 265
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

    .line 252
    iget-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 254
    .local v1, w:I
    sub-int v2, p2, v1

    add-int v3, p2, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 259
    .end local v1           #w:I
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 257
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

    .line 460
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v0, v1, :cond_1

    .line 461
    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->dispatchTriggerEvent(I)V

    .line 465
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    .line 466
    return-void

    .line 462
    :cond_1
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v0, v2, :cond_0

    .line 463
    invoke-direct {p0, v2}, Lcom/android/internal/widget/SlidingTabSemc;->dispatchTriggerEvent(I)V

    goto :goto_0
.end method

.method private sliderButtonReleaseBefore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 444
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTabSemc;->dispatchGrabbedStateChangeEvent(I)V

    .line 446
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPressTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    .line 450
    const/4 v0, 0x2

    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->animateGhostMore(II)V

    .line 454
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/SlidingTabSemc;->moveAnimation(Landroid/view/View;I)V

    .line 456
    return-void

    .line 452
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mResetAfterGhost:Z

    goto :goto_0

    .line 454
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    goto :goto_1
.end method

.method private sliderPastActivatePoint()V
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    .line 430
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

    .line 335
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_2

    move v0, p2

    .line 337
    .local v0, touchVal:F
    :goto_0
    if-eqz p1, :cond_0

    const/4 v3, 0x5

    if-ne p1, v3, :cond_a

    .line 340
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLanguageIsRtl:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-nez v3, :cond_3

    .line 341
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mNoneTouchPart:I

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_5

    move v1, v2

    .line 424
    .end local p3
    :cond_1
    :goto_1
    return v1

    .end local v0           #touchVal:F
    .restart local p3
    :cond_2
    move v0, p3

    .line 335
    goto :goto_0

    .line 345
    .restart local v0       #touchVal:F
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_4

    .end local p3
    :goto_2
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mNoneTouchPart:I

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gez v3, :cond_5

    move v1, v2

    .line 346
    goto :goto_1

    .restart local p3
    :cond_4
    move p3, p2

    .line 345
    goto :goto_2

    .line 350
    .end local p3
    :cond_5
    float-to-int v3, v0

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    .line 352
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstTouchablePart:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_8

    .line 353
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    if-eqz v3, :cond_6

    .line 354
    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    .line 357
    :cond_6
    iput-byte v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    .line 358
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->disableButtonPress()V

    .line 359
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    .line 360
    iput p4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    .line 423
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->invalidate()V

    move v1, v2

    .line 424
    goto :goto_1

    .line 361
    :cond_8
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondTouchablePart:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_7

    .line 362
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    if-eqz v3, :cond_9

    .line 363
    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    .line 366
    :cond_9
    iput-byte v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    .line 367
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->disableButtonPress()V

    .line 368
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    .line 369
    iput p4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    goto :goto_3

    .line 371
    .restart local p3
    :cond_a
    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-eqz v3, :cond_d

    if-eq p1, v2, :cond_b

    const/4 v3, 0x6

    if-ne p1, v3, :cond_d

    .line 375
    :cond_b
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    .line 376
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    if-eqz v1, :cond_c

    .line 377
    float-to-int v1, v0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->sliderButtonReleaseAfter(I)V

    goto :goto_3

    .line 379
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->sliderButtonReleaseBefore()V

    goto :goto_3

    .line 381
    :cond_d
    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-eqz v3, :cond_7

    if-ne p1, v4, :cond_7

    .line 384
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    add-float/2addr v3, v5

    cmpg-float v3, v0, v3

    if-gez v3, :cond_e

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    sub-float/2addr v3, v5

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_1

    .line 387
    :cond_e
    iput v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    .line 390
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    if-nez v3, :cond_14

    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v3, v2, :cond_f

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondActivatePoint:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_10

    :cond_f
    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v3, v4, :cond_14

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstActivatePoint:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_14

    .line 396
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->sliderPastActivatePoint()V

    .line 406
    :cond_11
    :goto_4
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    if-eqz v1, :cond_12

    .line 407
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    if-lez v1, :cond_17

    .line 408
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    .line 414
    :cond_12
    :goto_5
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    if-nez v1, :cond_13

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    add-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_13

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_7

    .line 418
    :cond_13
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    .line 419
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->moveControl(F)V

    goto/16 :goto_3

    .line 397
    :cond_14
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    if-eqz v3, :cond_11

    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v3, v2, :cond_15

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondActivatePoint:I

    add-int/lit8 v3, v3, -0xa

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_16

    :cond_15
    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v3, v4, :cond_11

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstActivatePoint:I

    add-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_11

    .line 403
    :cond_16
    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    goto :goto_4

    .line 410
    :cond_17
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    goto :goto_5
.end method

.method private updateExpandable()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 491
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 492
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 494
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 495
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider2Id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 496
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGotoId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 500
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 508
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 525
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 527
    const-wide/16 v0, 0x258

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->animateGhost(J)V

    .line 528
    return-void

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGotoId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 509
    :cond_2
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider3Id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 511
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v0, :cond_3

    .line 513
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGotoId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 515
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 523
    :goto_2
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 518
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGotoId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 520
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
    .line 740
    sget-boolean v0, Lcom/android/internal/widget/SlidingTabSemc;->mHapticsEnabled:Z

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 742
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mVibrator:Landroid/os/Vibrator;

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 747
    :cond_1
    return-void
.end method


# virtual methods
.method protected handleLayoutDirection()Z
    .locals 1

    .prologue
    .line 248
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
    .line 236
    if-nez p1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->setBackgroundLayout()V

    .line 239
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 240
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
    .line 272
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderWidth:I

    invoke-direct {p0, p1, v3}, Lcom/android/internal/widget/SlidingTabSemc;->measureDimension(II)I

    move-result v2

    .line 273
    .local v2, width:I
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    invoke-direct {p0, p2, v3}, Lcom/android/internal/widget/SlidingTabSemc;->measureDimension(II)I

    move-result v0

    .line 275
    .local v0, height:I
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_0

    move v1, v2

    .line 277
    .local v1, length:I
    :goto_0
    int-to-double v3, v1

    const-wide v5, 0x3fc147ae147ae148L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    .line 278
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    sub-int v3, v1, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    .line 280
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstTouchablePart:I

    .line 281
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstTouchablePart:I

    sub-int v3, v1, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondTouchablePart:I

    .line 283
    int-to-double v3, v1

    const-wide v5, 0x3fd3333333333333L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstActivatePoint:I

    .line 284
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstActivatePoint:I

    sub-int v3, v1, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondActivatePoint:I

    .line 286
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_1

    move v3, v0

    :goto_1
    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mNoneTouchPart:I

    .line 288
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/SlidingTabSemc;->setMeasuredDimension(II)V

    .line 289
    return-void

    .end local v1           #length:I
    :cond_0
    move v1, v0

    .line 275
    goto :goto_0

    .restart local v1       #length:I
    :cond_1
    move v3, v2

    .line 286
    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v6, -0x1

    .line 307
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsAnimating:Z

    if-eqz v4, :cond_1

    .line 308
    const/4 v3, 0x1

    .line 331
    :cond_0
    :goto_0
    return v3

    .line 311
    :cond_1
    const/4 v3, 0x0

    .line 312
    .local v3, touchHandled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v0, v4, 0x8

    .line 314
    .local v0, currentIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 316
    .local v1, currentPointerId:I
    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    if-eq v4, v6, :cond_2

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    if-ne v4, v1, :cond_3

    .line 317
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

    .line 320
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 321
    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 323
    .local v2, pointerIndex:I
    if-eq v2, v6, :cond_4

    .line 324
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

    .line 327
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
    .line 864
    return-void
.end method

.method public setLeftHintText(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 836
    return-void
.end method

.method public setLeftTabResources(IIII)V
    .locals 0
    .parameter "disabledId"
    .parameter "expandedId"
    .parameter "gotoId"
    .parameter "ghostId"

    .prologue
    .line 824
    iput p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    .line 825
    iput p2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstExpandedId:I

    .line 826
    iput p3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGotoId:I

    .line 827
    iput p4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    .line 828
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 872
    iput-object p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    .line 873
    return-void
.end method

.method public setRightHintText(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 861
    return-void
.end method

.method public setRightTabResources(IIII)V
    .locals 0
    .parameter "disabledId"
    .parameter "expandedId"
    .parameter "gotoId"
    .parameter "ghostId"

    .prologue
    .line 849
    iput p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    .line 850
    iput p2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondExpandedId:I

    .line 851
    iput p3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGotoId:I

    .line 852
    iput p4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    .line 853
    return-void
.end method

.method public setSliderBackground(III)V
    .locals 2
    .parameter "sliderNormalId"
    .parameter "sliderRightId"
    .parameter "sliderLeftId"

    .prologue
    .line 800
    iput p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    .line 801
    iput p2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider2Id:I

    .line 802
    iput p3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider3Id:I

    .line 804
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    .line 809
    :goto_0
    return-void

    .line 807
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
    .line 220
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    .line 222
    return-void
.end method

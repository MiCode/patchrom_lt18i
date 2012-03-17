.class public Lcom/sonyericsson/android/camera3d/view/RotatableDialog;
.super Landroid/widget/RelativeLayout;
.source "RotatableDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnTouchWrapListener;,
        Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;
    }
.end annotation


# static fields
.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field private static final ROTATE_DEGREE:I = -0x5a

.field private static final TAG:Ljava/lang/String; = "RotatableDialog"

.field private static final UPDATE_LAYOUT_DELAY_TIME:J = 0x64L

.field private static final UPDATE_LAYOUT_DELAY_TIME_FOR_BUTTON_ANIM:I = 0x32

.field private static final UPDATE_MAX_COUNT:I = 0xa


# instance fields
.field private mBackground:Landroid/widget/LinearLayout;

.field private final mDialogWidthLandscape:I

.field private final mDialogWidthPortrait:I

.field private final mDisplayHeight:I

.field private final mDisplayWidth:I

.field private mIcon:Landroid/widget/ImageView;

.field private mIsCancelable:Z

.field private mIsUse:Z

.field private mMessage:Landroid/widget/TextView;

.field private mMessageLayout:Landroid/widget/LinearLayout;

.field private mNegativeButton:Landroid/widget/Button;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private final mOneButtonWidthLandscape:I

.field private final mOneButtonWidthPortrait:I

.field private final mOneFullButtonWidthLandscape:I

.field private final mOneFullButtonWidthPortrait:I

.field private mOriginalView:Landroid/view/View;

.field private mPositiveButton:Landroid/widget/Button;

.field private mSensorOrientation:I

.field private mTitle:Landroid/widget/TextView;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private final mTwoButtonWidthLandscape:I

.field private final mTwoButtonWidthPortrait:I

.field private mUpdateCount:I

.field private mValue:Landroid/widget/LinearLayout;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mMessage:Landroid/widget/TextView;

    .line 67
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mTitle:Landroid/widget/TextView;

    .line 69
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mIcon:Landroid/widget/ImageView;

    .line 71
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mBackground:Landroid/widget/LinearLayout;

    .line 73
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mValue:Landroid/widget/LinearLayout;

    .line 75
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 77
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mMessageLayout:Landroid/widget/LinearLayout;

    .line 79
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOriginalView:Landroid/view/View;

    .line 82
    iput v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mSensorOrientation:I

    .line 84
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mIsCancelable:Z

    .line 86
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 88
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 90
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 92
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mIsUse:Z

    .line 109
    iput v2, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mUpdateCount:I

    .line 114
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mDialogWidthLandscape:I

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mDialogWidthPortrait:I

    .line 118
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mTwoButtonWidthLandscape:I

    .line 120
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOneButtonWidthLandscape:I

    .line 122
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOneFullButtonWidthLandscape:I

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mTwoButtonWidthPortrait:I

    .line 126
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOneButtonWidthPortrait:I

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOneFullButtonWidthPortrait:I

    .line 131
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mWindowManager:Landroid/view/WindowManager;

    .line 135
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 136
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 137
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 138
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 140
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 141
    .local v0, disp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mDisplayWidth:I

    .line 142
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mDisplayHeight:I

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->updateViewLayout()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->delayUpdateLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mUpdateCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mUpdateCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mUpdateCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mUpdateCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->delayUpdateLayoutForButtonBgFadeOut()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method private changePointForPortrait(ILandroid/view/MotionEvent;DIILandroid/view/View;)V
    .locals 17
    .parameter "nowdirection"
    .parameter "evt"
    .parameter "alphaDeg"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "view"

    .prologue
    .line 530
    const/4 v11, 0x1

    move/from16 v0, p1

    if-ne v0, v11, :cond_0

    .line 531
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 532
    .local v1, alphaRad:D
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    move/from16 v0, p5

    int-to-float v12, v0

    sub-float/2addr v11, v12

    float-to-double v3, v11

    .line 533
    .local v3, x:D
    move/from16 v0, p6

    int-to-float v11, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    sub-float/2addr v11, v12

    float-to-double v7, v11

    .line 534
    .local v7, y:D
    move/from16 v0, p5

    int-to-double v11, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v7

    sub-double/2addr v13, v15

    add-double v5, v11, v13

    .line 535
    .local v5, x2:D
    move/from16 v0, p6

    int-to-double v11, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v7

    add-double/2addr v13, v15

    sub-double v9, v11, v13

    .line 537
    .local v9, y2:D
    double-to-float v11, v5

    double-to-float v12, v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 539
    .end local v1           #alphaRad:D
    .end local v3           #x:D
    .end local v5           #x2:D
    .end local v7           #y:D
    .end local v9           #y2:D
    :cond_0
    return-void
.end method

.method private delayUpdateLayout()V
    .locals 4

    .prologue
    .line 203
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$1;-><init>(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    return-void
.end method

.method private delayUpdateLayoutForButtonBgFadeOut()V
    .locals 4

    .prologue
    .line 221
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$2;-><init>(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    return-void
.end method

.method private setBackground()V
    .locals 4

    .prologue
    .line 381
    const v2, 0x7f020099

    .line 382
    .local v2, titleBackgroundResouceId:I
    const v1, 0x7f020098

    .line 383
    .local v1, messageBackgroundResouceId:I
    const v0, 0x7f020096

    .line 385
    .local v0, buttonBackgroundResouceId:I
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mValue:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 386
    const v2, 0x7f020099

    .line 387
    const v1, 0x7f020098

    .line 388
    const v0, 0x7f020096

    .line 403
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mValue:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 404
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mMessageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 405
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 406
    return-void

    .line 389
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    .line 390
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mValue:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 391
    const v1, 0x7f020099

    .line 392
    const v0, 0x7f020096

    goto :goto_0

    .line 394
    :cond_2
    const v1, 0x7f020097

    goto :goto_0

    .line 396
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mMessageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    .line 397
    const v2, 0x7f020097

    goto :goto_0

    .line 398
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mValue:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    const v2, 0x7f020099

    .line 400
    const v1, 0x7f020096

    goto :goto_0
.end method

.method private setButtonParam()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 325
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 327
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x0

    .line 328
    .local v2, positiveButtomParam:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x0

    .line 329
    .local v0, negativeButtomParam:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mPositiveButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 330
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #positiveButtomParam:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 332
    .restart local v2       #positiveButtomParam:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mNegativeButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 333
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #negativeButtomParam:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 336
    .restart local v0       #negativeButtomParam:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOriginalView:Landroid/view/View;

    if-nez v3, :cond_a

    .line 337
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mSensorOrientation:I

    if-ne v3, v4, :cond_7

    .line 338
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mDialogWidthLandscape:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 339
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 340
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mTwoButtonWidthLandscape:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 341
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mTwoButtonWidthLandscape:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 371
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 372
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    :cond_3
    if-eqz v0, :cond_4

    .line 375
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    return-void

    .line 342
    :cond_5
    if-eqz v2, :cond_6

    .line 343
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOneButtonWidthLandscape:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 344
    :cond_6
    if-eqz v0, :cond_2

    .line 345
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOneButtonWidthLandscape:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 348
    :cond_7
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mDialogWidthPortrait:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 349
    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    .line 350
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mTwoButtonWidthPortrait:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 351
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mTwoButtonWidthPortrait:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 352
    :cond_8
    if-eqz v2, :cond_9

    .line 353
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOneButtonWidthPortrait:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 354
    :cond_9
    if-eqz v0, :cond_2

    .line 355
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOneButtonWidthPortrait:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 359
    :cond_a
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mSensorOrientation:I

    if-ne v3, v4, :cond_b

    .line 360
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mDisplayWidth:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 361
    if-eqz v2, :cond_2

    .line 362
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOneFullButtonWidthLandscape:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 365
    :cond_b
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mDisplayHeight:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 366
    if-eqz v2, :cond_2

    .line 367
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOneFullButtonWidthPortrait:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method private updateViewLayout()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mIsCancelable:Z

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p0}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->dismiss()V

    .line 265
    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 249
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 256
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x4000

    .line 543
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mSensorOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 545
    .local v1, width:F
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 547
    .local v0, height:F
    const/high16 v2, -0x3d4c

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 550
    .end local v0           #height:F
    .end local v1           #width:F
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 551
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "evt"

    .prologue
    .line 520
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mSensorOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 521
    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mSensorOrientation:I

    const-wide v3, -0x3fa9800000000000L

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getHeight()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mBackground:Landroid/widget/LinearLayout;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->changePointForPortrait(ILandroid/view/MotionEvent;DIILandroid/view/View;)V

    .line 525
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3
    .parameter "location"
    .parameter "dirty"

    .prologue
    const/4 v2, 0x0

    .line 555
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getLeft()I

    move-result v0

    aput v0, p1, v2

    .line 556
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getTop()I

    move-result v1

    aput v1, p1, v0

    .line 557
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 558
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 150
    const v0, 0x7f0d0075

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mBackground:Landroid/widget/LinearLayout;

    .line 151
    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mMessage:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0d007a

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mMessageLayout:Landroid/widget/LinearLayout;

    .line 153
    const v0, 0x7f0d0081

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mPositiveButton:Landroid/widget/Button;

    .line 154
    const v0, 0x7f0d0080

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mNegativeButton:Landroid/widget/Button;

    .line 155
    const v0, 0x7f0d007d

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mValue:Landroid/widget/LinearLayout;

    .line 156
    const v0, 0x7f0d0078

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mTitle:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0d0076

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 158
    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mIcon:Landroid/widget/ImageView;

    .line 159
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 281
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mIsUse:Z

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mIsUse:Z

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mIsUse:Z

    if-nez v0, :cond_1

    .line 287
    packed-switch p1, :pswitch_data_0

    .line 296
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mIsUse:Z

    return v0

    .line 289
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mIsUse:Z

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 301
    packed-switch p1, :pswitch_data_0

    .line 313
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mIsUse:Z

    :goto_0
    return v0

    .line 303
    :pswitch_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mIsUse:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p0}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->dismiss()V

    .line 308
    const/4 v0, 0x1

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public setCancelable(Z)V
    .locals 0
    .parameter "isCancelable"

    .prologue
    .line 491
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mIsCancelable:Z

    .line 492
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "rscId"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 506
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->showIcon()V

    .line 507
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mMessageLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    return-void
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "id"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 469
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mValue:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 471
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mNegativeButton:Landroid/widget/Button;

    new-instance v1, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;

    const/4 v2, -0x2

    invoke-direct {v1, p0, p0, p2, v2}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;-><init>(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;Landroid/content/DialogInterface;Landroid/content/DialogInterface$OnClickListener;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mNegativeButton:Landroid/widget/Button;

    new-instance v1, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnTouchWrapListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnTouchWrapListener;-><init>(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;Lcom/sonyericsson/android/camera3d/view/RotatableDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 475
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 273
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 277
    return-void
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 269
    return-void
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "id"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 460
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mValue:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 462
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mPositiveButton:Landroid/widget/Button;

    new-instance v1, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;

    const/4 v2, -0x1

    invoke-direct {v1, p0, p0, p2, v2}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;-><init>(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;Landroid/content/DialogInterface;Landroid/content/DialogInterface$OnClickListener;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mPositiveButton:Landroid/widget/Button;

    new-instance v1, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnTouchWrapListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnTouchWrapListener;-><init>(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;Lcom/sonyericsson/android/camera3d/view/RotatableDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 466
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0
    .parameter "orient"

    .prologue
    .line 514
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mSensorOrientation:I

    .line 515
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->updateLayout()V

    .line 516
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 486
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 488
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 495
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOriginalView:Landroid/view/View;

    .line 496
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOriginalView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mMessageLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mMessageLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 500
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mMessageLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOriginalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 502
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->updateLayout()V

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->setVisibility(I)V

    .line 168
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->invalidate()V

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->requestFocus()Z

    .line 175
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->delayUpdateLayout()V

    .line 176
    return-void
.end method

.method public showIcon()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    return-void
.end method

.method public showWhenLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 187
    .local v0, windowParams:Landroid/view/WindowManager$LayoutParams;
    const v1, 0x80400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 189
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 190
    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 191
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 192
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 194
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->updateLayout()V

    .line 196
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->setVisibility(I)V

    .line 197
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->invalidate()V

    .line 198
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->requestFocus()Z

    .line 199
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->delayUpdateLayout()V

    .line 200
    return-void
.end method

.method protected updateLayout()V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->setButtonParam()V

    .line 318
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->setBackground()V

    .line 319
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->requestLayout()V

    .line 320
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->invalidate()V

    .line 321
    return-void
.end method

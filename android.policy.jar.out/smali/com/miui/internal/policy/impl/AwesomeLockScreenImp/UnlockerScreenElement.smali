.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;
.super Lmiui/app/screenelement/ScreenElement;
.source "UnlockerScreenElement.java"

# interfaces
.implements Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$1;,
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$CheckTouchResult;,
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;,
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;,
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;,
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;,
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;,
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;,
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final DEFAULT_DRAG_TOLERANCE:I = 0x96

.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_UnlockerScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Unlocker"

.field private static mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;


# instance fields
.field private mAlphaExpression:Lmiui/app/screenelement/Expression;

.field private mBounceAnimationController:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;

.field private mCurrentEndPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

.field private mEndPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mMoving:Z

.field private mName:Ljava/lang/String;

.field private mPressed:Z

.field private mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

.field private mTouchOffsetX:I

.field private mTouchOffsetY:I

.field private final mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

.field private final mUnlockerListener:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;

.field private mUnlockingHide:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;)V
    .locals 2
    .parameter "node"
    .parameter "c"
    .parameter "unlockerCallback"
    .parameter "unlockerListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;-><init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$1;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mBounceAnimationController:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;

    .line 221
    iput-object p3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    .line 222
    iput-object p4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockerListener:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;

    .line 224
    invoke-virtual {p0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 226
    sget-object v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    iget-object v1, p2, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 229
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->cancelMoving()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mPressed:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->playSound(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mTouchOffsetX:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mTouchOffsetY:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->moveStartPoint(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method private cancelMoving()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    .line 847
    iput-boolean v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mPressed:Z

    .line 848
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    invoke-virtual {v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->getX()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    invoke-virtual {v4}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->getY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->moveTo(II)V

    .line 849
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    sget-object v3, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Normal:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    invoke-virtual {v2, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->setState(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;)V

    .line 850
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    .line 851
    .local v0, ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    sget-object v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Normal:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    invoke-virtual {v0, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->setState(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;)V

    goto :goto_0

    .line 854
    .end local v0           #ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v4, "move_x"

    invoke-virtual {v2, v3, v4, v5, v6}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 855
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v4, "move_y"

    invoke-virtual {v2, v3, v4, v5, v6}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 856
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v4, "move_dist"

    invoke-virtual {v2, v3, v4, v5, v6}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 857
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v4, "state"

    invoke-virtual {v2, v3, v4, v5, v6}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 858
    iput-boolean v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mMoving:Z

    .line 859
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockerListener:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;

    invoke-interface {v2, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;->endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 860
    return-void
.end method

.method private checkEndPoint(ZLmiui/app/screenelement/Utils$Point;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;)Z
    .locals 7
    .parameter "doUnlock"
    .parameter "point"
    .parameter "endPoint"

    .prologue
    const/4 v6, 0x0

    .line 802
    const/4 v2, 0x0

    .line 803
    .local v2, unlock:Z
    iget-wide v3, p2, Lmiui/app/screenelement/Utils$Point;->x:D

    double-to-int v3, v3

    iget-wide v4, p2, Lmiui/app/screenelement/Utils$Point;->y:D

    double-to-int v4, v4

    invoke-virtual {p3, v3, v4}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->touched(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 804
    if-eqz p1, :cond_0

    .line 805
    invoke-direct {p0, p3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->doUnlock(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;)V

    .line 806
    :cond_0
    const/4 v2, 0x1

    .line 807
    invoke-virtual {p3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->getState()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    move-result-object v3

    sget-object v4, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Reached:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    if-eq v3, v4, :cond_3

    .line 808
    sget-object v3, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Reached:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    invoke-virtual {p3, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->setState(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;)V

    .line 809
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    .line 810
    .local v0, ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    if-eq v0, p3, :cond_1

    .line 811
    sget-object v3, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Pressed:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    invoke-virtual {v0, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->setState(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;)V

    goto :goto_0

    .line 814
    .end local v0           #ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    :cond_2
    sget-object v3, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v3, v6, v6}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 820
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    return v2

    .line 818
    :cond_4
    sget-object v3, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Pressed:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    invoke-virtual {p3, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->setState(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;)V

    goto :goto_1
.end method

.method private checkTouch(IIZ)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$CheckTouchResult;
    .locals 17
    .parameter "x"
    .parameter "y"
    .parameter "doUnlock"

    .prologue
    .line 743
    const v7, 0x7fffffff

    .line 744
    .local v7, minDist:I
    const/4 v8, 0x0

    .line 745
    .local v8, point:Lmiui/app/screenelement/Utils$Point;
    new-instance v10, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$CheckTouchResult;

    const/4 v12, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$CheckTouchResult;-><init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$1;)V

    .line 747
    .local v10, result:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$CheckTouchResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    .line 748
    .local v5, ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    move-object v0, v5

    move/from16 v1, p1

    move/from16 v2, p2

    #calls: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->getNearestPoint(II)Lmiui/app/screenelement/Utils$Point;
    invoke-static {v0, v1, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->access$3300(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;II)Lmiui/app/screenelement/Utils$Point;

    move-result-object v9

    .line 749
    .local v9, pt:Lmiui/app/screenelement/Utils$Point;
    move-object v0, v5

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->getTransformedDist(Lmiui/app/screenelement/Utils$Point;II)I

    move-result v4

    .line 750
    .local v4, di:I
    if-ge v4, v7, :cond_0

    .line 751
    move v7, v4

    .line 752
    move-object v8, v9

    .line 753
    iput-object v5, v10, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$CheckTouchResult;->endPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    goto :goto_0

    .line 756
    .end local v4           #di:I
    .end local v5           #ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    .end local v9           #pt:Lmiui/app/screenelement/Utils$Point;
    :cond_1
    const/4 v11, 0x0

    .line 759
    .local v11, unlock:Z
    const v12, 0x7fffffff

    if-ge v7, v12, :cond_5

    .line 760
    iget-wide v12, v8, Lmiui/app/screenelement/Utils$Point;->x:D

    double-to-int v12, v12

    iget-wide v13, v8, Lmiui/app/screenelement/Utils$Point;->y:D

    double-to-int v13, v13

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->moveStartPoint(II)V

    .line 763
    const v12, 0x7ffffffe

    if-ge v7, v12, :cond_3

    .line 765
    iget-object v12, v10, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$CheckTouchResult;->endPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object v2, v8

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->checkEndPoint(ZLmiui/app/screenelement/Utils$Point;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;)Z

    move-result v11

    .line 784
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    move-object v12, v0

    if-eqz v11, :cond_6

    sget-object v13, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Reached:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    :goto_2
    invoke-virtual {v12, v13}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->setState(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object v12, v0

    iget-object v12, v12, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mName:Ljava/lang/String;

    move-object v13, v0

    const-string v14, "state"

    if-eqz v11, :cond_7

    const-wide/high16 v15, 0x4000

    :goto_3
    invoke-virtual/range {v12 .. v16}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    move-object v12, v10

    .line 787
    :goto_4
    return-object v12

    .line 768
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    .line 769
    .restart local v5       #ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->access$500(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;

    move-result-object v12

    if-nez v12, :cond_4

    .line 771
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object v2, v8

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->checkEndPoint(ZLmiui/app/screenelement/Utils$Point;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 772
    iput-object v5, v10, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$CheckTouchResult;->endPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    goto :goto_1

    .line 778
    .end local v5           #ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    :cond_5
    const-string v12, "LockScreen_UnlockerScreenElement"

    const-string v13, "unlock touch canceled due to exceeding tollerance"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mBounceAnimationController:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mCurrentEndPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    move-object v13, v0

    invoke-virtual {v12, v13}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->startCancelMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;)V

    .line 780
    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mMoving:Z

    .line 781
    const/4 v12, 0x0

    goto :goto_4

    .line 784
    :cond_6
    sget-object v13, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Pressed:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    goto :goto_2

    .line 785
    :cond_7
    const-wide/high16 v15, 0x3ff0

    goto :goto_3
.end method

.method private doUnlock(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;)V
    .locals 6
    .parameter "endPoint"

    .prologue
    .line 824
    const/4 v1, 0x0

    .line 825
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mTask:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;

    .line 826
    .local v2, mTask:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;
    if-eqz v2, :cond_3

    .line 827
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    iget-object v3, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;->action:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 828
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;->type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 829
    iget-object v3, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    :cond_0
    iget-object v3, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;->category:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 831
    iget-object v3, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;->category:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    :cond_1
    iget-object v3, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;->className:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 833
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;->className:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 835
    :cond_2
    const/high16 v3, 0x3400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 839
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v3, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->unlocked(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :goto_0
    return-void

    .line 840
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 841
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "LockScreen_UnlockerScreenElement"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private isShowing()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 863
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockingHide:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v4

    .line 870
    :goto_0
    return v0

    .line 866
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mAlphaExpression:Lmiui/app/screenelement/Expression;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mAlphaExpression:Lmiui/app/screenelement/Expression;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    move v0, v4

    .line 867
    goto :goto_0

    .line 870
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadEndPoint(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 252
    const-string v3, "EndPoint"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 253
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 254
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 255
    .local v1, item:Lorg/w3c/dom/Element;
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    new-instance v4, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    invoke-direct {v4, p0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;-><init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;Lorg/w3c/dom/Element;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    .end local v1           #item:Lorg/w3c/dom/Element;
    :cond_0
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    const-string v4, "no end point for unlocker!"

    invoke-static {v3, v4}, Lmiui/app/screenelement/Utils;->asserts(ZLjava/lang/String;)V

    .line 258
    return-void

    .line 257
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private loadStartPoint(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 245
    const-string v1, "StartPoint"

    invoke-static {p1, v1}, Lmiui/app/screenelement/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 246
    .local v0, ele:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "no StartPoint node"

    invoke-static {v1, v2}, Lmiui/app/screenelement/Utils;->asserts(ZLjava/lang/String;)V

    .line 247
    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    invoke-direct {v1, p0, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;-><init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    .line 248
    return-void

    .line 246
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private moveStartPoint(II)V
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 791
    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    invoke-virtual {v4, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->moveTo(II)V

    .line 793
    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    iget v4, v4, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->mCurrentX:I

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    iget-object v5, v5, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->mX:Lmiui/app/screenelement/Expression;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v6, v6, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v5, v6}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v5

    double-to-int v5, v5

    sub-int v2, v4, v5

    .line 794
    .local v2, move_x:I
    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    iget v4, v4, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->mCurrentY:I

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    iget-object v5, v5, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->mY:Lmiui/app/screenelement/Expression;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v6, v6, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v5, v6}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v5

    double-to-int v5, v5

    sub-int v3, v4, v5

    .line 795
    .local v3, move_y:I
    mul-int v4, v2, v2

    mul-int v5, v3, v3

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 796
    .local v0, move_dist:D
    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v6, "move_x"

    int-to-double v7, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 797
    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v6, "move_y"

    int-to-double v7, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 798
    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v6, "move_dist"

    invoke-virtual {v4, v5, v6, v0, v1}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 799
    return-void
.end method

.method private playSound(Ljava/lang/String;)V
    .locals 2
    .parameter "sound"

    .prologue
    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v1, Lmiui/app/screenelement/ScreenContext;->mRoot:Lmiui/app/screenelement/ScreenElement;

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    .line 264
    .local v0, lsr:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->playSound(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 906
    if-eq p1, p0, :cond_0

    .line 907
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockingHide:Z

    .line 908
    :cond_0
    return-void
.end method

.method public findElement(Ljava/lang/String;)Lmiui/app/screenelement/ScreenElement;
    .locals 4
    .parameter "name"

    .prologue
    .line 918
    invoke-super {p0, p1}, Lmiui/app/screenelement/ScreenElement;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/ScreenElement;

    move-result-object v0

    .line 919
    .local v0, ele:Lmiui/app/screenelement/ScreenElement;
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 932
    :goto_0
    return-object v3

    .line 922
    :cond_0
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    invoke-virtual {v3, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/ScreenElement;

    move-result-object v0

    .line 923
    if-eqz v0, :cond_1

    move-object v3, v0

    .line 924
    goto :goto_0

    .line 926
    :cond_1
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    .line 927
    .local v1, ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    invoke-virtual {v1, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/ScreenElement;

    move-result-object v0

    .line 928
    if-eqz v0, :cond_2

    move-object v3, v0

    .line 929
    goto :goto_0

    .line 932
    .end local v1           #ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 658
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    invoke-virtual {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->init()V

    .line 659
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    .line 660
    .local v0, ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->init()V

    goto :goto_0

    .line 662
    .end local v0           #ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    :cond_0
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 232
    sget-boolean v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unlocker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 237
    :cond_0
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mName:Ljava/lang/String;

    .line 238
    const-string v0, "alpha"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mAlphaExpression:Lmiui/app/screenelement/Expression;

    .line 239
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mBounceAnimationController:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->load(Lorg/w3c/dom/Element;)V

    .line 240
    invoke-direct {p0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->loadStartPoint(Lorg/w3c/dom/Element;)V

    .line 241
    invoke-direct {p0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->loadEndPoint(Lorg/w3c/dom/Element;)V

    .line 242
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 683
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->isShowing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 687
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 689
    .local v4, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 691
    :pswitch_0
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    invoke-virtual {v5, v3, v4}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->touched(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 692
    iput-boolean v11, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mMoving:Z

    .line 693
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    invoke-virtual {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->getX()I

    move-result v5

    sub-int v5, v3, v5

    iput v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mTouchOffsetX:I

    .line 694
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    invoke-virtual {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->getY()I

    move-result v5

    sub-int v5, v4, v5

    iput v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mTouchOffsetY:I

    .line 695
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    sget-object v6, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Pressed:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    invoke-virtual {v5, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->setState(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;)V

    .line 696
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    .line 697
    .local v0, ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    sget-object v5, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Pressed:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    invoke-virtual {v0, v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->setState(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;)V

    goto :goto_1

    .line 699
    .end local v0           #ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    :cond_2
    iput-boolean v11, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mPressed:Z

    .line 703
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockerListener:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;

    invoke-interface {v5, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;->startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 704
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v5, v5, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v7, "state"

    const-wide/high16 v8, 0x3ff0

    invoke-virtual {v5, v6, v7, v8, v9}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 707
    sget-object v5, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v5, v11, v10}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 709
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mBounceAnimationController:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;

    invoke-virtual {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->init()V

    goto :goto_0

    .line 713
    .end local v1           #i$:Ljava/util/Iterator;
    :pswitch_1
    iget-boolean v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mMoving:Z

    if-eqz v5, :cond_0

    .line 714
    invoke-direct {p0, v3, v4, v10}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->checkTouch(IIZ)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$CheckTouchResult;

    move-result-object v2

    .line 715
    .local v2, ret:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$CheckTouchResult;
    if-nez v2, :cond_3

    const/4 v5, 0x0

    :goto_2
    iput-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mCurrentEndPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    goto :goto_0

    :cond_3
    iget-object v5, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$CheckTouchResult;->endPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    goto :goto_2

    .line 719
    .end local v2           #ret:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$CheckTouchResult;
    :pswitch_2
    iget-boolean v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mMoving:Z

    if-eqz v5, :cond_0

    .line 720
    const-string v5, "LockScreen_UnlockerScreenElement"

    const-string v6, "unlock touch up"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-direct {p0, v3, v4, v11}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->checkTouch(IIZ)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$CheckTouchResult;

    move-result-object v2

    .line 722
    .restart local v2       #ret:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$CheckTouchResult;
    iget-boolean v5, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$CheckTouchResult;->unlocked:Z

    if-nez v5, :cond_4

    .line 723
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mBounceAnimationController:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;

    iget-object v6, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$CheckTouchResult;->endPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    invoke-virtual {v5, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->startCancelMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;)V

    .line 725
    :cond_4
    iget-object v5, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$CheckTouchResult;->endPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    iput-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mCurrentEndPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    .line 727
    sget-object v5, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v10}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 729
    iput-boolean v10, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mMoving:Z

    goto/16 :goto_0

    .line 689
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->cancelMoving()V

    .line 668
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    invoke-virtual {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->pause()V

    .line 669
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    .line 670
    .local v0, ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->pause()V

    goto :goto_0

    .line 672
    .end local v0           #ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    :cond_0
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 875
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 882
    :goto_0
    return-void

    .line 878
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    .line 879
    .local v0, ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->render(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 881
    .end local v0           #ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    invoke-virtual {v2, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->render(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 675
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    invoke-virtual {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->resume()V

    .line 676
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    .line 677
    .local v0, ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->resume()V

    goto :goto_0

    .line 679
    .end local v0           #ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    :cond_0
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3
    .parameter "category"
    .parameter "show"

    .prologue
    .line 898
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    invoke-virtual {v2, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->showCategory(Ljava/lang/String;Z)V

    .line 899
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    .line 900
    .local v0, ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->showCategory(Ljava/lang/String;Z)V

    goto :goto_0

    .line 902
    .end local v0           #ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    :cond_0
    return-void
.end method

.method public startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 912
    if-eq p1, p0, :cond_0

    .line 913
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockingHide:Z

    .line 914
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 886
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 895
    :cond_0
    return-void

    .line 889
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mBounceAnimationController:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;

    invoke-virtual {v2, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->tick(J)V

    .line 891
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    invoke-virtual {v2, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->tick(J)V

    .line 892
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    .line 893
    .local v0, ep:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->tick(J)V

    goto :goto_0
.end method

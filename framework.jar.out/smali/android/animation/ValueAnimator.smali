.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;,
        Landroid/animation/ValueAnimator$AnimationHandler;,
        Landroid/animation/ValueAnimator$AnimationHolder;
    }
.end annotation


# static fields
.field static final ANIMATION_FRAME:I = 0x1

.field static final ANIMATION_START:I = 0x0

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field static final RUNNING:I = 0x1

.field static final SEEKED:I = 0x2

.field static final STOPPED:I

.field private static sAnimationHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/animation/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAnimationHolder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/animation/ValueAnimator$AnimationHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static final sFloatEvaluator:Landroid/animation/TypeEvaluator;

.field private static sFrameDelay:J

.field private static final sIntEvaluator:Landroid/animation/TypeEvaluator;


# instance fields
.field private mCurrentFraction:F

.field private mCurrentIteration:I

.field private mDelayStartTime:J

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mPlayingBackwards:Z

.field mPlayingState:I

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mRunning:Z

.field mSeekTime:J

.field private mStartDelay:J

.field mStartTime:J

.field private mStarted:Z

.field private mStartedDelay:Z

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Landroid/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    .line 107
    new-instance v0, Landroid/animation/ValueAnimator$1;

    invoke-direct {v0}, Landroid/animation/ValueAnimator$1;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sAnimationHolder:Ljava/lang/ThreadLocal;

    .line 116
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 120
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sIntEvaluator:Landroid/animation/TypeEvaluator;

    .line 121
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sFloatEvaluator:Landroid/animation/TypeEvaluator;

    .line 194
    const-wide/16 v0, 0xa

    sput-wide v0, Landroid/animation/ValueAnimator;->sFrameDelay:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 88
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    .line 127
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 133
    iput v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 143
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 159
    iput v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 169
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 175
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 181
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 188
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 198
    iput v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 205
    const/4 v0, 0x1

    iput v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 212
    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 256
    return-void
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/animation/ValueAnimator;->sAnimationHolder:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$200(Landroid/animation/ValueAnimator;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 46
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/animation/ValueAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    return-void
.end method

.method static synthetic access$400(Landroid/animation/ValueAnimator;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/animation/ValueAnimator;->delayedAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Landroid/animation/ValueAnimator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    return p1
.end method

.method static synthetic access$600(Landroid/animation/ValueAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    return-void
.end method

.method static synthetic access$700()J
    .locals 2

    .prologue
    .line 46
    sget-wide v0, Landroid/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method public static clearAllAnimations()V
    .locals 2

    .prologue
    .line 1226
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHolder;

    .line 1227
    .local v0, holder:Landroid/animation/ValueAnimator$AnimationHolder;
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHolder;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1228
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHolder;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1229
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHolder;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1230
    return-void
.end method

.method private delayedAnimationFrame(J)Z
    .locals 5
    .parameter "currentTime"

    .prologue
    const/4 v2, 0x1

    .line 1048
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    if-nez v3, :cond_1

    .line 1049
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 1050
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    .line 1061
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1052
    :cond_1
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    sub-long v0, p1, v3

    .line 1053
    .local v0, deltaTime:J
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 1056
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    sub-long v3, v0, v3

    sub-long v3, p1, v3

    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1057
    iput v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    goto :goto_0
.end method

.method private endAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1001
    sget-object v4, Landroid/animation/ValueAnimator;->sAnimationHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHolder;

    .line 1002
    .local v0, holder:Landroid/animation/ValueAnimator$AnimationHolder;
    iget-object v4, v0, Landroid/animation/ValueAnimator$AnimationHolder;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1003
    iget-object v4, v0, Landroid/animation/ValueAnimator$AnimationHolder;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1004
    iget-object v4, v0, Landroid/animation/ValueAnimator$AnimationHolder;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1005
    iput v5, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1006
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1007
    iget-object v4, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1009
    .local v3, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1010
    .local v2, numListeners:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1011
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1010
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1014
    .end local v1           #i:I
    .end local v2           #numListeners:I
    .end local v3           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    iput-boolean v5, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1015
    iput-boolean v5, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1016
    return-void
.end method

.method public static getCurrentAnimationsCount()I
    .locals 1

    .prologue
    .line 1216
    sget-object v0, Landroid/animation/ValueAnimator;->sAnimationHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHolder;

    iget-object v0, v0, Landroid/animation/ValueAnimator$AnimationHolder;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    .prologue
    .line 688
    sget-wide v0, Landroid/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "values"

    .prologue
    .line 287
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 288
    .local v0, anim:Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 289
    return-object v0
.end method

.method public static varargs ofInt([I)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "values"

    .prologue
    .line 270
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 271
    .local v0, anim:Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 272
    return-object v0
.end method

.method public static varargs ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "evaluator"
    .parameter "values"

    .prologue
    .line 324
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 325
    .local v0, anim:Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 326
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 327
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "values"

    .prologue
    .line 301
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 302
    .local v0, anim:Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 303
    return-object v0
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .parameter "frameDelay"

    .prologue
    .line 701
    sput-wide p0, Landroid/animation/ValueAnimator;->sFrameDelay:J

    .line 702
    return-void
.end method

.method private start(Z)V
    .locals 10
    .parameter "playBackwards"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 890
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-nez v4, :cond_0

    .line 891
    new-instance v4, Landroid/util/AndroidRuntimeException;

    const-string v5, "Animators may only be run on Looper threads"

    invoke-direct {v4, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 893
    :cond_0
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 894
    iput v8, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 895
    iput v8, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 896
    iput-boolean v9, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 897
    iput-boolean v8, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 898
    sget-object v4, Landroid/animation/ValueAnimator;->sAnimationHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator$AnimationHolder;

    iget-object v4, v4, Landroid/animation/ValueAnimator$AnimationHolder;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 901
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 902
    iput v8, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 903
    iput-boolean v9, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 905
    iget-object v4, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 906
    iget-object v4, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 908
    .local v3, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 909
    .local v2, numListeners:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 910
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 909
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 914
    .end local v1           #i:I
    .end local v2           #numListeners:I
    .end local v3           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_1
    sget-object v4, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .line 915
    .local v0, animationHandler:Landroid/animation/ValueAnimator$AnimationHandler;
    if-nez v0, :cond_2

    .line 916
    new-instance v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .end local v0           #animationHandler:Landroid/animation/ValueAnimator$AnimationHandler;
    const/4 v4, 0x0

    invoke-direct {v0, v4}, Landroid/animation/ValueAnimator$AnimationHandler;-><init>(Landroid/animation/ValueAnimator$1;)V

    .line 917
    .restart local v0       #animationHandler:Landroid/animation/ValueAnimator$AnimationHandler;
    sget-object v4, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 919
    :cond_2
    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator$AnimationHandler;->sendEmptyMessage(I)Z

    .line 920
    return-void
.end method

.method private startAnimation()V
    .locals 7

    .prologue
    .line 1023
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1024
    sget-object v3, Landroid/animation/ValueAnimator;->sAnimationHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$AnimationHolder;

    iget-object v3, v3, Landroid/animation/ValueAnimator$AnimationHolder;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-object v3, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1028
    iget-object v3, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1030
    .local v2, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1031
    .local v1, numListeners:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1032
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1031
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1035
    .end local v0           #i:I
    .end local v1           #numListeners:I
    .end local v2           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 793
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 794
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 796
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    return-void
.end method

.method animateValue(F)V
    .locals 4
    .parameter "fraction"

    .prologue
    .line 1146
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 1147
    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 1148
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v3

    .line 1149
    .local v2, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1150
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    .line 1149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1152
    :cond_0
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1153
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1154
    .local v1, numListeners:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1155
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 1154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1158
    .end local v1           #numListeners:I
    :cond_1
    return-void
.end method

.method animationFrame(J)Z
    .locals 11
    .parameter "currentTime"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    .line 1077
    const/4 v0, 0x0

    .line 1079
    .local v0, done:Z
    iget v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v4, :cond_0

    .line 1080
    iput v5, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1081
    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    cmp-long v4, v7, v9

    if-gez v4, :cond_1

    .line 1082
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1089
    :cond_0
    :goto_0
    iget v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    packed-switch v4, :pswitch_data_0

    .line 1120
    :goto_1
    return v0

    .line 1084
    :cond_1
    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    sub-long v7, p1, v7

    iput-wide v7, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1086
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    goto :goto_0

    .line 1092
    :pswitch_0
    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mDuration:J

    cmp-long v4, v7, v9

    if-lez v4, :cond_3

    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v7, p1, v7

    long-to-float v4, v7

    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v7, v7

    div-float v1, v4, v7

    .line 1093
    .local v1, fraction:F
    :goto_2
    cmpl-float v4, v1, v6

    if-ltz v4, :cond_6

    .line 1094
    iget v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lt v4, v7, :cond_2

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_9

    .line 1096
    :cond_2
    iget-object v4, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 1097
    iget-object v4, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1098
    .local v3, numListeners:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v3, :cond_4

    .line 1099
    iget-object v4, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 1098
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v1           #fraction:F
    .end local v2           #i:I
    .end local v3           #numListeners:I
    :cond_3
    move v1, v6

    .line 1092
    goto :goto_2

    .line 1102
    .restart local v1       #fraction:F
    :cond_4
    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_5

    .line 1103
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1105
    :cond_5
    iget v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    float-to-int v5, v1

    add-int/2addr v4, v5

    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 1106
    rem-float/2addr v1, v6

    .line 1107
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mDuration:J

    add-long/2addr v4, v7

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1113
    :cond_6
    :goto_5
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_7

    .line 1114
    sub-float v1, v6, v1

    .line 1116
    :cond_7
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    goto :goto_1

    :cond_8
    move v4, v5

    .line 1103
    goto :goto_4

    .line 1109
    :cond_9
    const/4 v0, 0x1

    .line 1110
    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_5

    .line 1089
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public cancel()V
    .locals 5

    .prologue
    .line 931
    sget-object v4, Landroid/animation/ValueAnimator;->sAnimationHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHolder;

    .line 932
    .local v0, holder:Landroid/animation/ValueAnimator$AnimationHolder;
    iget v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v4, :cond_0

    iget-object v4, v0, Landroid/animation/ValueAnimator$AnimationHolder;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Landroid/animation/ValueAnimator$AnimationHolder;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 935
    :cond_0
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 936
    iget-object v4, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 938
    .local v3, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 939
    .local v2, listener:Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 942
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Landroid/animation/Animator$AnimatorListener;
    .end local v3           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 944
    :cond_2
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/ValueAnimator;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1162
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1163
    .local v0, anim:Landroid/animation/ValueAnimator;
    iget-object v7, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 1164
    iget-object v5, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1165
    .local v5, oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator$AnimatorUpdateListener;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1166
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1167
    .local v3, numListeners:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1168
    iget-object v7, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1171
    .end local v1           #i:I
    .end local v3           #numListeners:I
    .end local v5           #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator$AnimatorUpdateListener;>;"
    :cond_0
    const-wide/16 v7, -0x1

    iput-wide v7, v0, Landroid/animation/ValueAnimator;->mSeekTime:J

    .line 1172
    iput-boolean v9, v0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1173
    iput v9, v0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 1174
    iput-boolean v9, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 1175
    iput v9, v0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1176
    iput-boolean v9, v0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 1177
    iget-object v6, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1178
    .local v6, oldValues:[Landroid/animation/PropertyValuesHolder;
    if-eqz v6, :cond_1

    .line 1179
    array-length v4, v6

    .line 1180
    .local v4, numValues:I
    new-array v7, v4, [Landroid/animation/PropertyValuesHolder;

    iput-object v7, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1181
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 1182
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 1183
    aget-object v7, v6, v1

    invoke-virtual {v7}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1184
    .local v2, newValuesHolder:Landroid/animation/PropertyValuesHolder;
    iget-object v7, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aput-object v2, v7, v1

    .line 1185
    iget-object v7, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1188
    .end local v1           #i:I
    .end local v2           #newValuesHolder:Landroid/animation/PropertyValuesHolder;
    .end local v4           #numValues:I
    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 3

    .prologue
    .line 948
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHolder;

    .line 949
    .local v0, holder:Landroid/animation/ValueAnimator$AnimationHolder;
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHolder;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHolder;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 952
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 953
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 959
    :cond_0
    :goto_0
    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lez v1, :cond_2

    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 960
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 964
    :goto_1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 965
    return-void

    .line 954
    :cond_1
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v1, :cond_0

    .line 955
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    goto :goto_0

    .line 962
    :cond_2
    const/high16 v1, 0x3f80

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    goto :goto_1
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 1130
    iget v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 718
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    .line 721
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "propertyName"

    .prologue
    .line 735
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder;

    .line 736
    .local v0, valuesHolder:Landroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    .line 740
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentPlayTime()J
    .locals 4

    .prologue
    .line 528
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_1

    .line 529
    :cond_0
    const-wide/16 v0, 0x0

    .line 531
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 496
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 762
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 782
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 665
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public getValues()[Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .locals 3

    .prologue
    .line 462
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v2, :cond_1

    .line 463
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 464
    .local v1, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 465
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 469
    .end local v0           #i:I
    .end local v1           #numValues:I
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 969
    iget v1, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 974
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 808
    :goto_0
    return-void

    .line 806
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 807
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 817
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 821
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 822
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public reverse()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 985
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-nez v6, :cond_0

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 986
    iget v6, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-ne v6, v7, :cond_1

    .line 987
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 988
    .local v2, currentTime:J
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v0, v2, v6

    .line 989
    .local v0, currentPlayTime:J
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    sub-long v4, v6, v0

    .line 990
    .local v4, timeLeft:J
    sub-long v6, v2, v4

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 994
    .end local v0           #currentPlayTime:J
    .end local v2           #currentTime:J
    .end local v4           #timeLeft:J
    :goto_1
    return-void

    .line 985
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 992
    :cond_1
    invoke-direct {p0, v7}, Landroid/animation/ValueAnimator;->start(Z)V

    goto :goto_1
.end method

.method public setCurrentPlayTime(J)V
    .locals 4
    .parameter "playTime"

    .prologue
    .line 510
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 511
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 512
    .local v0, currentTime:J
    iget v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 513
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    .line 514
    const/4 v2, 0x2

    iput v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 516
    :cond_0
    sub-long v2, v0, p1

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 517
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->animationFrame(J)Z

    .line 518
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 3
    .parameter "duration"

    .prologue
    .line 482
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_0
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 487
    return-object p0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 871
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 872
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 874
    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 373
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 377
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 383
    :goto_1
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 379
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 380
    .local v0, valuesHolder:Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1
.end method

.method public varargs setIntValues([I)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 345
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 349
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 355
    :goto_1
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 351
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 352
    .local v0, valuesHolder:Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_1
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 838
    if-eqz p1, :cond_0

    .line 839
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 843
    :goto_0
    return-void

    .line 841
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 405
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 409
    :cond_2
    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v3, ""

    const/4 v1, 0x0

    check-cast v1, Landroid/animation/TypeEvaluator;

    invoke-static {v3, v1, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 416
    :goto_1
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 412
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v4

    .line 413
    .local v0, valuesHolder:Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setRepeatCount(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 753
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 754
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 773
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 774
    return-void
.end method

.method public setStartDelay(J)V
    .locals 0
    .parameter "startDelay"

    .prologue
    .line 675
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 676
    return-void
.end method

.method public varargs setValues([Landroid/animation/PropertyValuesHolder;)V
    .locals 5
    .parameter "values"

    .prologue
    .line 428
    array-length v1, p1

    .line 429
    .local v1, numValues:I
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 430
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 431
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 432
    aget-object v2, p1, v0

    .line 433
    .local v2, valuesHolder:Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    .end local v2           #valuesHolder:Landroid/animation/PropertyValuesHolder;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 437
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 924
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    .line 925
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ValueAnimator@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1235
    .local v1, returnVal:Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    .line 1236
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1240
    .end local v0           #i:I
    :cond_0
    return-object v1
.end method

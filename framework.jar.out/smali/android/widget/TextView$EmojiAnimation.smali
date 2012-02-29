.class Landroid/widget/TextView$EmojiAnimation;
.super Landroid/os/Handler;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmojiAnimation"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final EMOJI_DELAY_TIME:I = 0x0

.field private static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory; = null

#the value of this static final field might be set in the static constructor
.field private static final MAX_EMOJI:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MIN_EMOJI:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14


# instance fields
.field private mLastUpdateTime:J

.field private mShowDefaultImage:Z

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 4329
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, Landroid/widget/TextView$EmojiAnimation;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .line 4335
    sget-object v0, Landroid/widget/TextView$EmojiAnimation;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_0

    .line 4336
    sget-object v0, Landroid/widget/TextView$EmojiAnimation;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, Landroid/widget/TextView$EmojiAnimation;->MIN_EMOJI:I

    .line 4337
    sget-object v0, Landroid/widget/TextView$EmojiAnimation;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/widget/TextView$EmojiAnimation;->MAX_EMOJI:I

    .line 4338
    sget-object v0, Landroid/widget/TextView$EmojiAnimation;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getAnimationDelayTime()I

    move-result v0

    sput v0, Landroid/widget/TextView$EmojiAnimation;->EMOJI_DELAY_TIME:I

    .line 4344
    :goto_0
    return-void

    .line 4340
    :cond_0
    sput v1, Landroid/widget/TextView$EmojiAnimation;->MIN_EMOJI:I

    .line 4341
    sput v1, Landroid/widget/TextView$EmojiAnimation;->MAX_EMOJI:I

    .line 4342
    sput v1, Landroid/widget/TextView$EmojiAnimation;->EMOJI_DELAY_TIME:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 4356
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4357
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/TextView$EmojiAnimation;->mView:Ljava/lang/ref/WeakReference;

    .line 4358
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TextView$EmojiAnimation;->mLastUpdateTime:J

    .line 4359
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$EmojiAnimation;->mShowDefaultImage:Z

    .line 4360
    return-void
.end method

.method private containsAnimatedEmoji(Ljava/lang/CharSequence;)Z
    .locals 7
    .parameter "text"

    .prologue
    const/4 v6, 0x1

    .line 4431
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int v1, v5, v6

    .line 4432
    .local v1, end:I
    const/4 v2, 0x0

    .local v2, i:I
    move v3, v2

    .line 4433
    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 4434
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 4435
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4436
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    .line 4437
    .local v4, pua:I
    sget v5, Landroid/widget/TextView$EmojiAnimation;->MIN_EMOJI:I

    if-lt v4, v5, :cond_0

    sget v5, Landroid/widget/TextView$EmojiAnimation;->MAX_EMOJI:I

    if-gt v4, v5, :cond_0

    .line 4438
    sget-object v5, Landroid/widget/TextView$EmojiAnimation;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v5, v4}, Landroid/emoji/EmojiFactory;->isAnimatedEmoji(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    move v5, v6

    .line 4444
    .end local v0           #c:C
    .end local v4           #pua:I
    :goto_1
    return v5

    .end local v2           #i:I
    .restart local v0       #c:C
    .restart local v3       #i:I
    .restart local v4       #pua:I
    :cond_0
    move v2, v3

    .end local v3           #i:I
    .end local v4           #pua:I
    .restart local v2       #i:I
    :cond_1
    move v3, v2

    .line 4443
    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 4444
    .end local v0           #c:C
    :cond_2
    const/4 v5, 0x0

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_1
.end method


# virtual methods
.method postDelayed()V
    .locals 4

    .prologue
    .line 4404
    sget v0, Landroid/widget/TextView$EmojiAnimation;->EMOJI_DELAY_TIME:I

    if-lez v0, :cond_0

    .line 4405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget v2, Landroid/widget/TextView$EmojiAnimation;->EMOJI_DELAY_TIME:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/widget/TextView$EmojiAnimation;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 4407
    :cond_0
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .line 4367
    invoke-virtual {p0, p0}, Landroid/widget/TextView$EmojiAnimation;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4369
    iget-object v4, p0, Landroid/widget/TextView$EmojiAnimation;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4370
    .local v3, tv:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    #getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v3}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_0

    #getter for: Landroid/widget/TextView;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v3}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)Landroid/graphics/Canvas;

    move-result-object v4

    if-nez v4, :cond_1

    .line 4398
    :cond_0
    :goto_0
    return-void

    .line 4374
    :cond_1
    #getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v3}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/widget/TextView$EmojiAnimation;->containsAnimatedEmoji(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4378
    invoke-virtual {v3}, Landroid/widget/TextView;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4379
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/TextView$EmojiAnimation;->mShowDefaultImage:Z

    .line 4380
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4381
    .local v0, currentTime:J
    iget-wide v4, p0, Landroid/widget/TextView$EmojiAnimation;->mLastUpdateTime:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_2

    .line 4382
    iput-wide v0, p0, Landroid/widget/TextView$EmojiAnimation;->mLastUpdateTime:J

    .line 4384
    :cond_2
    iget-wide v4, p0, Landroid/widget/TextView$EmojiAnimation;->mLastUpdateTime:J

    sub-long v4, v0, v4

    sget v6, Landroid/widget/TextView$EmojiAnimation;->EMOJI_DELAY_TIME:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    .line 4385
    iput-wide v0, p0, Landroid/widget/TextView$EmojiAnimation;->mLastUpdateTime:J

    .line 4386
    sget v4, Landroid/widget/TextView$EmojiAnimation;->EMOJI_DELAY_TIME:I

    int-to-long v4, v4

    div-long v4, v0, v4

    const-wide/32 v6, 0x7fffffff

    and-long/2addr v4, v6

    long-to-int v2, v4

    .line 4387
    .local v2, imageNumber:I
    sget-object v4, Landroid/widget/TextView$EmojiAnimation;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    #getter for: Landroid/widget/TextView;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v3}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)Landroid/graphics/Canvas;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/emoji/EmojiFactory;->setAnimationImageNumber(ILandroid/graphics/Canvas;)V

    .line 4388
    invoke-virtual {v3}, Landroid/widget/TextView;->invalidate()V

    .line 4390
    .end local v2           #imageNumber:I
    :cond_3
    iget-wide v4, p0, Landroid/widget/TextView$EmojiAnimation;->mLastUpdateTime:J

    sget v6, Landroid/widget/TextView$EmojiAnimation;->EMOJI_DELAY_TIME:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {p0, p0, v4, v5}, Landroid/widget/TextView$EmojiAnimation;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4392
    .end local v0           #currentTime:J
    :cond_4
    iget-boolean v4, p0, Landroid/widget/TextView$EmojiAnimation;->mShowDefaultImage:Z

    if-nez v4, :cond_0

    .line 4393
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/TextView$EmojiAnimation;->mShowDefaultImage:Z

    .line 4394
    sget-object v4, Landroid/widget/TextView$EmojiAnimation;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    const/4 v5, -0x1

    #getter for: Landroid/widget/TextView;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v3}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/emoji/EmojiFactory;->setAnimationImageNumber(ILandroid/graphics/Canvas;)V

    .line 4395
    invoke-virtual {v3}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0
.end method

.method setStartImageNumberIfNeeded()V
    .locals 8

    .prologue
    .line 4414
    iget-object v4, p0, Landroid/widget/TextView$EmojiAnimation;->mView:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    sget-object v4, Landroid/widget/TextView$EmojiAnimation;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v4, :cond_0

    .line 4415
    iget-object v4, p0, Landroid/widget/TextView$EmojiAnimation;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4416
    .local v3, tv:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    #getter for: Landroid/widget/TextView;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v3}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)Landroid/graphics/Canvas;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4417
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4418
    .local v0, currentTime:J
    sget v4, Landroid/widget/TextView$EmojiAnimation;->EMOJI_DELAY_TIME:I

    int-to-long v4, v4

    div-long v4, v0, v4

    const-wide/32 v6, 0x7fffffff

    and-long/2addr v4, v6

    long-to-int v2, v4

    .line 4420
    .local v2, imageNumber:I
    sget-object v4, Landroid/widget/TextView$EmojiAnimation;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    #getter for: Landroid/widget/TextView;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v3}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)Landroid/graphics/Canvas;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/emoji/EmojiFactory;->setAnimationImageNumber(ILandroid/graphics/Canvas;)V

    .line 4423
    .end local v0           #currentTime:J
    .end local v2           #imageNumber:I
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.class public Lmiui/app/screenelement/TimepanelScreenElement;
.super Lmiui/app/screenelement/AnimatedScreenElement;
.source "TimepanelScreenElement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TimepanelScreenElement"

.field private static final M12:Ljava/lang/String; = "hh:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field public static final TAG_NAME:Ljava/lang/String; = "Time"


# instance fields
.field private mBmpHeight:I

.field private mBmpWidth:I

.field private mBuffer:Landroid/graphics/Bitmap;

.field protected mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 1
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 29
    const-string v0, "kk:mm"

    iput-object v0, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mHandler:Landroid/os/Handler;

    .line 38
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 40
    new-instance v0, Lmiui/app/screenelement/TimepanelScreenElement$1;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/TimepanelScreenElement$1;-><init>(Lmiui/app/screenelement/TimepanelScreenElement;)V

    iput-object v0, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lmiui/app/screenelement/TimepanelScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lmiui/app/screenelement/TimepanelScreenElement;->updateTime()V

    return-void
.end method

.method static synthetic access$100(Lmiui/app/screenelement/TimepanelScreenElement;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getDigitBmp(C)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "c"

    .prologue
    .line 130
    const/16 v3, 0x3a

    if-ne p1, v3, :cond_0

    const-string v3, "dot"

    move-object v2, v3

    .line 132
    .local v2, suffix:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v3}, Lmiui/app/screenelement/AnimatedElement;->getBmp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "time.png"

    move-object v1, v3

    .line 133
    .local v1, src:Ljava/lang/String;
    :goto_1
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 134
    .local v0, dot:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    iget-object v3, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v3, v1}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 130
    .end local v0           #dot:I
    .end local v1           #src:Ljava/lang/String;
    .end local v2           #suffix:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 132
    .restart local v2       #suffix:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v3}, Lmiui/app/screenelement/AnimatedElement;->getBmp()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_1
.end method

.method private setDateFormat()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    .line 140
    return-void

    .line 139
    :cond_0
    const-string v0, "hh:mm"

    goto :goto_0
.end method

.method private updateTime()V
    .locals 11

    .prologue
    .line 101
    iget-object v8, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v8, :cond_2

    .line 102
    const/16 v8, 0x30

    invoke-direct {p0, v8}, Lmiui/app/screenelement/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 103
    .local v2, digitBmp:Landroid/graphics/Bitmap;
    const/16 v8, 0x3a

    invoke-direct {p0, v8}, Lmiui/app/screenelement/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 104
    .local v3, dotBmp:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 127
    .end local v2           #digitBmp:Landroid/graphics/Bitmap;
    .end local v3           #dotBmp:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 106
    .restart local v2       #digitBmp:Landroid/graphics/Bitmap;
    .restart local v3       #dotBmp:Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mBmpHeight:I

    .line 107
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mBuffer:Landroid/graphics/Bitmap;

    .line 111
    .end local v2           #digitBmp:Landroid/graphics/Bitmap;
    .end local v3           #dotBmp:Landroid/graphics/Bitmap;
    :cond_2
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v8, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    .local v6, tmpCanvas:Landroid/graphics/Canvas;
    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 114
    iget-object v8, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 115
    iget-object v8, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    iget-object v9, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 116
    .local v5, newTime:Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 117
    .local v7, x:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 118
    invoke-interface {v5, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 119
    .local v1, digit:C
    invoke-direct {p0, v1}, Lmiui/app/screenelement/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    .local v0, bmp:Landroid/graphics/Bitmap;
    int-to-float v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v0, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 124
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #digit:C
    :cond_3
    iput v7, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mBmpWidth:I

    .line 126
    iget-object v8, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lmiui/app/screenelement/ScreenContext;->mShouldUpdate:Z

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Lmiui/app/screenelement/AnimatedScreenElement;->init()V

    .line 72
    invoke-direct {p0}, Lmiui/app/screenelement/TimepanelScreenElement;->setDateFormat()V

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    invoke-direct {p0}, Lmiui/app/screenelement/TimepanelScreenElement;->updateTime()V

    .line 82
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 91
    invoke-virtual {p0}, Lmiui/app/screenelement/TimepanelScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/AnimatedElement;->getAlpha()I

    move-result v0

    if-gtz v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v1}, Lmiui/app/screenelement/AnimatedElement;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    iget-object v0, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mBuffer:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v1}, Lmiui/app/screenelement/AnimatedElement;->getX()I

    move-result v1

    iget v2, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mBmpWidth:I

    invoke-virtual {p0, v1, v2}, Lmiui/app/screenelement/TimepanelScreenElement;->getLeft(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v2}, Lmiui/app/screenelement/AnimatedElement;->getY()I

    move-result v2

    iget v3, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mBmpHeight:I

    invoke-virtual {p0, v2, v3}, Lmiui/app/screenelement/TimepanelScreenElement;->getTop(II)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lmiui/app/screenelement/TimepanelScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

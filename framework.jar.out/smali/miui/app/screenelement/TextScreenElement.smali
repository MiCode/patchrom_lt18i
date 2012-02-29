.class public Lmiui/app/screenelement/TextScreenElement;
.super Lmiui/app/screenelement/AnimatedScreenElement;
.source "TextScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/TextScreenElement$1;,
        Lmiui/app/screenelement/TextScreenElement$StringVarPara;,
        Lmiui/app/screenelement/TextScreenElement$ExpressioPara;,
        Lmiui/app/screenelement/TextScreenElement$FormatPara;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x12

.field private static final LOG_TAG:Ljava/lang/String; = "TextScreenElement"

.field private static final PADDING:I = 0x32

.field public static final TAG_NAME:Ljava/lang/String; = "Text"


# instance fields
.field private mColor:I

.field protected mFormat:Ljava/lang/String;

.field protected mFormatVar:Lmiui/app/screenelement/Variable;

.field private mMarqueePos:F

.field private mMarqueeSpeed:I

.field private mPaint:Landroid/graphics/Paint;

.field private mParas:[Lmiui/app/screenelement/TextScreenElement$FormatPara;

.field private mParasValue:[Ljava/lang/Object;

.field private mPreviousTime:J

.field private mSize:I

.field private mText:Ljava/lang/String;

.field private mTextVar:Lmiui/app/screenelement/Variable;


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
    .line 102
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 31
    const v0, 0x7f7fffff

    iput v0, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueePos:F

    .line 103
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/TextScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 104
    return-void
.end method

.method private getVarStr(Ljava/lang/String;Lmiui/app/screenelement/Variable;)Ljava/lang/String;
    .locals 3
    .parameter "text"
    .parameter "var"

    .prologue
    .line 240
    if-eqz p2, :cond_0

    .line 241
    iget-object v0, p0, Lmiui/app/screenelement/TextScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {p2}, Lmiui/app/screenelement/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lmiui/app/screenelement/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/Variables;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private resetMaqueePos(II)V
    .locals 2
    .parameter "width"
    .parameter "textWidth"

    .prologue
    .line 219
    sget-object v0, Lmiui/app/screenelement/TextScreenElement$1;->$SwitchMap$android$graphics$Paint$Align:[I

    iget-object v1, p0, Lmiui/app/screenelement/TextScreenElement;->mAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v1}, Landroid/graphics/Paint$Align;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 230
    :goto_0
    iget v0, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueePos:F

    const/high16 v1, 0x4248

    add-float/2addr v0, v1

    iput v0, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueePos:F

    .line 231
    return-void

    .line 221
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueePos:F

    goto :goto_0

    .line 224
    :pswitch_1
    div-int/lit8 v0, p2, 0x2

    div-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueePos:F

    goto :goto_0

    .line 227
    :pswitch_2
    sub-int v0, p2, p1

    int-to-float v0, v0

    iput v0, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueePos:F

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 246
    iget-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mFormat:Ljava/lang/String;

    iget-object v3, p0, Lmiui/app/screenelement/TextScreenElement;->mFormatVar:Lmiui/app/screenelement/Variable;

    invoke-direct {p0, v2, v3}, Lmiui/app/screenelement/TextScreenElement;->getVarStr(Ljava/lang/String;Lmiui/app/screenelement/Variable;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mFormat:Ljava/lang/String;

    .line 247
    iget-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mFormat:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mParas:[Lmiui/app/screenelement/TextScreenElement$FormatPara;

    if-eqz v2, :cond_1

    .line 248
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mParas:[Lmiui/app/screenelement/TextScreenElement$FormatPara;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 249
    iget-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mParasValue:[Ljava/lang/Object;

    iget-object v3, p0, Lmiui/app/screenelement/TextScreenElement;->mParas:[Lmiui/app/screenelement/TextScreenElement$FormatPara;

    aget-object v3, v3, v1

    iget-object v4, p0, Lmiui/app/screenelement/TextScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v3, v4}, Lmiui/app/screenelement/TextScreenElement$FormatPara;->evaluate(Lmiui/app/screenelement/Variables;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_0
    :try_start_0
    iget-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mFormat:Ljava/lang/String;

    iget-object v3, p0, Lmiui/app/screenelement/TextScreenElement;->mParasValue:[Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 257
    .end local v1           #i:I
    :goto_1
    return-object v2

    .line 253
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 254
    .local v0, e:Ljava/util/IllegalFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Format error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/app/screenelement/TextScreenElement;->mFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 257
    .end local v0           #e:Ljava/util/IllegalFormatException;
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mText:Ljava/lang/String;

    iget-object v3, p0, Lmiui/app/screenelement/TextScreenElement;->mTextVar:Lmiui/app/screenelement/Variable;

    invoke-direct {p0, v2, v3}, Lmiui/app/screenelement/TextScreenElement;->getVarStr(Ljava/lang/String;Lmiui/app/screenelement/Variable;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 9
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-string v8, "node is null"

    const-string v7, "@@"

    const-string v6, "@"

    const-string v5, ""

    .line 107
    if-nez p1, :cond_0

    .line 108
    const-string v2, "TextScreenElement"

    const-string v3, "node is null"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v2, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v3, "node is null"

    invoke-direct {v2, v8}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_0
    const-string/jumbo v2, "text"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mText:Ljava/lang/String;

    .line 114
    iget-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mText:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mText:Ljava/lang/String;

    const-string v3, "@@"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    new-instance v2, Lmiui/app/screenelement/Variable;

    iget-object v3, p0, Lmiui/app/screenelement/TextScreenElement;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/app/screenelement/Variable;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mTextVar:Lmiui/app/screenelement/Variable;

    .line 116
    const-string v2, ""

    iput-object v5, p0, Lmiui/app/screenelement/TextScreenElement;->mText:Ljava/lang/String;

    .line 119
    :cond_1
    const-string v2, "format"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mFormat:Ljava/lang/String;

    .line 120
    iget-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mFormat:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mFormat:Ljava/lang/String;

    const-string v3, "@@"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    new-instance v2, Lmiui/app/screenelement/Variable;

    iget-object v3, p0, Lmiui/app/screenelement/TextScreenElement;->mFormat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/app/screenelement/Variable;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mFormatVar:Lmiui/app/screenelement/Variable;

    .line 122
    const-string v2, ""

    iput-object v5, p0, Lmiui/app/screenelement/TextScreenElement;->mFormat:Ljava/lang/String;

    .line 125
    :cond_2
    const-string v2, "color"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lmiui/app/screenelement/TextScreenElement;->mColor:I

    .line 126
    const-string/jumbo v2, "size"

    const/16 v3, 0x12

    invoke-static {p1, v2, v3}, Lmiui/app/screenelement/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lmiui/app/screenelement/TextScreenElement;->mSize:I

    .line 127
    const-string v2, "marqueeSpeed"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lmiui/app/screenelement/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueeSpeed:I

    .line 128
    const-string v2, "bold"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 129
    .local v0, bold:Z
    const-string v2, "paras"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, paras:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 131
    invoke-static {v1}, Lmiui/app/screenelement/TextScreenElement$FormatPara;->buildArray(Ljava/lang/String;)[Lmiui/app/screenelement/TextScreenElement$FormatPara;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mParas:[Lmiui/app/screenelement/TextScreenElement$FormatPara;

    .line 132
    iget-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mParas:[Lmiui/app/screenelement/TextScreenElement$FormatPara;

    if-eqz v2, :cond_3

    .line 133
    iget-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mParas:[Lmiui/app/screenelement/TextScreenElement$FormatPara;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mParasValue:[Ljava/lang/Object;

    .line 136
    :cond_3
    iget-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lmiui/app/screenelement/TextScreenElement;->mAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 137
    iget-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lmiui/app/screenelement/TextScreenElement;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lmiui/app/screenelement/TextScreenElement;->mSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 139
    iget-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    iget-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 141
    new-instance v2, Lmiui/app/screenelement/AnimatedElement;

    iget-object v3, p0, Lmiui/app/screenelement/TextScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v2, p1, v3}, Lmiui/app/screenelement/AnimatedElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v2, p0, Lmiui/app/screenelement/TextScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    .line 142
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "c"

    .prologue
    .line 146
    invoke-virtual {p0}, Lmiui/app/screenelement/TextScreenElement;->isVisible()Z

    move-result v6

    if-nez v6, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v6, p0, Lmiui/app/screenelement/TextScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v6}, Lmiui/app/screenelement/AnimatedElement;->getAlpha()I

    move-result v6

    if-lez v6, :cond_0

    .line 151
    iget-object v6, p0, Lmiui/app/screenelement/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lmiui/app/screenelement/TextScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v7}, Lmiui/app/screenelement/AnimatedElement;->getAlpha()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 152
    invoke-virtual {p0}, Lmiui/app/screenelement/TextScreenElement;->getText()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, text:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 156
    iget-object v6, p0, Lmiui/app/screenelement/TextScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v6}, Lmiui/app/screenelement/AnimatedElement;->getWidth()I

    move-result v3

    .line 157
    .local v3, width:I
    iget-object v6, p0, Lmiui/app/screenelement/TextScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v6}, Lmiui/app/screenelement/AnimatedElement;->getX()I

    move-result v4

    .line 158
    .local v4, x:I
    iget-object v6, p0, Lmiui/app/screenelement/TextScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v6}, Lmiui/app/screenelement/AnimatedElement;->getY()I

    move-result v5

    .line 160
    .local v5, y:I
    iget-object v6, p0, Lmiui/app/screenelement/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 161
    .local v0, height:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 162
    iget-object v6, p0, Lmiui/app/screenelement/TextScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v6}, Lmiui/app/screenelement/AnimatedElement;->getRotationAngle()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/app/screenelement/TextScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v7}, Lmiui/app/screenelement/AnimatedElement;->getX()I

    move-result v7

    iget-object v8, p0, Lmiui/app/screenelement/TextScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v8}, Lmiui/app/screenelement/AnimatedElement;->getCenterX()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lmiui/app/screenelement/TextScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v8}, Lmiui/app/screenelement/AnimatedElement;->getY()I

    move-result v8

    iget-object v9, p0, Lmiui/app/screenelement/TextScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v9}, Lmiui/app/screenelement/AnimatedElement;->getCenterY()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 164
    if-lez v3, :cond_2

    .line 165
    invoke-virtual {p0, v4, v3}, Lmiui/app/screenelement/TextScreenElement;->getLeft(II)I

    move-result v1

    .line 166
    .local v1, left:I
    int-to-float v6, v1

    const/16 v7, 0xa

    sub-int v7, v5, v7

    int-to-float v7, v7

    add-int v8, v1, v3

    int-to-float v8, v8

    int-to-float v9, v5

    add-float/2addr v9, v0

    const/high16 v10, 0x41a0

    add-float/2addr v9, v10

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 169
    .end local v1           #left:I
    :cond_2
    iget v6, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueeSpeed:I

    if-eqz v6, :cond_3

    if-nez v3, :cond_4

    .line 170
    :cond_3
    int-to-float v6, v4

    int-to-float v7, v5

    add-float/2addr v7, v0

    iget-object v8, p0, Lmiui/app/screenelement/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 175
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 172
    :cond_4
    int-to-float v6, v4

    iget v7, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueePos:F

    const v8, 0x7f7fffff

    cmpl-float v7, v7, v8

    if-nez v7, :cond_5

    const/4 v7, 0x0

    :goto_2
    add-float/2addr v6, v7

    int-to-float v7, v5

    add-float/2addr v7, v0

    iget-object v8, p0, Lmiui/app/screenelement/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    iget v7, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueePos:F

    goto :goto_2
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 234
    iput-object p1, p0, Lmiui/app/screenelement/TextScreenElement;->mText:Ljava/lang/String;

    .line 236
    const-string v0, ""

    iput-object v0, p0, Lmiui/app/screenelement/TextScreenElement;->mFormat:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public tick(J)V
    .locals 13
    .parameter "currentTime"

    .prologue
    const v12, 0x7f7fffff

    const/16 v11, 0x32

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 180
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/AnimatedScreenElement;->tick(J)V

    .line 181
    iget-object v4, p0, Lmiui/app/screenelement/TextScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v4}, Lmiui/app/screenelement/AnimatedElement;->getWidth()I

    move-result v3

    .line 182
    .local v3, width:I
    invoke-virtual {p0}, Lmiui/app/screenelement/TextScreenElement;->getText()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v4, p0, Lmiui/app/screenelement/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v2, v4

    .line 186
    .local v2, textWidth:I
    iget-object v4, p0, Lmiui/app/screenelement/TextScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    iget-object v4, p0, Lmiui/app/screenelement/TextScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    iget-object v5, p0, Lmiui/app/screenelement/TextScreenElement;->mName:Ljava/lang/String;

    const-string/jumbo v6, "text_width"

    int-to-double v7, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 190
    :cond_1
    iget v4, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueeSpeed:I

    if-lez v4, :cond_7

    if-lez v3, :cond_7

    if-le v2, v3, :cond_7

    .line 191
    iget v4, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueePos:F

    cmpl-float v4, v4, v12

    if-nez v4, :cond_3

    .line 193
    invoke-direct {p0, v3, v2}, Lmiui/app/screenelement/TextScreenElement;->resetMaqueePos(II)V

    .line 212
    :cond_2
    :goto_1
    iput-wide p1, p0, Lmiui/app/screenelement/TextScreenElement;->mPreviousTime:J

    goto :goto_0

    .line 195
    :cond_3
    iget v4, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueePos:F

    iget v5, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueeSpeed:I

    int-to-long v5, v5

    iget-wide v7, p0, Lmiui/app/screenelement/TextScreenElement;->mPreviousTime:J

    sub-long v7, p1, v7

    mul-long/2addr v5, v7

    long-to-float v5, v5

    const/high16 v6, 0x447a

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueePos:F

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, reset:Z
    sget-object v4, Lmiui/app/screenelement/TextScreenElement$1;->$SwitchMap$android$graphics$Paint$Align:[I

    iget-object v5, p0, Lmiui/app/screenelement/TextScreenElement;->mAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v5}, Landroid/graphics/Paint$Align;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 208
    :goto_2
    if-eqz v0, :cond_2

    .line 209
    invoke-direct {p0, v3, v2}, Lmiui/app/screenelement/TextScreenElement;->resetMaqueePos(II)V

    goto :goto_1

    .line 199
    :pswitch_0
    iget v4, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueePos:F

    sub-int v5, v3, v2

    sub-int/2addr v5, v11

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    move v0, v10

    .line 200
    :goto_3
    goto :goto_2

    :cond_4
    move v0, v9

    .line 199
    goto :goto_3

    .line 202
    :pswitch_1
    iget v4, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueePos:F

    div-int/lit8 v5, v3, 0x2

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr v5, v6

    sub-int/2addr v5, v11

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    move v0, v10

    .line 203
    :goto_4
    goto :goto_2

    :cond_5
    move v0, v9

    .line 202
    goto :goto_4

    .line 205
    :pswitch_2
    iget v4, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueePos:F

    neg-int v5, v3

    sub-int/2addr v5, v11

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    move v0, v10

    :goto_5
    goto :goto_2

    :cond_6
    move v0, v9

    goto :goto_5

    .line 214
    .end local v0           #reset:Z
    :cond_7
    iput v12, p0, Lmiui/app/screenelement/TextScreenElement;->mMarqueePos:F

    goto/16 :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

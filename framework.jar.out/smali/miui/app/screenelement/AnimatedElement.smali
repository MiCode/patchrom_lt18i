.class public Lmiui/app/screenelement/AnimatedElement;
.super Ljava/lang/Object;
.source "AnimatedElement.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AnimatedElement"


# instance fields
.field private mAlignAbsolute:Z

.field private mAlphaExpression:Lmiui/app/screenelement/Expression;

.field private mAlphas:Lmiui/app/screenelement/AlphaAnimation;

.field protected mAngleExpression:Lmiui/app/screenelement/Expression;

.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/BaseAnimation;",
            ">;"
        }
    .end annotation
.end field

.field protected mBaseXExpression:Lmiui/app/screenelement/Expression;

.field protected mBaseYExpression:Lmiui/app/screenelement/Expression;

.field protected mCenterXExpression:Lmiui/app/screenelement/Expression;

.field protected mCenterYExpression:Lmiui/app/screenelement/Expression;

.field private mContext:Lmiui/app/screenelement/ScreenContext;

.field protected mHeightExpression:Lmiui/app/screenelement/Expression;

.field private mPositions:Lmiui/app/screenelement/PositionAnimation;

.field private mRotations:Lmiui/app/screenelement/RotationAnimation;

.field private mSizes:Lmiui/app/screenelement/SizeAnimation;

.field private mSources:Lmiui/app/screenelement/SourcesAnimation;

.field protected mSrc:Ljava/lang/String;

.field protected mSrcIdExpression:Lmiui/app/screenelement/Expression;

.field protected mWidthExpression:Lmiui/app/screenelement/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

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
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    .line 53
    iput-object p2, p0, Lmiui/app/screenelement/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 54
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/AnimatedElement;->load(Lorg/w3c/dom/Element;)V

    .line 55
    return-void
.end method

.method private loadAlphaAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 105
    const-string v1, "AlphaAnimation"

    invoke-static {p1, v1}, Lmiui/app/screenelement/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 106
    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v1, Lmiui/app/screenelement/AlphaAnimation;

    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v1, v0, v2}, Lmiui/app/screenelement/AlphaAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mAlphas:Lmiui/app/screenelement/AlphaAnimation;

    .line 110
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mAlphas:Lmiui/app/screenelement/AlphaAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadPositionAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 130
    const-string v1, "PositionAnimation"

    invoke-static {p1, v1}, Lmiui/app/screenelement/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 131
    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v1, Lmiui/app/screenelement/PositionAnimation;

    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v1, v0, v2}, Lmiui/app/screenelement/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mPositions:Lmiui/app/screenelement/PositionAnimation;

    .line 135
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mPositions:Lmiui/app/screenelement/PositionAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadRotationAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 142
    const-string v1, "RotationAnimation"

    invoke-static {p1, v1}, Lmiui/app/screenelement/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 143
    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v1, Lmiui/app/screenelement/RotationAnimation;

    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v1, v0, v2}, Lmiui/app/screenelement/RotationAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mRotations:Lmiui/app/screenelement/RotationAnimation;

    .line 147
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mRotations:Lmiui/app/screenelement/RotationAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadSizeAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 93
    const-string v1, "SizeAnimation"

    invoke-static {p1, v1}, Lmiui/app/screenelement/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 94
    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    new-instance v1, Lmiui/app/screenelement/SizeAnimation;

    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v1, v0, v2}, Lmiui/app/screenelement/SizeAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mSizes:Lmiui/app/screenelement/SizeAnimation;

    .line 98
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mSizes:Lmiui/app/screenelement/SizeAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadSourceAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 117
    const-string v1, "SourcesAnimation"

    invoke-static {p1, v1}, Lmiui/app/screenelement/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 118
    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v1, Lmiui/app/screenelement/SourcesAnimation;

    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v1, v0, v2}, Lmiui/app/screenelement/SourcesAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mSources:Lmiui/app/screenelement/SourcesAnimation;

    .line 123
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mSources:Lmiui/app/screenelement/SourcesAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getAlpha()I
    .locals 6

    .prologue
    const/16 v5, 0xff

    const/high16 v4, 0x437f

    .line 234
    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mAlphaExpression:Lmiui/app/screenelement/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mAlphaExpression:Lmiui/app/screenelement/Expression;

    iget-object v3, p0, Lmiui/app/screenelement/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v2

    double-to-int v2, v2

    move v0, v2

    .line 235
    .local v0, alpha:I
    :goto_0
    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mAlphas:Lmiui/app/screenelement/AlphaAnimation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mAlphas:Lmiui/app/screenelement/AlphaAnimation;

    invoke-virtual {v2}, Lmiui/app/screenelement/AlphaAnimation;->getAlpha()I

    move-result v2

    move v1, v2

    .line 236
    .local v1, alpha1:I
    :goto_1
    mul-int/lit16 v2, v0, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v4

    int-to-float v3, v1

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    float-to-int v2, v2

    return v2

    .end local v0           #alpha:I
    .end local v1           #alpha1:I
    :cond_0
    move v0, v5

    .line 234
    goto :goto_0

    .restart local v0       #alpha:I
    :cond_1
    move v1, v5

    .line 235
    goto :goto_1
.end method

.method public getBmp()Ljava/lang/String;
    .locals 5

    .prologue
    .line 164
    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mSrc:Ljava/lang/String;

    .line 165
    .local v2, src:Ljava/lang/String;
    iget-object v3, p0, Lmiui/app/screenelement/AnimatedElement;->mSources:Lmiui/app/screenelement/SourcesAnimation;

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, p0, Lmiui/app/screenelement/AnimatedElement;->mSources:Lmiui/app/screenelement/SourcesAnimation;

    invoke-virtual {v3}, Lmiui/app/screenelement/SourcesAnimation;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 172
    :cond_0
    :goto_0
    return-object v2

    .line 167
    :cond_1
    iget-object v3, p0, Lmiui/app/screenelement/AnimatedElement;->mSrcIdExpression:Lmiui/app/screenelement/Expression;

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lmiui/app/screenelement/AnimatedElement;->mSrcIdExpression:Lmiui/app/screenelement/Expression;

    iget-object v4, p0, Lmiui/app/screenelement/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v3, v4}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v3

    double-to-int v1, v3

    .line 169
    .local v1, id:I
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 170
    .local v0, dot:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getCenterX()I
    .locals 3

    .prologue
    .line 240
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mCenterXExpression:Lmiui/app/screenelement/Expression;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mCenterXExpression:Lmiui/app/screenelement/Expression;

    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v1

    double-to-int v1, v1

    move v0, v1

    .line 241
    .local v0, x:I
    :goto_0
    return v0

    .line 240
    .end local v0           #x:I
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getCenterY()I
    .locals 3

    .prologue
    .line 245
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mCenterYExpression:Lmiui/app/screenelement/Expression;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mCenterYExpression:Lmiui/app/screenelement/Expression;

    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v1

    double-to-int v1, v1

    move v0, v1

    .line 246
    .local v0, y:I
    :goto_0
    return v0

    .line 245
    .end local v0           #y:I
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedElement;->mSizes:Lmiui/app/screenelement/SizeAnimation;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedElement;->mSizes:Lmiui/app/screenelement/SizeAnimation;

    invoke-virtual {v0}, Lmiui/app/screenelement/SizeAnimation;->getHeight()I

    move-result v0

    .line 209
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedElement;->mHeightExpression:Lmiui/app/screenelement/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/app/screenelement/AnimatedElement;->mHeightExpression:Lmiui/app/screenelement/Expression;

    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedElement;->mSizes:Lmiui/app/screenelement/SizeAnimation;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedElement;->mSizes:Lmiui/app/screenelement/SizeAnimation;

    invoke-virtual {v0}, Lmiui/app/screenelement/SizeAnimation;->getMaxHeight()I

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedElement;->mHeightExpression:Lmiui/app/screenelement/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/app/screenelement/AnimatedElement;->mHeightExpression:Lmiui/app/screenelement/Expression;

    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxWidth()I
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedElement;->mSizes:Lmiui/app/screenelement/SizeAnimation;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedElement;->mSizes:Lmiui/app/screenelement/SizeAnimation;

    invoke-virtual {v0}, Lmiui/app/screenelement/SizeAnimation;->getMaxWidth()I

    move-result v0

    .line 216
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedElement;->mWidthExpression:Lmiui/app/screenelement/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/app/screenelement/AnimatedElement;->mWidthExpression:Lmiui/app/screenelement/Expression;

    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRotationAngle()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 228
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mAngleExpression:Lmiui/app/screenelement/Expression;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mAngleExpression:Lmiui/app/screenelement/Expression;

    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v1

    double-to-int v1, v1

    move v0, v1

    .line 229
    .local v0, angle:I
    :goto_0
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mRotations:Lmiui/app/screenelement/RotationAnimation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mRotations:Lmiui/app/screenelement/RotationAnimation;

    invoke-virtual {v1}, Lmiui/app/screenelement/RotationAnimation;->getAngle()I

    move-result v1

    :goto_1
    add-int/2addr v1, v0

    return v1

    .end local v0           #angle:I
    :cond_0
    move v0, v3

    .line 228
    goto :goto_0

    .restart local v0       #angle:I
    :cond_1
    move v1, v3

    .line 229
    goto :goto_1
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedElement;->mSizes:Lmiui/app/screenelement/SizeAnimation;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedElement;->mSizes:Lmiui/app/screenelement/SizeAnimation;

    invoke-virtual {v0}, Lmiui/app/screenelement/SizeAnimation;->getWidth()I

    move-result v0

    .line 201
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedElement;->mWidthExpression:Lmiui/app/screenelement/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/app/screenelement/AnimatedElement;->mWidthExpression:Lmiui/app/screenelement/Expression;

    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getX()I
    .locals 3

    .prologue
    .line 176
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mBaseXExpression:Lmiui/app/screenelement/Expression;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mBaseXExpression:Lmiui/app/screenelement/Expression;

    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v1

    double-to-int v1, v1

    move v0, v1

    .line 177
    .local v0, x:I
    :goto_0
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mSources:Lmiui/app/screenelement/SourcesAnimation;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mSources:Lmiui/app/screenelement/SourcesAnimation;

    invoke-virtual {v1}, Lmiui/app/screenelement/SourcesAnimation;->getX()I

    move-result v1

    add-int/2addr v0, v1

    .line 180
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mPositions:Lmiui/app/screenelement/PositionAnimation;

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mPositions:Lmiui/app/screenelement/PositionAnimation;

    invoke-virtual {v1}, Lmiui/app/screenelement/PositionAnimation;->getX()I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    :cond_1
    return v0

    .line 176
    .end local v0           #x:I
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getY()I
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mBaseYExpression:Lmiui/app/screenelement/Expression;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mBaseYExpression:Lmiui/app/screenelement/Expression;

    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v1

    double-to-int v1, v1

    move v0, v1

    .line 188
    .local v0, y:I
    :goto_0
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mSources:Lmiui/app/screenelement/SourcesAnimation;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mSources:Lmiui/app/screenelement/SourcesAnimation;

    invoke-virtual {v1}, Lmiui/app/screenelement/SourcesAnimation;->getY()I

    move-result v1

    add-int/2addr v0, v1

    .line 191
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mPositions:Lmiui/app/screenelement/PositionAnimation;

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mPositions:Lmiui/app/screenelement/PositionAnimation;

    invoke-virtual {v1}, Lmiui/app/screenelement/PositionAnimation;->getY()I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    :cond_1
    return v0

    .line 187
    .end local v0           #y:I
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 154
    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/BaseAnimation;

    .line 155
    .local v0, ani:Lmiui/app/screenelement/BaseAnimation;
    invoke-virtual {v0}, Lmiui/app/screenelement/BaseAnimation;->init()V

    goto :goto_0

    .line 157
    .end local v0           #ani:Lmiui/app/screenelement/BaseAnimation;
    :cond_0
    return-void
.end method

.method public isAlignAbsolute()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lmiui/app/screenelement/AnimatedElement;->mAlignAbsolute:Z

    return v0
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 4
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v3, "node is null"

    .line 61
    if-nez p1, :cond_0

    .line 62
    const-string v1, "AnimatedElement"

    const-string v2, "node is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v1, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v2, "node is null"

    invoke-direct {v1, v3}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_0
    const-string/jumbo v1, "x"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mBaseXExpression:Lmiui/app/screenelement/Expression;

    .line 71
    const-string/jumbo v1, "y"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mBaseYExpression:Lmiui/app/screenelement/Expression;

    .line 72
    const-string/jumbo v1, "w"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mWidthExpression:Lmiui/app/screenelement/Expression;

    .line 73
    const-string v1, "h"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mHeightExpression:Lmiui/app/screenelement/Expression;

    .line 74
    const-string v1, "angle"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mAngleExpression:Lmiui/app/screenelement/Expression;

    .line 75
    const-string v1, "centerX"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mCenterXExpression:Lmiui/app/screenelement/Expression;

    .line 76
    const-string v1, "centerY"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mCenterYExpression:Lmiui/app/screenelement/Expression;

    .line 77
    const-string/jumbo v1, "srcid"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mSrcIdExpression:Lmiui/app/screenelement/Expression;

    .line 78
    const-string v1, "alpha"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mAlphaExpression:Lmiui/app/screenelement/Expression;

    .line 79
    const-string/jumbo v1, "src"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/AnimatedElement;->mSrc:Ljava/lang/String;

    .line 80
    const-string v1, "align"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, align:Ljava/lang/String;
    const-string v1, "absolute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/app/screenelement/AnimatedElement;->mAlignAbsolute:Z

    .line 85
    :cond_1
    invoke-direct {p0, p1}, Lmiui/app/screenelement/AnimatedElement;->loadSourceAnimations(Lorg/w3c/dom/Element;)V

    .line 86
    invoke-direct {p0, p1}, Lmiui/app/screenelement/AnimatedElement;->loadPositionAnimations(Lorg/w3c/dom/Element;)V

    .line 87
    invoke-direct {p0, p1}, Lmiui/app/screenelement/AnimatedElement;->loadRotationAnimations(Lorg/w3c/dom/Element;)V

    .line 88
    invoke-direct {p0, p1}, Lmiui/app/screenelement/AnimatedElement;->loadSizeAnimations(Lorg/w3c/dom/Element;)V

    .line 89
    invoke-direct {p0, p1}, Lmiui/app/screenelement/AnimatedElement;->loadAlphaAnimations(Lorg/w3c/dom/Element;)V

    .line 90
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 250
    iget-object v2, p0, Lmiui/app/screenelement/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/BaseAnimation;

    .line 251
    .local v0, ani:Lmiui/app/screenelement/BaseAnimation;
    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/BaseAnimation;->tick(J)V

    goto :goto_0

    .line 253
    .end local v0           #ani:Lmiui/app/screenelement/BaseAnimation;
    :cond_0
    return-void
.end method

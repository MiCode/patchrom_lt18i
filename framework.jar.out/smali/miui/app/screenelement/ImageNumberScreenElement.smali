.class public Lmiui/app/screenelement/ImageNumberScreenElement;
.super Lmiui/app/screenelement/AnimatedScreenElement;
.source "ImageNumberScreenElement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageNumberScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "ImageNumber"


# instance fields
.field private mImages:Lmiui/app/screenelement/ImagesInOne;

.field private mNumExpression:Lmiui/app/screenelement/Expression;

.field private mNumberWidth:I

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
    .line 20
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ImageNumberScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 21
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/ImageNumberScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 22
    return-void
.end method


# virtual methods
.method public load(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v2, "node is null"

    .line 25
    if-nez p1, :cond_0

    .line 26
    const-string v0, "ImageNumberScreenElement"

    const-string v1, "node is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v2}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    const-string v0, "number"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/ImageNumberScreenElement;->mNumExpression:Lmiui/app/screenelement/Expression;

    .line 31
    const-string v0, "numberWidth"

    invoke-static {p1, v0}, Lmiui/app/screenelement/Utils;->getAttrAsIntThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/ImageNumberScreenElement;->mNumberWidth:I

    .line 32
    new-instance v0, Lmiui/app/screenelement/ImagesInOne;

    iget-object v1, p0, Lmiui/app/screenelement/ImageNumberScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    iget-object v2, p0, Lmiui/app/screenelement/ImageNumberScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v2}, Lmiui/app/screenelement/AnimatedElement;->getBmp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lmiui/app/screenelement/ImageNumberScreenElement;->mNumberWidth:I

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/ImagesInOne;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lmiui/app/screenelement/ImageNumberScreenElement;->mImages:Lmiui/app/screenelement/ImagesInOne;

    .line 33
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "c"

    .prologue
    .line 37
    invoke-virtual {p0}, Lmiui/app/screenelement/ImageNumberScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ImageNumberScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/AnimatedElement;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    iget-object v0, p0, Lmiui/app/screenelement/ImageNumberScreenElement;->mNumExpression:Lmiui/app/screenelement/Expression;

    iget-object v1, p0, Lmiui/app/screenelement/ImageNumberScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    double-to-int v8, v0

    .line 43
    .local v8, number:I
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 44
    .local v7, numStr:Ljava/lang/String;
    iget-object v0, p0, Lmiui/app/screenelement/ImageNumberScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/AnimatedElement;->getX()I

    move-result v2

    .line 45
    .local v2, left:I
    iget-object v0, p0, Lmiui/app/screenelement/ImageNumberScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lmiui/app/screenelement/ImageNumberScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v1}, Lmiui/app/screenelement/AnimatedElement;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 46
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 47
    iget-object v0, p0, Lmiui/app/screenelement/ImageNumberScreenElement;->mImages:Lmiui/app/screenelement/ImagesInOne;

    iget-object v1, p0, Lmiui/app/screenelement/ImageNumberScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v1}, Lmiui/app/screenelement/AnimatedElement;->getY()I

    move-result v3

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x30

    sub-int v4, v1, v4

    iget-object v5, p0, Lmiui/app/screenelement/ImageNumberScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmiui/app/screenelement/ImagesInOne;->draw(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 48
    iget v0, p0, Lmiui/app/screenelement/ImageNumberScreenElement;->mNumberWidth:I

    add-int/2addr v2, v0

    .line 46
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

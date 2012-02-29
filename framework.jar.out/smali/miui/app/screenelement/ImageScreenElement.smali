.class public Lmiui/app/screenelement/ImageScreenElement;
.super Lmiui/app/screenelement/AnimatedScreenElement;
.source "ImageScreenElement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageScreenElement"

.field public static final MASK_TAG_NAME:Ljava/lang/String; = "Mask"

.field public static final TAG_NAME:Ljava/lang/String; = "Image"


# instance fields
.field private mAntiAlias:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDesRect:Landroid/graphics/Rect;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/AnimatedElement;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 3
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 37
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/ImageScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 38
    const-string v0, "antiAlias"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/screenelement/ImageScreenElement;->mAntiAlias:Z

    .line 39
    iget-object v0, p0, Lmiui/app/screenelement/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lmiui/app/screenelement/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 40
    iget-object v0, p0, Lmiui/app/screenelement/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 41
    return-void
.end method

.method private loadMask(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v2, p0, Lmiui/app/screenelement/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/app/screenelement/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 56
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 58
    const-string v2, "Mask"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 59
    .local v1, images:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 60
    iget-object v3, p0, Lmiui/app/screenelement/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    new-instance v4, Lmiui/app/screenelement/AnimatedElement;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    iget-object v5, p0, Lmiui/app/screenelement/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v4, v2, v5}, Lmiui/app/screenelement/AnimatedElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method private renderWithMask(Landroid/graphics/Canvas;Lmiui/app/screenelement/AnimatedElement;)V
    .locals 5
    .parameter "tmp"
    .parameter "mask"

    .prologue
    const/4 v4, 0x0

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 152
    invoke-virtual {p2}, Lmiui/app/screenelement/AnimatedElement;->getRotationAngle()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Lmiui/app/screenelement/AnimatedElement;->getCenterX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Lmiui/app/screenelement/AnimatedElement;->getCenterY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 153
    iget-object v1, p0, Lmiui/app/screenelement/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {p2}, Lmiui/app/screenelement/AnimatedElement;->getBmp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    .local v0, rawMask:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lmiui/app/screenelement/AnimatedElement;->getX()I

    move-result v1

    invoke-virtual {p2}, Lmiui/app/screenelement/AnimatedElement;->isAlignAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v2}, Lmiui/app/screenelement/AnimatedElement;->getX()I

    move-result v2

    :goto_0
    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p2}, Lmiui/app/screenelement/AnimatedElement;->getY()I

    move-result v2

    invoke-virtual {p2}, Lmiui/app/screenelement/AnimatedElement;->isAlignAbsolute()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v3}, Lmiui/app/screenelement/AnimatedElement;->getY()I

    move-result v3

    :goto_1
    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lmiui/app/screenelement/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 157
    return-void

    :cond_0
    move v2, v4

    .line 154
    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lmiui/app/screenelement/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    iget-object v1, p0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v1}, Lmiui/app/screenelement/AnimatedElement;->getBmp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lmiui/app/screenelement/AnimatedScreenElement;->init()V

    .line 67
    iget-object v2, p0, Lmiui/app/screenelement/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lmiui/app/screenelement/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/AnimatedElement;

    .line 69
    .local v1, mask:Lmiui/app/screenelement/AnimatedElement;
    invoke-virtual {v1}, Lmiui/app/screenelement/AnimatedElement;->init()V

    goto :goto_0

    .line 72
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mask:Lmiui/app/screenelement/AnimatedElement;
    :cond_0
    return-void
.end method

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

    .line 44
    if-nez p1, :cond_0

    .line 45
    const-string v0, "ImageScreenElement"

    const-string v1, "node is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v2}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ImageScreenElement;->loadMask(Lorg/w3c/dom/Element;)V

    .line 50
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "c"

    .prologue
    .line 76
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/ImageScreenElement;->isVisible()Z

    move-result v18

    if-nez v18, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getAlpha()I

    move-result v5

    .line 80
    .local v5, alpha:I
    if-lez v5, :cond_0

    .line 83
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/ImageScreenElement;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 84
    .local v6, bmp:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getWidth()I

    move-result v18

    if-ltz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getWidth()I

    move-result v18

    move/from16 v15, v18

    .line 89
    .local v15, width:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getHeight()I

    move-result v18

    if-ltz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getHeight()I

    move-result v18

    move/from16 v7, v18

    .line 90
    .local v7, height:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_8

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getRotationAngle()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lmiui/app/screenelement/AnimatedElement;->getX()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lmiui/app/screenelement/AnimatedElement;->getCenterX()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lmiui/app/screenelement/AnimatedElement;->getY()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lmiui/app/screenelement/AnimatedElement;->getCenterY()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getX()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/ImageScreenElement;->getLeft(II)I

    move-result v16

    .line 95
    .local v16, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getY()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/ImageScreenElement;->getTop(II)I

    move-result v17

    .line 96
    .local v17, y:I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v18

    if-eqz v18, :cond_5

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lmiui/app/screenelement/AnimatedElement;->getBmp()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lmiui/app/screenelement/ResourceManager;->getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;

    move-result-object v13

    .line 98
    .local v13, np:Landroid/graphics/NinePatch;
    if-eqz v13, :cond_4

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    add-int v19, v16, v15

    add-int v20, v17, v7

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 113
    .end local v13           #np:Landroid/graphics/NinePatch;
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 88
    .end local v7           #height:I
    .end local v15           #width:I
    .end local v16           #x:I
    .end local v17           #y:I
    :cond_2
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v15, v18

    goto/16 :goto_1

    .line 89
    .restart local v15       #width:I
    :cond_3
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v7, v18

    goto/16 :goto_2

    .line 102
    .restart local v7       #height:I
    .restart local v13       #np:Landroid/graphics/NinePatch;
    .restart local v16       #x:I
    .restart local v17       #y:I
    :cond_4
    const-string v18, "ImageScreenElement"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "the image contains ninepatch chunk but couldn\'t get NinePatch object: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lmiui/app/screenelement/AnimatedElement;->getBmp()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 106
    .end local v13           #np:Landroid/graphics/NinePatch;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getWidth()I

    move-result v18

    if-gtz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getHeight()I

    move-result v18

    if-lez v18, :cond_7

    .line 107
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    add-int v19, v16, v15

    add-int v20, v17, v7

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 108
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object v1, v6

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 110
    :cond_7
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object v1, v6

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 115
    .end local v16           #x:I
    .end local v17           #y:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getMaxWidth()I

    move-result v18

    if-ltz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getMaxWidth()I

    move-result v18

    move/from16 v12, v18

    .line 116
    .local v12, maxWidth:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getMaxHeight()I

    move-result v18

    if-ltz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getMaxHeight()I

    move-result v18

    move/from16 v11, v18

    .line 117
    .local v11, maxHeight:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v12

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/ResourceManager;->getMaskBufferBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 118
    .local v10, maskBuffer:Landroid/graphics/Bitmap;
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 119
    .local v14, tmp:Landroid/graphics/Canvas;
    const/16 v18, 0x0

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v14

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getWidth()I

    move-result v18

    if-gtz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getHeight()I

    move-result v18

    if-lez v18, :cond_c

    .line 122
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move v3, v15

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 123
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object v0, v14

    move-object v1, v6

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 128
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/app/screenelement/AnimatedElement;

    .line 129
    .local v9, mask:Lmiui/app/screenelement/AnimatedElement;
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/ImageScreenElement;->renderWithMask(Landroid/graphics/Canvas;Lmiui/app/screenelement/AnimatedElement;)V

    goto :goto_7

    .line 115
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #mask:Lmiui/app/screenelement/AnimatedElement;
    .end local v10           #maskBuffer:Landroid/graphics/Bitmap;
    .end local v11           #maxHeight:I
    .end local v12           #maxWidth:I
    .end local v14           #tmp:Landroid/graphics/Canvas;
    :cond_a
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v12, v18

    goto/16 :goto_4

    .line 116
    .restart local v12       #maxWidth:I
    :cond_b
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v11, v18

    goto/16 :goto_5

    .line 125
    .restart local v10       #maskBuffer:Landroid/graphics/Bitmap;
    .restart local v11       #maxHeight:I
    .restart local v14       #tmp:Landroid/graphics/Canvas;
    :cond_c
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v14

    move-object v1, v6

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 132
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getRotationAngle()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lmiui/app/screenelement/AnimatedElement;->getX()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lmiui/app/screenelement/AnimatedElement;->getCenterX()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lmiui/app/screenelement/AnimatedElement;->getY()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lmiui/app/screenelement/AnimatedElement;->getCenterY()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getX()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/ImageScreenElement;->getLeft(II)I

    move-result v16

    .line 136
    .restart local v16       #x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/app/screenelement/AnimatedElement;->getY()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/ImageScreenElement;->getTop(II)I

    move-result v17

    .line 137
    .restart local v17       #y:I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object v1, v10

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 143
    iput-object p1, p0, Lmiui/app/screenelement/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 144
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 161
    invoke-virtual {p0}, Lmiui/app/screenelement/ImageScreenElement;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    :cond_0
    return-void

    .line 163
    :cond_1
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/AnimatedScreenElement;->tick(J)V

    .line 165
    iget-object v2, p0, Lmiui/app/screenelement/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lmiui/app/screenelement/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/AnimatedElement;

    .line 167
    .local v1, mask:Lmiui/app/screenelement/AnimatedElement;
    invoke-virtual {v1, p1, p2}, Lmiui/app/screenelement/AnimatedElement;->tick(J)V

    goto :goto_0
.end method

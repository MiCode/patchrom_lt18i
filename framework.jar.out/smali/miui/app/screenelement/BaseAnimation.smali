.class public abstract Lmiui/app/screenelement/BaseAnimation;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/BaseAnimation$AnimationItem;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BaseAnimation"


# instance fields
.field protected mContext:Lmiui/app/screenelement/ScreenContext;

.field protected mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/BaseAnimation$AnimationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J

.field private mTimeRange:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/app/screenelement/ScreenContext;)V
    .locals 1
    .parameter "node"
    .parameter "tag"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 60
    iput-object p3, p0, Lmiui/app/screenelement/BaseAnimation;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 61
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/BaseAnimation;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 6
    .parameter "node"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 65
    iget-object v3, p0, Lmiui/app/screenelement/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 67
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 68
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 69
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 70
    .local v0, ele:Lorg/w3c/dom/Element;
    iget-object v3, p0, Lmiui/app/screenelement/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmiui/app/screenelement/BaseAnimation;->onCreateItem()Lmiui/app/screenelement/BaseAnimation$AnimationItem;

    move-result-object v4

    invoke-virtual {v4, v0}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->load(Lorg/w3c/dom/Element;)Lmiui/app/screenelement/BaseAnimation$AnimationItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v0           #ele:Lorg/w3c/dom/Element;
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v5

    :goto_1
    const-string v4, "BaseAnimation: empty items"

    invoke-static {v3, v4}, Lmiui/app/screenelement/Utils;->asserts(ZLjava/lang/String;)V

    .line 73
    iget-object v3, p0, Lmiui/app/screenelement/BaseAnimation;->mItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lmiui/app/screenelement/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/screenelement/BaseAnimation$AnimationItem;

    iget-wide v3, v3, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v3, p0, Lmiui/app/screenelement/BaseAnimation;->mTimeRange:J

    .line 74
    return-void

    .line 72
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/app/screenelement/BaseAnimation;->mStartTime:J

    .line 80
    return-void
.end method

.method protected abstract onCreateItem()Lmiui/app/screenelement/BaseAnimation$AnimationItem;
.end method

.method protected abstract onTick(Lmiui/app/screenelement/BaseAnimation$AnimationItem;Lmiui/app/screenelement/BaseAnimation$AnimationItem;F)V
.end method

.method public final tick(J)V
    .locals 19
    .parameter "currentTime"

    .prologue
    .line 83
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/app/screenelement/BaseAnimation;->mStartTime:J

    move-wide v15, v0

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_0

    .line 84
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/app/screenelement/BaseAnimation;->mStartTime:J

    .line 86
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/app/screenelement/BaseAnimation;->mStartTime:J

    move-wide v15, v0

    sub-long v15, p1, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/app/screenelement/BaseAnimation;->mTimeRange:J

    move-wide/from16 v17, v0

    rem-long v13, v15, v17

    .line 87
    .local v13, time:J
    const/4 v7, 0x0

    .local v7, item1:Lmiui/app/screenelement/BaseAnimation$AnimationItem;
    const/4 v8, 0x0

    .line 88
    .local v8, item2:Lmiui/app/screenelement/BaseAnimation$AnimationItem;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/BaseAnimation;->mItems:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_1

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/BaseAnimation;->mItems:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/app/screenelement/BaseAnimation$AnimationItem;

    .line 90
    .local v9, pos:Lmiui/app/screenelement/BaseAnimation$AnimationItem;
    iget-wide v15, v9, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mTime:J

    cmp-long v15, v13, v15

    if-gtz v15, :cond_4

    .line 91
    move-object v8, v9

    .line 93
    const-wide/16 v4, 0x0

    .line 94
    .local v4, base:J
    if-nez v6, :cond_2

    .line 95
    iget-wide v11, v9, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mTime:J

    .line 102
    .local v11, range:J
    :goto_1
    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-nez v15, :cond_3

    const/high16 v15, 0x3f80

    :goto_2
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lmiui/app/screenelement/BaseAnimation;->onTick(Lmiui/app/screenelement/BaseAnimation$AnimationItem;Lmiui/app/screenelement/BaseAnimation$AnimationItem;F)V

    .line 106
    .end local v4           #base:J
    .end local v9           #pos:Lmiui/app/screenelement/BaseAnimation$AnimationItem;
    .end local v11           #range:J
    :cond_1
    return-void

    .line 97
    .restart local v4       #base:J
    .restart local v9       #pos:Lmiui/app/screenelement/BaseAnimation$AnimationItem;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/BaseAnimation;->mItems:Ljava/util/ArrayList;

    move-object v15, v0

    const/16 v16, 0x1

    sub-int v16, v6, v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/app/screenelement/BaseAnimation$AnimationItem;

    .line 98
    .local v10, pos1:Lmiui/app/screenelement/BaseAnimation$AnimationItem;
    move-object v7, v10

    .line 99
    iget-wide v15, v9, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mTime:J

    move-object v0, v10

    iget-wide v0, v0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mTime:J

    move-wide/from16 v17, v0

    sub-long v11, v15, v17

    .line 100
    .restart local v11       #range:J
    iget-wide v4, v10, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mTime:J

    goto :goto_1

    .line 102
    .end local v10           #pos1:Lmiui/app/screenelement/BaseAnimation$AnimationItem;
    :cond_3
    sub-long v15, v13, v4

    long-to-float v15, v15

    move-wide v0, v11

    long-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    goto :goto_2

    .line 88
    .end local v4           #base:J
    .end local v11           #range:J
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

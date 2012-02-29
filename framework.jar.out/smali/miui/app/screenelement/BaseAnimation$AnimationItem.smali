.class public Lmiui/app/screenelement/BaseAnimation$AnimationItem;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/BaseAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationItem"
.end annotation


# instance fields
.field private mAttrs:[Ljava/lang/String;

.field private mContext:Lmiui/app/screenelement/ScreenContext;

.field public mExps:[Lmiui/app/screenelement/Expression;

.field public mTime:J


# direct methods
.method public constructor <init>([Ljava/lang/String;Lmiui/app/screenelement/ScreenContext;)V
    .locals 0
    .parameter "attrs"
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 22
    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 4
    .parameter "i"

    .prologue
    const/4 v3, 0x0

    .line 25
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mExps:[Lmiui/app/screenelement/Expression;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mExps:[Lmiui/app/screenelement/Expression;

    if-nez v0, :cond_1

    .line 26
    :cond_0
    const-string v0, "BaseAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get number in AnimationItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 29
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mExps:[Lmiui/app/screenelement/Expression;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mExps:[Lmiui/app/screenelement/Expression;

    aget-object v0, v0, p1

    iget-object v1, p0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public load(Lorg/w3c/dom/Element;)Lmiui/app/screenelement/BaseAnimation$AnimationItem;
    .locals 10
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v9, "fail to get time attribute"

    .line 34
    :try_start_0
    const-string/jumbo v7, "time"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    iget-object v7, p0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 41
    iget-object v7, p0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    array-length v7, v7

    new-array v7, v7, [Lmiui/app/screenelement/Expression;

    iput-object v7, p0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mExps:[Lmiui/app/screenelement/Expression;

    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, i:I
    iget-object v0, p0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 44
    .local v6, s:Ljava/lang/String;
    iget-object v7, p0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->mExps:[Lmiui/app/screenelement/Expression;

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v8

    aput-object v8, v7, v3

    .line 43
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 35
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 36
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v7, "BaseAnimation"

    const-string v8, "fail to get time attribute"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v7, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v8, "fail to get time attribute"

    invoke-direct {v7, v9}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 47
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_0
    return-object p0
.end method

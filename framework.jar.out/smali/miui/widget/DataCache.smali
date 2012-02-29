.class public Lmiui/widget/DataCache;
.super Ljava/util/LinkedHashMap;
.source "DataCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mMaximumCapacity:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    .local p0, this:Lmiui/widget/DataCache;,"Lmiui/widget/DataCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "initialCapacity"

    .prologue
    .line 28
    .local p0, this:Lmiui/widget/DataCache;,"Lmiui/widget/DataCache<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 29
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    .line 24
    .local p0, this:Lmiui/widget/DataCache;,"Lmiui/widget/DataCache<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 25
    return-void
.end method

.method public constructor <init>(IFZ)V
    .locals 0
    .parameter "initialCapacity"
    .parameter "loadFactor"
    .parameter "accessOrder"

    .prologue
    .line 20
    .local p0, this:Lmiui/widget/DataCache;,"Lmiui/widget/DataCache<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lmiui/widget/DataCache;,"Lmiui/widget/DataCache<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getMaximumCapacity()I
    .locals 1

    .prologue
    .line 40
    .local p0, this:Lmiui/widget/DataCache;,"Lmiui/widget/DataCache<TK;TV;>;"
    iget v0, p0, Lmiui/widget/DataCache;->mMaximumCapacity:I

    return v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lmiui/widget/DataCache;,"Lmiui/widget/DataCache<TK;TV;>;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lmiui/widget/DataCache;->size()I

    move-result v0

    iget v1, p0, Lmiui/widget/DataCache;->mMaximumCapacity:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaximumCapacity(I)V
    .locals 0
    .parameter "maximumCapacity"

    .prologue
    .line 36
    .local p0, this:Lmiui/widget/DataCache;,"Lmiui/widget/DataCache<TK;TV;>;"
    iput p1, p0, Lmiui/widget/DataCache;->mMaximumCapacity:I

    .line 37
    return-void
.end method

.class public Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;
.super Ljava/lang/Object;
.source "ThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;,
        Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;,
        Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Bounds;,
        Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;,
        Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;,
        Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailCache"


# instance fields
.field public final LISTINDEXBOUNDS_EMPTY:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;

.field public final THUMBNAILINDEXBOUNDS_EMPTY:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

.field private final mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

.field private final mLabel:Ljava/lang/String;

.field private final mReqIdGenerator:Lcom/sonyericsson/android/camera3d/util/IncrementalId;

.field private final mThumbnails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sonyericsson/android/camera3d/util/IncrementalId;)V
    .locals 2
    .parameter "label"
    .parameter "idGenerator"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    invoke-direct {v0, v1, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->THUMBNAILINDEXBOUNDS_EMPTY:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;

    invoke-direct {v0, p0, v1, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;-><init>(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->LISTINDEXBOUNDS_EMPTY:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;

    .line 54
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mLabel:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    invoke-direct {v0, v1, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    .line 57
    iput-object p2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mReqIdGenerator:Lcom/sonyericsson/android/camera3d/util/IncrementalId;

    .line 58
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    return-object v0
.end method

.method private concatListLeft(I)V
    .locals 5
    .parameter "size"

    .prologue
    .line 257
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 259
    .local v0, delete:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    .line 260
    .local v2, item:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->cancelLoading()V

    .line 261
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->destroy()V

    goto :goto_0

    .line 263
    .end local v2           #item:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 264
    return-void
.end method

.method private concatListRight(I)V
    .locals 6
    .parameter "size"

    .prologue
    .line 238
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, p1

    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 242
    .local v0, delete:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    .line 243
    .local v2, item:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->cancelLoading()V

    .line 244
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->destroy()V

    goto :goto_0

    .line 246
    .end local v2           #item:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    return-void
.end method

.method private createThumbnails(I)Ljava/util/List;
    .locals 5
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 376
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 377
    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mReqIdGenerator:Lcom/sonyericsson/android/camera3d/util/IncrementalId;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/util/IncrementalId;->getNext()I

    move-result v3

    .line 378
    .local v3, reqid:I
    new-instance v2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;-><init>(I)V

    .line 379
    .local v2, newThumb:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    .end local v2           #newThumb:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    .end local v3           #reqid:I
    :cond_0
    return-object v1
.end method

.method private expandListLeft(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;
    .locals 3
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->createThumbnails(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 227
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;

    invoke-direct {v0, p0, v2, p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;-><init>(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;II)V

    return-object v0
.end method

.method private expandListRight(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;
    .locals 3
    .parameter "size"

    .prologue
    .line 213
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 214
    .local v0, cachedCount:I
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->createThumbnails(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 215
    new-instance v1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;

    invoke-direct {v1, p0, v0, p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;-><init>(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;II)V

    return-object v1
.end method

.method private insertCache(II)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;
    .locals 5
    .parameter "head"
    .parameter "count"

    .prologue
    .line 325
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->createThumbnails(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 327
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v1, v2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    .line 329
    .local v0, deleated:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->cancelLoading()V

    .line 330
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->destroy()V

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    .end local v0           #deleated:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v3, v3, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 334
    new-instance v2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;

    invoke-direct {v2, p0, p1, p2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;-><init>(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;II)V

    return-object v2
.end method

.method private removeCache(II)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;
    .locals 7
    .parameter "head"
    .parameter "count"

    .prologue
    .line 298
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v6, p1, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 299
    .local v4, tail:I
    move v2, p1

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 300
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    .line 301
    .local v1, deleated:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->cancelLoading()V

    .line 302
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->destroy()V

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    .end local v1           #deleated:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 306
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 307
    .local v0, cashedCount:I
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v5, v5, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    sub-int v3, v5, v0

    .line 309
    .local v3, shortageCount:I
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->createThumbnails(I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 310
    new-instance v5, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;

    invoke-direct {v5, p0, v0, v3}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;-><init>(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;II)V

    return-object v5
.end method

.method private resetCache(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;
    .locals 4
    .parameter "size"

    .prologue
    .line 276
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    .line 277
    .local v1, item:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->cancelLoading()V

    .line 278
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->destroy()V

    goto :goto_0

    .line 280
    .end local v1           #item:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 281
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->createThumbnails(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 283
    new-instance v2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;-><init>(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;II)V

    return-object v2
.end method


# virtual methods
.method public deleteAt(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;
    .locals 4
    .parameter "index"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->THUMBNAILINDEXBOUNDS_EMPTY:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    .line 166
    .local v1, updateBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->lower(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v3, v3, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    .line 188
    :cond_0
    :goto_0
    return-object v1

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->inner(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v2, v2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    sub-int v2, p1, v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->removeCache(II)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;

    move-result-object v0

    .line 180
    .local v0, bounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;->toThumbnailIndexBounds()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    move-result-object v1

    goto :goto_0
.end method

.method public getAt(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    .locals 2
    .parameter "index"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->inner(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v1, v1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    .line 202
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReservedCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v0, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    return v0
.end method

.method public getReservedIndex()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v0, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    return v0
.end method

.method public indexOfByRequestId(I)I
    .locals 5
    .parameter "requestId"

    .prologue
    const/4 v3, -0x1

    .line 354
    const/4 v1, 0x0

    .line 355
    .local v1, index:I
    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    .line 356
    .local v2, item:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    #getter for: Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mRequestId:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->access$000(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 357
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v3, v3, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    add-int/2addr v3, v1

    .line 365
    .end local v2           #item:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    :cond_1
    :goto_0
    return v3

    .line 360
    .restart local v2       #item:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 361
    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v4, v4, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    if-lt v1, v4, :cond_0

    goto :goto_0
.end method

.method public indexOfByThumbId(I)I
    .locals 6
    .parameter "thumbId"

    .prologue
    const/4 v4, -0x1

    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, index:I
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    .line 340
    .local v3, item:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getMediaInfo()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    move-result-object v2

    .line 341
    .local v2, info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    iget v5, v2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mId:I

    if-ne v5, p1, :cond_2

    .line 342
    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v4, v4, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    add-int/2addr v4, v1

    .line 350
    .end local v2           #info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    .end local v3           #item:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    :cond_1
    :goto_0
    return v4

    .line 345
    .restart local v2       #info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    .restart local v3       #item:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 346
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v5, v5, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    if-lt v1, v5, :cond_0

    goto :goto_0
.end method

.method public reserve(II)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;
    .locals 12
    .parameter "headIndex"
    .parameter "count"

    .prologue
    const/4 v11, 0x0

    .line 85
    iget-object v9, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v9, v9, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    if-ne v9, p1, :cond_1

    iget-object v9, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v9, v9, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    if-ne v9, p2, :cond_1

    .line 86
    iget-object v8, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->THUMBNAILINDEXBOUNDS_EMPTY:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    .line 136
    :cond_0
    :goto_0
    return-object v8

    .line 89
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;-><init>(II)V

    .line 99
    .local v0, newBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;
    iget v2, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    .line 100
    .local v2, nextHead:I
    iget v9, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    add-int v3, v2, v9

    .line 101
    .local v3, nextTail:I
    iget v1, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    .line 102
    .local v1, nextCount:I
    iget-object v9, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v5, v9, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    .line 103
    .local v5, prevHead:I
    iget-object v9, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v9, v9, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    add-int v6, v5, v9

    .line 104
    .local v6, prevTail:I
    iget-object v9, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v4, v9, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    .line 105
    .local v4, prevCount:I
    iget-object v7, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->LISTINDEXBOUNDS_EMPTY:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;

    .line 107
    .local v7, updateListBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;
    if-le v1, v4, :cond_5

    .line 108
    if-ne v2, v5, :cond_3

    .line 109
    sub-int v9, v1, v4

    invoke-direct {p0, v9}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->expandListRight(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;

    move-result-object v7

    .line 129
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v10, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    iput v10, v9, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    .line 130
    iget-object v9, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v10, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    iput v10, v9, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    .line 132
    iget-object v8, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->THUMBNAILINDEXBOUNDS_EMPTY:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    .line 133
    .local v8, updateThumbnailBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;
    iget-object v9, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->LISTINDEXBOUNDS_EMPTY:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;

    if-eq v7, v9, :cond_0

    .line 134
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;->toThumbnailIndexBounds()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    move-result-object v8

    goto :goto_0

    .line 110
    .end local v8           #updateThumbnailBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;
    :cond_3
    if-ne v3, v6, :cond_4

    .line 111
    sub-int v9, v1, v4

    invoke-direct {p0, v9}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->expandListLeft(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;

    move-result-object v7

    goto :goto_1

    .line 113
    :cond_4
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->resetCache(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;

    move-result-object v7

    goto :goto_1

    .line 115
    :cond_5
    if-ge v1, v4, :cond_8

    .line 116
    if-ne v2, v5, :cond_6

    .line 117
    sub-int v9, v4, v1

    invoke-direct {p0, v9}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->concatListRight(I)V

    goto :goto_1

    .line 118
    :cond_6
    if-ne v3, v6, :cond_7

    .line 119
    sub-int v9, v4, v1

    invoke-direct {p0, v9}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->concatListLeft(I)V

    goto :goto_1

    .line 121
    :cond_7
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->resetCache(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;

    move-result-object v7

    goto :goto_1

    .line 123
    :cond_8
    iget v9, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    iget-object v10, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v10, v10, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    if-le v9, v10, :cond_9

    .line 124
    iget v9, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    iget-object v10, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v10, v10, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v11, v9}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->removeCache(II)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;

    move-result-object v7

    goto :goto_1

    .line 125
    :cond_9
    iget v9, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    iget-object v10, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v10, v10, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    if-ge v9, v10, :cond_2

    .line 126
    iget-object v9, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v9, v9, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    iget v10, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v11, v9}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->insertCache(II)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ListIndexBounds;

    move-result-object v7

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0, v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->reserve(II)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    .line 73
    return-void
.end method

.method public shift()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    iget v1, v1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->mLabel:Ljava/lang/String;

    return-object v0
.end method

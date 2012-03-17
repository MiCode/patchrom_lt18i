.class public Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;
.super Ljava/lang/Object;
.source "ThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;,
        Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;,
        Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$Bounds;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailCache"


# instance fields
.field public final LISTINDEXBOUNDS_EMPTY:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;

.field public final THUMBNAILINDEXBOUNDS_EMPTY:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

.field private final mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

.field private final mLabel:Ljava/lang/String;

.field private final mReqIdGenerator:Lcom/sonyericsson/android/camera3d/util/IncrementalId;

.field private final mThumbnails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;",
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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    invoke-direct {v0, v1, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->THUMBNAILINDEXBOUNDS_EMPTY:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;

    invoke-direct {v0, p0, v1, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->LISTINDEXBOUNDS_EMPTY:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mLabel:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    invoke-direct {v0, v1, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    .line 47
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mReqIdGenerator:Lcom/sonyericsson/android/camera3d/util/IncrementalId;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    return-object v0
.end method

.method private concatListLeft(I)V
    .locals 5
    .parameter "size"

    .prologue
    .line 247
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 249
    .local v0, delete:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    .line 250
    .local v2, item:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->cancelLoading()V

    .line 251
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->destroy()V

    goto :goto_0

    .line 253
    .end local v2           #item:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 254
    return-void
.end method

.method private concatListRight(I)V
    .locals 6
    .parameter "size"

    .prologue
    .line 228
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, p1

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 232
    .local v0, delete:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    .line 233
    .local v2, item:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->cancelLoading()V

    .line 234
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->destroy()V

    goto :goto_0

    .line 236
    .end local v2           #item:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 237
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
            "Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 366
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 367
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mReqIdGenerator:Lcom/sonyericsson/android/camera3d/util/IncrementalId;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/util/IncrementalId;->getNext()I

    move-result v3

    .line 368
    .local v3, reqid:I
    new-instance v2, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;-><init>(I)V

    .line 369
    .local v2, newThumb:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    .end local v2           #newThumb:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    .end local v3           #reqid:I
    :cond_0
    return-object v1
.end method

.method private expandListLeft(I)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;
    .locals 3
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->createThumbnails(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 217
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;

    invoke-direct {v0, p0, v2, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;II)V

    return-object v0
.end method

.method private expandListRight(I)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;
    .locals 3
    .parameter "size"

    .prologue
    .line 203
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 204
    .local v0, cachedCount:I
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->createThumbnails(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 205
    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;

    invoke-direct {v1, p0, v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;II)V

    return-object v1
.end method

.method private insertCache(II)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;
    .locals 5
    .parameter "head"
    .parameter "count"

    .prologue
    .line 315
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->createThumbnails(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 317
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v1, v2, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    .line 319
    .local v0, deleated:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->cancelLoading()V

    .line 320
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->destroy()V

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v0           #deleated:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 324
    new-instance v2, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;

    invoke-direct {v2, p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;II)V

    return-object v2
.end method

.method private removeCache(II)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;
    .locals 7
    .parameter "head"
    .parameter "count"

    .prologue
    .line 288
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v6, p1, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 289
    .local v4, tail:I
    move v2, p1

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 290
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    .line 291
    .local v1, deleated:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->cancelLoading()V

    .line 292
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->destroy()V

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    .end local v1           #deleated:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 296
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 297
    .local v0, cashedCount:I
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v5, v5, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    sub-int v3, v5, v0

    .line 299
    .local v3, shortageCount:I
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->createThumbnails(I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 300
    new-instance v5, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;

    invoke-direct {v5, p0, v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;II)V

    return-object v5
.end method

.method private resetCache(I)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;
    .locals 4
    .parameter "size"

    .prologue
    .line 266
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    .line 267
    .local v1, item:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->cancelLoading()V

    .line 268
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->destroy()V

    goto :goto_0

    .line 270
    .end local v1           #item:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 271
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->createThumbnails(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 273
    new-instance v2, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;II)V

    return-object v2
.end method


# virtual methods
.method public deleteAt(I)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;
    .locals 4
    .parameter "index"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->THUMBNAILINDEXBOUNDS_EMPTY:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    .line 156
    .local v1, updateBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->lower(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    .line 178
    :cond_0
    :goto_0
    return-object v1

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->inner(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    sub-int v2, p1, v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->removeCache(II)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;

    move-result-object v0

    .line 170
    .local v0, bounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;->toThumbnailIndexBounds()Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    move-result-object v1

    goto :goto_0
.end method

.method public getAt(I)Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    .locals 2
    .parameter "index"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->inner(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v1, v1, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    .line 192
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReservedCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    return v0
.end method

.method public getReservedIndex()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    return v0
.end method

.method public indexOfByRequestId(I)I
    .locals 5
    .parameter "requestId"

    .prologue
    const/4 v3, -0x1

    .line 344
    const/4 v1, 0x0

    .line 345
    .local v1, index:I
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    .line 346
    .local v2, item:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    iget v4, v2, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mRequestID:I

    if-ne v4, p1, :cond_2

    .line 347
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    add-int/2addr v3, v1

    .line 355
    .end local v2           #item:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    :cond_1
    :goto_0
    return v3

    .line 350
    .restart local v2       #item:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 351
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    if-lt v1, v4, :cond_0

    goto :goto_0
.end method

.method public indexOfByThumbId(I)I
    .locals 6
    .parameter "thumbId"

    .prologue
    const/4 v4, -0x1

    .line 328
    const/4 v1, 0x0

    .line 329
    .local v1, index:I
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    .line 330
    .local v3, item:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->getInfo()Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v2

    .line 331
    .local v2, info:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    iget v5, v2, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mId:I

    if-ne v5, p1, :cond_2

    .line 332
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    add-int/2addr v4, v1

    .line 340
    .end local v2           #info:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    .end local v3           #item:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    :cond_1
    :goto_0
    return v4

    .line 335
    .restart local v2       #info:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    .restart local v3       #item:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 336
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v5, v5, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    if-lt v1, v5, :cond_0

    goto :goto_0
.end method

.method public reserve(II)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;
    .locals 12
    .parameter "headIndex"
    .parameter "count"

    .prologue
    const/4 v11, 0x0

    .line 75
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v9, v9, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    if-ne v9, p1, :cond_1

    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v9, v9, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    if-ne v9, p2, :cond_1

    .line 76
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->THUMBNAILINDEXBOUNDS_EMPTY:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    .line 126
    :cond_0
    :goto_0
    return-object v8

    .line 79
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;-><init>(II)V

    .line 89
    .local v0, newBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;
    iget v2, v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    .line 90
    .local v2, nextHead:I
    iget v9, v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    add-int v3, v2, v9

    .line 91
    .local v3, nextTail:I
    iget v1, v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    .line 92
    .local v1, nextCount:I
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v5, v9, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    .line 93
    .local v5, prevHead:I
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v9, v9, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    add-int v6, v5, v9

    .line 94
    .local v6, prevTail:I
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v4, v9, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    .line 95
    .local v4, prevCount:I
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->LISTINDEXBOUNDS_EMPTY:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;

    .line 97
    .local v7, updateListBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;
    if-le v1, v4, :cond_5

    .line 98
    if-ne v2, v5, :cond_3

    .line 99
    sub-int v9, v1, v4

    invoke-direct {p0, v9}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->expandListRight(I)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;

    move-result-object v7

    .line 119
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v10, v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    iput v10, v9, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    .line 120
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v10, v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    iput v10, v9, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    .line 122
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->THUMBNAILINDEXBOUNDS_EMPTY:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    .line 123
    .local v8, updateThumbnailBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->LISTINDEXBOUNDS_EMPTY:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;

    if-eq v7, v9, :cond_0

    .line 124
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;->toThumbnailIndexBounds()Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    move-result-object v8

    goto :goto_0

    .line 100
    .end local v8           #updateThumbnailBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;
    :cond_3
    if-ne v3, v6, :cond_4

    .line 101
    sub-int v9, v1, v4

    invoke-direct {p0, v9}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->expandListLeft(I)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;

    move-result-object v7

    goto :goto_1

    .line 103
    :cond_4
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->resetCache(I)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;

    move-result-object v7

    goto :goto_1

    .line 105
    :cond_5
    if-ge v1, v4, :cond_8

    .line 106
    if-ne v2, v5, :cond_6

    .line 107
    sub-int v9, v4, v1

    invoke-direct {p0, v9}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->concatListRight(I)V

    goto :goto_1

    .line 108
    :cond_6
    if-ne v3, v6, :cond_7

    .line 109
    sub-int v9, v4, v1

    invoke-direct {p0, v9}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->concatListLeft(I)V

    goto :goto_1

    .line 111
    :cond_7
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->resetCache(I)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;

    move-result-object v7

    goto :goto_1

    .line 113
    :cond_8
    iget v9, v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    iget-object v10, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v10, v10, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    if-le v9, v10, :cond_9

    .line 114
    iget v9, v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    iget-object v10, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v10, v10, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v11, v9}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->removeCache(II)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;

    move-result-object v7

    goto :goto_1

    .line 115
    :cond_9
    iget v9, v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    iget-object v10, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v10, v10, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    if-ge v9, v10, :cond_2

    .line 116
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v9, v9, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    iget v10, v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v11, v9}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->insertCache(II)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;

    move-result-object v7

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->reserve(II)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    .line 63
    return-void
.end method

.method public shift()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget v1, v1, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThumbnailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;,
        Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;,
        Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;,
        Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;,
        Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailAdapter"


# instance fields
.field private final mIdGenerator:Lcom/sonyericsson/android/camera3d/util/IncrementalId;

.field private mListener:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;

.field private final mPreloadCount:I

.field private final mReserveCount:I

.field private final mThumbnailCache:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;

.field private mThumbnailCount:I

.field private mThumbnailLoader:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;

.field private mThumbnailViewFactory:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;

.field private final mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .parameter "reserveCount"
    .parameter "preloadCount"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 151
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 152
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailLoader:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;

    .line 153
    iput v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailCount:I

    .line 154
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    .line 155
    new-instance v0, Lcom/sonyericsson/android/camera3d/util/IncrementalId;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/util/IncrementalId;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mIdGenerator:Lcom/sonyericsson/android/camera3d/util/IncrementalId;

    .line 156
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;

    const-string v1, "PAST_THUMBNAILS"

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mIdGenerator:Lcom/sonyericsson/android/camera3d/util/IncrementalId;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;-><init>(Ljava/lang/String;Lcom/sonyericsson/android/camera3d/util/IncrementalId;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailCache:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;

    .line 157
    iput p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mReserveCount:I

    .line 158
    iput p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mPreloadCount:I

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailCache:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;

    invoke-virtual {v0, v3, v3}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->reserve(II)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    .line 160
    invoke-virtual {p0, v3, v3}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->updateVisibleBounds(II)Z

    .line 161
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mListener:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;

    return-object v0
.end method

.method private requestLoading(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;)V
    .locals 7
    .parameter "bounds"

    .prologue
    .line 349
    iget v0, p1, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    .line 350
    .local v0, head:I
    iget v5, p1, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    iget v6, p1, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->getCount()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 351
    .local v3, tail:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v2, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;>;"
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->nowMovingLeft()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 354
    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_3

    .line 355
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailCache:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->getAt(I)Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    move-result-object v4

    .line 356
    .local v4, thumb:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    if-eqz v4, :cond_0

    .line 357
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->startLoading()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 358
    new-instance v5, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;

    invoke-direct {v5, v1, v4}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;-><init>(ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 363
    .end local v1           #i:I
    .end local v4           #thumb:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    :cond_1
    move v1, v0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 364
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailCache:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->getAt(I)Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    move-result-object v4

    .line 365
    .restart local v4       #thumb:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    if-eqz v4, :cond_2

    .line 366
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->startLoading()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 367
    new-instance v5, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;

    invoke-direct {v5, v1, v4}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;-><init>(ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 373
    .end local v4           #thumb:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 374
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailLoader:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;

    if-eqz v5, :cond_4

    .line 375
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailLoader:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;

    invoke-virtual {v5, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;->request(Ljava/util/List;)V

    .line 378
    :cond_4
    return-void
.end method

.method private updateReservedBounds()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, nextLeft:I
    const/4 v2, 0x0

    .line 295
    .local v2, nextRight:I
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->nowMovingLeft()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mHead:I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mPreloadCount:I

    sub-int v1, v3, v4

    .line 298
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    iget v2, v3, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mTail:I

    .line 309
    :goto_0
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 310
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 311
    sub-int v0, v2, v1

    .line 312
    .local v0, nextCount:I
    iget v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mReserveCount:I

    if-ge v0, v3, :cond_0

    .line 313
    add-int v3, v1, v2

    iget v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mReserveCount:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 314
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mReserveCount:I

    .line 317
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailCache:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;

    invoke-virtual {v3, v1, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->reserve(II)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->requestLoading(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;)V

    .line 318
    return-void

    .line 299
    .end local v0           #nextCount:I
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->nowMovingRight()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 301
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    iget v1, v3, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mHead:I

    .line 302
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mTail:I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mPreloadCount:I

    add-int v2, v3, v4

    goto :goto_0

    .line 304
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mHead:I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mPreloadCount:I

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 305
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mTail:I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mPreloadCount:I

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mListener:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;

    .line 165
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 186
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailCache:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->getAt(I)Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    move-result-object v0

    .line 187
    .local v0, thumbnail:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    if-nez v0, :cond_0

    .line 188
    const-string v1, "ThumbnailAdapter"

    const-string v2, "thumbnail can not be found"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x0

    .line 191
    .end local v0           #thumbnail:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    :cond_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailCache:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->getAt(I)Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    move-result-object v0

    .line 196
    .local v0, thumbnail:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    if-nez v0, :cond_0

    .line 197
    const-string v1, "ThumbnailAdapter"

    const-string v2, "thumbnail can not be found"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-wide/16 v1, 0x0

    .line 200
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->getRequestID()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 206
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailViewFactory:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;

    if-nez v2, :cond_0

    move-object v1, p2

    .line 223
    .end local p2
    .local v1, view:Landroid/view/View;
    :goto_0
    return-object v1

    .line 210
    .end local v1           #view:Landroid/view/View;
    .restart local p2
    :cond_0
    if-nez p2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailViewFactory:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;->create()Landroid/view/View;

    move-result-object p2

    .line 214
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    .line 215
    .local v0, thumbnail:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    if-nez v0, :cond_2

    .line 217
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailViewFactory:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;

    invoke-interface {v2, p2}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;->destroy(Landroid/view/View;)V

    :goto_1
    move-object v1, p2

    .line 223
    .end local p2
    .restart local v1       #view:Landroid/view/View;
    goto :goto_0

    .line 220
    .end local v1           #view:Landroid/view/View;
    .restart local p2
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailViewFactory:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;

    invoke-interface {v2, p2, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;->update(Landroid/view/View;Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V

    goto :goto_1
.end method

.method public reload(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;)V
    .locals 3
    .parameter "loader"

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->reset()V

    .line 236
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailLoader:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailLoader:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;

    if-nez v0, :cond_0

    .line 238
    iput v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailCount:I

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailCache:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->reset()V

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailCache:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mReserveCount:I

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->reserve(II)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->requestLoading(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;)V

    .line 251
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailLoader:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$1;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;->setListener(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;)V

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailLoader:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;->getMediaCount()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailCount:I

    goto :goto_0
.end method

.method public removeListener(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mListener:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;

    if-ne v0, p1, :cond_0

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mListener:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;

    .line 171
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailCount:I

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->reset()V

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailCache:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->reset()V

    .line 231
    return-void
.end method

.method public resetViewFactory()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailViewFactory:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;

    .line 179
    return-void
.end method

.method public resetVisibleBounds()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    iget v1, v1, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mTail:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mHead:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->update(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    #setter for: Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mNowMovingLeft:Z
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->access$202(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;Z)Z

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    #setter for: Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mNowMovingRight:Z
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->access$302(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;Z)Z

    .line 284
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->updateReservedBounds()V

    .line 286
    :cond_0
    return-void
.end method

.method public resumeLoading()V
    .locals 7

    .prologue
    .line 322
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailCache:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->getReservedIndex()I

    move-result v0

    .line 323
    .local v0, head:I
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailCache:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->getReservedCount()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->getCount()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 324
    .local v3, tail:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v2, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;>;"
    move v1, v0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 327
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailCache:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->getAt(I)Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    move-result-object v4

    .line 328
    .local v4, thumb:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    if-eqz v4, :cond_0

    .line 329
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->isLoading()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 333
    new-instance v5, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;

    invoke-direct {v5, v1, v4}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;-><init>(ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    .end local v4           #thumb:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 339
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailLoader:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;

    if-eqz v5, :cond_2

    .line 340
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailLoader:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;

    invoke-virtual {v5, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;->request(Ljava/util/List;)V

    .line 343
    :cond_2
    return-void
.end method

.method public setViewFactory(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mThumbnailViewFactory:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;

    .line 175
    return-void
.end method

.method public updateVisibleBounds(II)Z
    .locals 1
    .parameter "headPosition"
    .parameter "tailPosition"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mVisibleBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->update(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->updateReservedBounds()V

    .line 267
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

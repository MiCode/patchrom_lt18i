.class public Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;
.super Ljava/lang/Object;
.source "MpoImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache$1;,
        Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache$MpoImageHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MpoImageCache"


# instance fields
.field private final mImageBank:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;

.field private final mImageHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoader:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mLoader:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;

    .line 52
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mImageBank:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mImageHolders:Ljava/util/List;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;)V
    .locals 4
    .parameter "loader"
    .parameter "imageBank"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mLoader:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;

    .line 42
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mImageBank:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mImageHolders:Ljava/util/List;

    .line 44
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mLoader:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->getImageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mImageHolders:Ljava/util/List;

    new-instance v2, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache$MpoImageHolder;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache$MpoImageHolder;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;)Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mImageBank:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;

    return-object v0
.end method


# virtual methods
.method public dump()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public get(I)Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    .locals 1
    .parameter "index"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mImageHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    .line 122
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mImageHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMpoType()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mLoader:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->getType()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->UNKNOWN:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    goto :goto_0
.end method

.method public getRepresentativeImage()Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mLoader:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->getRepresentativeIndex()I

    move-result v0

    .line 106
    .local v0, index:I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 107
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->get(I)Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    move-result-object v1

    .line 114
    .end local v0           #index:I
    :cond_0
    :goto_0
    return-object v1

    .line 108
    .restart local v0       #index:I
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 109
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->get(I)Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    move-result-object v1

    goto :goto_0
.end method

.method public getRepresentativeIndex()I
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mLoader:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->getRepresentativeIndex()I

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnable()Z
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mLoader:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mLoader:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->getType()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->UNKNOWN:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 135
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mImageHolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    .line 136
    .local v0, holder:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->release()V

    goto :goto_0

    .line 138
    .end local v0           #holder:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mImageHolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 139
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mLoader:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mLoader:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->release()V

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mImageBank:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;

    if-eqz v2, :cond_2

    .line 143
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mImageBank:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->dettach()V

    .line 145
    :cond_2
    return-void
.end method

.method public requestLoading(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mLoader:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mImageHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    invoke-virtual {v1, v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->startLoading(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;I)Z

    .line 131
    :cond_0
    return-void
.end method

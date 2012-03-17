.class public Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentMpoInfo;
.super Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
.source "MpoInfoRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithCurrentMpoInfo"
.end annotation


# instance fields
.field private mCurrentMpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

.field private mSelectedIndex:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;I)V
    .locals 3
    .parameter "cursor"
    .parameter "current"
    .parameter "photoStackNum"

    .prologue
    const/4 v2, -0x1

    .line 251
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;-><init>(Landroid/database/Cursor;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$1;)V

    .line 252
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentMpoInfo;->mCurrentMpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    .line 253
    iput v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentMpoInfo;->mSelectedIndex:I

    .line 255
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 256
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentMpoInfo;->initCurrentMpoInfoIndex(I)V

    .line 257
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentMpoInfo;->getSelectedIndex()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 261
    :cond_0
    return-void

    .line 255
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initCurrentMpoInfoIndex(I)V
    .locals 3
    .parameter "i"

    .prologue
    .line 264
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 265
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->get(I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v0

    .line 266
    .local v0, first:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    if-eqz v0, :cond_0

    .line 267
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentMpoInfo;->mCurrentMpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    iget v1, v1, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mId:I

    iget v2, v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mId:I

    if-ne v1, v2, :cond_0

    .line 268
    iput p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentMpoInfo;->mSelectedIndex:I

    .line 272
    .end local v0           #first:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    .locals 2
    .parameter "index"

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentMpoInfo;->getSelectedIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 277
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->get(I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    .line 279
    :cond_0
    if-nez p1, :cond_1

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentMpoInfo;->mCurrentMpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    goto :goto_0

    .line 282
    :cond_1
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->get(I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentMpoInfo;->getSelectedIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 290
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->getCount()I

    move-result v0

    .line 292
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentMpoInfo;->mSelectedIndex:I

    return v0
.end method

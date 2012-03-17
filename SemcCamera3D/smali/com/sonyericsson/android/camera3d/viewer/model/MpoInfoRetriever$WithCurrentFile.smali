.class Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentFile;
.super Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
.source "MpoInfoRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WithCurrentFile"
.end annotation


# instance fields
.field private final mCurrentFile:Ljava/io/File;

.field private mHasCurrentFile:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/io/File;)V
    .locals 1
    .parameter "cursor"
    .parameter "current"

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;-><init>(Landroid/database/Cursor;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$1;)V

    .line 202
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentFile;->mCurrentFile:Ljava/io/File;

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentFile;->mHasCurrentFile:Z

    .line 204
    return-void
.end method


# virtual methods
.method public get(I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    .locals 3
    .parameter "index"

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentFile;->mHasCurrentFile:Z

    if-eqz v0, :cond_1

    .line 209
    if-nez p1, :cond_0

    .line 210
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentFile;->mCurrentFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/mpo"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    return-object v0

    .line 212
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->get(I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_1
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->get(I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentFile;->mHasCurrentFile:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 225
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

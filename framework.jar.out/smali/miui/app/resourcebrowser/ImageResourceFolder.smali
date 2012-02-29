.class public Lmiui/app/resourcebrowser/ImageResourceFolder;
.super Lmiui/app/resourcebrowser/ResourceFolder;
.source "ImageResourceFolder.java"


# instance fields
.field private mEmptyTranslatePaper:Lmiui/app/resourcebrowser/Resource;

.field private mOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "metaData"
    .parameter "folderPath"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/resourcebrowser/ResourceFolder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 23
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/ImageResourceFolder;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 24
    iget-object v0, p0, Lmiui/app/resourcebrowser/ImageResourceFolder;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 25
    return-void
.end method

.method private getResource(Ljava/lang/String;)Lmiui/app/resourcebrowser/Resource;
    .locals 8
    .parameter "filePath"

    .prologue
    .line 28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, file:Ljava/io/File;
    new-instance v3, Lmiui/app/resourcebrowser/Resource;

    invoke-direct {v3}, Lmiui/app/resourcebrowser/Resource;-><init>()V

    .line 31
    .local v3, resource:Lmiui/app/resourcebrowser/Resource;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v1, information:Landroid/os/Bundle;
    const-string v4, "m_title"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v4, "filesize"

    iget-object v5, p0, Lmiui/app/resourcebrowser/ImageResourceFolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lmiui/app/resourcebrowser/ResourceHelper;->getFormattedSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v4, "m_lastupdate"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 36
    const-string v4, "local_path"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .local v2, previews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v4, "local_preview"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 41
    const-string v4, "local_thumbnail"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 43
    invoke-virtual {v3, v1}, Lmiui/app/resourcebrowser/Resource;->setInformation(Landroid/os/Bundle;)V

    .line 44
    return-object v3
.end method


# virtual methods
.method protected addItem(Ljava/lang/String;)V
    .locals 3
    .parameter "filePath"

    .prologue
    .line 63
    iget-object v0, p0, Lmiui/app/resourcebrowser/ImageResourceFolder;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 64
    iget-object v0, p0, Lmiui/app/resourcebrowser/ImageResourceFolder;->mFileFlags:Ljava/util/Map;

    iget-object v1, p0, Lmiui/app/resourcebrowser/ImageResourceFolder;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void

    .line 64
    :cond_0
    const-wide/16 v1, 0x1

    goto :goto_0
.end method

.method protected buildResource(Ljava/lang/String;)Lmiui/app/resourcebrowser/Resource;
    .locals 7
    .parameter "filePath"

    .prologue
    .line 69
    iget-object v3, p0, Lmiui/app/resourcebrowser/ImageResourceFolder;->mFileFlags:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 70
    const/4 v3, 0x0

    .line 80
    :goto_0
    return-object v3

    .line 73
    :cond_0
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceFolder;->buildResource(Ljava/lang/String;)Lmiui/app/resourcebrowser/Resource;

    move-result-object v2

    .line 74
    .local v2, resource:Lmiui/app/resourcebrowser/Resource;
    invoke-virtual {v2}, Lmiui/app/resourcebrowser/Resource;->getInformation()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, information:Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v1, previews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v3, "local_preview"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 78
    const-string v3, "local_thumbnail"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 79
    invoke-virtual {v2, v0}, Lmiui/app/resourcebrowser/Resource;->setInformation(Landroid/os/Bundle;)V

    move-object v3, v2

    .line 80
    goto :goto_0
.end method

.method public enableTransparentWallpaper(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    .line 48
    const-string v2, "%s%s.png"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmiui/app/resourcebrowser/ImageResourceFolder;->mFolderPath:Ljava/lang/String;

    invoke-static {v5}, Lmiui/app/resourcebrowser/ResourceHelper;->getFormattedDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lmiui/app/resourcebrowser/ImageResourceFolder;->mContext:Landroid/content/Context;

    const v6, 0x6090043

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, filePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    iget-object v2, p0, Lmiui/app/resourcebrowser/ImageResourceFolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x606

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lmiui/app/resourcebrowser/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 54
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 55
    invoke-direct {p0, v1}, Lmiui/app/resourcebrowser/ImageResourceFolder;->getResource(Ljava/lang/String;)Lmiui/app/resourcebrowser/Resource;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/resourcebrowser/ImageResourceFolder;->mEmptyTranslatePaper:Lmiui/app/resourcebrowser/Resource;

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/app/resourcebrowser/ImageResourceFolder;->mEmptyTranslatePaper:Lmiui/app/resourcebrowser/Resource;

    goto :goto_0
.end method

.method public loadData(Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/widget/AsyncAdapter",
            "<",
            "Lmiui/app/resourcebrowser/Resource;",
            ">.Async",
            "LoadDataTask;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, task:Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;,"Lmiui/widget/AsyncAdapter<Lmiui/app/resourcebrowser/Resource;>.AsyncLoadDataTask;"
    iget-object v0, p0, Lmiui/app/resourcebrowser/ImageResourceFolder;->mEmptyTranslatePaper:Lmiui/app/resourcebrowser/Resource;

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Lmiui/app/resourcebrowser/Resource;

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/app/resourcebrowser/ImageResourceFolder;->mEmptyTranslatePaper:Lmiui/app/resourcebrowser/Resource;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->onLoadData([Ljava/lang/Object;)V

    .line 88
    :cond_0
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceFolder;->loadData(Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;)V

    .line 89
    return-void
.end method

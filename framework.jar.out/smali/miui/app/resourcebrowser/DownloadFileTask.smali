.class public Lmiui/app/resourcebrowser/DownloadFileTask;
.super Landroid/os/AsyncTask;
.source "DownloadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;",
        "Ljava/util/List",
        "<",
        "Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final SUFFIX:Ljava/lang/String; = ".temp"


# instance fields
.field private mId:Ljava/lang/String;

.field private mTargetDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/resourcebrowser/DownloadFileTask;->mId:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private handleDownloadFile(Ljava/lang/String;)Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;
    .locals 7
    .parameter "url"

    .prologue
    .line 75
    new-instance v1, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;

    invoke-direct {v1}, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;-><init>()V

    .line 76
    .local v1, entry:Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;
    iget-object v5, p0, Lmiui/app/resourcebrowser/DownloadFileTask;->mTargetDirectory:Ljava/lang/String;

    invoke-static {v5, p1}, Lmiui/app/resourcebrowser/OnlineHelper;->getFilePathByURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, filePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, file:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".temp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v4, tempFile:Ljava/io/File;
    :try_start_0
    invoke-direct {p0, p1, v4}, Lmiui/app/resourcebrowser/DownloadFileTask;->writeToFile(Ljava/lang/String;Ljava/io/File;)V

    .line 81
    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 82
    invoke-virtual {v1, v3}, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;->setPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 84
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    .line 85
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private writeToFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 7
    .parameter "url"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 93
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 96
    :cond_0
    invoke-static {p1}, Lmiui/app/resourcebrowser/OnlineHelper;->getURLInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 97
    .local v2, is:Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v3, os:Ljava/io/OutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 100
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    if-ltz v1, :cond_1

    .line 101
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1ff

    invoke-static {v4, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 104
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/DownloadFileTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "urls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, entries:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 63
    aget-object v3, p1, v2

    .line 64
    .local v3, url:Ljava/lang/String;
    invoke-direct {p0, v3}, Lmiui/app/resourcebrowser/DownloadFileTask;->handleDownloadFile(Ljava/lang/String;)Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;

    move-result-object v1

    .line 65
    .local v1, entry:Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1, v2}, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;->setIndex(I)V

    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v4}, Lmiui/app/resourcebrowser/DownloadFileTask;->publishProgress([Ljava/lang/Object;)V

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v1           #entry:Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;
    .end local v3           #url:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public varargs doInForeground([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "urls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, entries:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 49
    aget-object v3, p1, v2

    .line 50
    .local v3, url:Ljava/lang/String;
    invoke-direct {p0, v3}, Lmiui/app/resourcebrowser/DownloadFileTask;->handleDownloadFile(Ljava/lang/String;)Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;

    move-result-object v1

    .line 51
    .local v1, entry:Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1, v2}, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;->setIndex(I)V

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v1           #entry:Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;
    .end local v3           #url:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 108
    if-eqz p1, :cond_0

    instance-of v2, p1, Lmiui/app/resourcebrowser/DownloadFileTask;

    if-nez v2, :cond_1

    .line 109
    :cond_0
    const/4 v2, 0x0

    .line 112
    :goto_0
    return v2

    .line 111
    :cond_1
    move-object v0, p1

    check-cast v0, Lmiui/app/resourcebrowser/DownloadFileTask;

    move-object v1, v0

    .line 112
    .local v1, d:Lmiui/app/resourcebrowser/DownloadFileTask;
    invoke-virtual {v1}, Lmiui/app/resourcebrowser/DownloadFileTask;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/app/resourcebrowser/DownloadFileTask;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lmiui/app/resourcebrowser/DownloadFileTask;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/app/resourcebrowser/DownloadFileTask;->mTargetDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/DownloadFileTask;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 35
    iput-object p1, p0, Lmiui/app/resourcebrowser/DownloadFileTask;->mId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTargetDirectory(Ljava/lang/String;)V
    .locals 0
    .parameter "targetDirectory"

    .prologue
    .line 43
    iput-object p1, p0, Lmiui/app/resourcebrowser/DownloadFileTask;->mTargetDirectory:Ljava/lang/String;

    .line 44
    return-void
.end method

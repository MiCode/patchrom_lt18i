.class Lmiui/content/res/ThemeZipFile;
.super Ljava/lang/Object;
.source "ThemeZipFile.java"


# instance fields
.field private mLastModifyTime:J

.field private mPath:Ljava/lang/String;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "zipFilePath"

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiui/content/res/ThemeZipFile;-><init>(Ljava/lang/String;Z)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "zipFilePath"
    .parameter "delayOpen"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    .line 23
    if-nez p2, :cond_0

    .line 24
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->openZipFile()V

    .line 26
    :cond_0
    return-void
.end method

.method private clean()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 73
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/content/res/ThemeZipFile;->mLastModifyTime:J

    .line 74
    return-void

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getZipPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/theme/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/media/theme/default/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private openZipFile()V
    .locals 4

    .prologue
    .line 77
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->clean()V

    .line 78
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->getZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/content/res/ThemeZipFile;->mLastModifyTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 83
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 84
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/content/res/ThemeZipFile;->mLastModifyTime:J

    goto :goto_0
.end method


# virtual methods
.method public confirmReset()Z
    .locals 4

    .prologue
    .line 35
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->getZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-wide v2, p0, Lmiui/content/res/ThemeZipFile;->mLastModifyTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsEntry(Ljava/lang/String;)Z
    .locals 1
    .parameter "relativePath"

    .prologue
    .line 46
    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 90
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 91
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->clean()V

    .line 92
    return-void
.end method

.method public getInputStream(Ljava/lang/String;[I)Ljava/io/InputStream;
    .locals 4
    .parameter "relativeFilePath"
    .parameter "size"

    .prologue
    .line 51
    :try_start_0
    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 53
    .local v0, entry:Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_1

    .line 54
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, p2, v1

    .line 57
    :cond_0
    iget-object v1, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 62
    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    :goto_0
    return-object v1

    .line 60
    :catch_0
    move-exception v1

    .line 62
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_0

    .line 40
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->openZipFile()V

    .line 42
    :cond_0
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->confirmReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->clean()V

    .line 32
    :cond_0
    return-void
.end method

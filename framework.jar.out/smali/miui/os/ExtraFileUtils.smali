.class public Lmiui/os/ExtraFileUtils;
.super Ljava/lang/Object;
.source "ExtraFileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mkdirs(Ljava/io/File;III)Z
    .locals 3
    .parameter "file"
    .parameter "mode"
    .parameter "uid"
    .parameter "gid"

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 30
    :goto_0
    return v1

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, parentDir:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 21
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, p2, p3}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 25
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 27
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 30
    goto :goto_0
.end method

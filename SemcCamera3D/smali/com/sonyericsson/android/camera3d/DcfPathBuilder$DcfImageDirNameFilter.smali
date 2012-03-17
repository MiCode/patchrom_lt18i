.class public Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageDirNameFilter;
.super Ljava/lang/Object;
.source "DcfPathBuilder.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/DcfPathBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DcfImageDirNameFilter"
.end annotation


# instance fields
.field public mDirName:Ljava/lang/String;

.field public mDirNo:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 11
    .parameter "file"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .local v0, checkFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_0

    .line 76
    const/4 v3, 0x0

    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {p2, v3, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 77
    .local v2, id:I
    const/16 v3, 0x64

    if-gt v3, v2, :cond_0

    const/16 v3, 0x3e7

    if-gt v2, v3, :cond_0

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%03d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ANDRO"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    iget v3, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageDirNameFilter;->mDirNo:I

    if-lt v2, v3, :cond_0

    .line 81
    iput v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageDirNameFilter;->mDirNo:I

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageDirNameFilter;->mDirName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 92
    .end local v2           #id:I
    :goto_0
    return v3

    .line 87
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    move v3, v5

    .line 88
    goto :goto_0

    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_0
    move v3, v5

    .line 92
    goto :goto_0
.end method

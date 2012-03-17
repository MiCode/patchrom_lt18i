.class public Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageFileNameFilter;
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
    name = "DcfImageFileNameFilter"
.end annotation


# instance fields
.field public mFileNo:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .parameter "file"
    .parameter "name"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 105
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0xc

    if-ne v2, v5, :cond_0

    .line 106
    const/4 v2, 0x4

    const/16 v5, 0x8

    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 108
    .local v1, id:I
    iget v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageFileNameFilter;->mFileNo:I

    if-lt v1, v2, :cond_0

    .line 109
    if-gt v3, v1, :cond_0

    const/16 v2, 0x270f

    if-gt v1, v2, :cond_0

    .line 110
    iput v1, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageFileNameFilter;->mFileNo:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 118
    .end local v1           #id:I
    :goto_0
    return v2

    .line 115
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, v4

    .line 116
    goto :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    move v2, v4

    .line 118
    goto :goto_0
.end method

.class public Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
.super Ljava/lang/Object;
.source "MpoInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MpoInfo"


# instance fields
.field public final mData:Ljava/lang/String;

.field public final mDataTaken:J

.field public final mHasThumbnail:Z

.field public final mId:I

.field public final mMimeType:Ljava/lang/String;

.field public final mMpoType:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

.field public final mOrientation:I

.field public mRelatedMpoFileId:I

.field public mRelatedMpoFileIdData:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;JILjava/lang/String;Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;Z)V
    .locals 1
    .parameter "id"
    .parameter "data"
    .parameter "datetaken"
    .parameter "orientation"
    .parameter "mimetype"
    .parameter "type"
    .parameter "hasThumbnail"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mId:I

    .line 57
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mData:Ljava/lang/String;

    .line 58
    iput-wide p3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mDataTaken:J

    .line 59
    iput p5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mOrientation:I

    .line 60
    iput-object p6, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mMimeType:Ljava/lang/String;

    .line 61
    iput-object p7, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mMpoType:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    .line 62
    iput-boolean p8, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mHasThumbnail:Z

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mRelatedMpoFileId:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mRelatedMpoFileIdData:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "data"
    .parameter "mimetype"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mId:I

    .line 71
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mData:Ljava/lang/String;

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mDataTaken:J

    .line 73
    iput v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mOrientation:I

    .line 74
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mMimeType:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->UNKNOWN:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mMpoType:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    .line 76
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mHasThumbnail:Z

    .line 77
    iput v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mRelatedMpoFileId:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mRelatedMpoFileIdData:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public getMpoFilename(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;)Ljava/lang/String;
    .locals 1
    .parameter "fileType"

    .prologue
    .line 100
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;->TARGET_MPO_FILE:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    if-ne p1, v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mData:Ljava/lang/String;

    .line 106
    :goto_0
    return-object v0

    .line 102
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;->RELATED_MPO_FILE:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    if-ne p1, v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mRelatedMpoFileIdData:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRepresentativeJpegFilename(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;)Ljava/lang/String;
    .locals 4
    .parameter "fileType"

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, naming:Lcom/sonyericsson/android/camera3d/viewer/model/FileNamingConvention;
    :try_start_0
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;->TARGET_MPO_FILE:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    if-ne p1, v3, :cond_0

    .line 115
    new-instance v2, Lcom/sonyericsson/android/camera3d/viewer/model/FileNamingConvention;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mData:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/model/FileNamingConvention;-><init>(Ljava/lang/String;)V

    .end local v1           #naming:Lcom/sonyericsson/android/camera3d/viewer/model/FileNamingConvention;
    .local v2, naming:Lcom/sonyericsson/android/camera3d/viewer/model/FileNamingConvention;
    move-object v1, v2

    .line 119
    .end local v2           #naming:Lcom/sonyericsson/android/camera3d/viewer/model/FileNamingConvention;
    .restart local v1       #naming:Lcom/sonyericsson/android/camera3d/viewer/model/FileNamingConvention;
    :goto_0
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/FileNamingConvention;->getRepresentativeJpegFilename()Ljava/lang/String;

    move-result-object v3

    .line 122
    :goto_1
    return-object v3

    .line 117
    :cond_0
    new-instance v2, Lcom/sonyericsson/android/camera3d/viewer/model/FileNamingConvention;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mRelatedMpoFileIdData:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/model/FileNamingConvention;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #naming:Lcom/sonyericsson/android/camera3d/viewer/model/FileNamingConvention;
    .restart local v2       #naming:Lcom/sonyericsson/android/camera3d/viewer/model/FileNamingConvention;
    move-object v1, v2

    .end local v2           #naming:Lcom/sonyericsson/android/camera3d/viewer/model/FileNamingConvention;
    .restart local v1       #naming:Lcom/sonyericsson/android/camera3d/viewer/model/FileNamingConvention;
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getUri(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;)Landroid/net/Uri;
    .locals 3
    .parameter "fileType"

    .prologue
    .line 82
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;->TARGET_MPO_FILE:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    if-ne p1, v0, :cond_1

    .line 83
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 87
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mData:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 89
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictures;->CONTENT_URI:Landroid/net/Uri;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;->RELATED_MPO_FILE:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    if-ne p1, v0, :cond_2

    .line 92
    sget-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictures;->CONTENT_URI:Landroid/net/Uri;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mRelatedMpoFileId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/sonyericsson/android/camera3d/DcfPathBuilder;
.super Ljava/lang/Object;
.source "DcfPathBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageFileNameFilter;,
        Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageDirNameFilter;
    }
.end annotation


# static fields
.field public static final DCF_DIR_NAME_FREE_WORD:Ljava/lang/String; = "ANDRO"

.field public static final DCF_FILE_NAME_FREE_WORD_MOVIE:Ljava/lang/String; = "MOV_"

.field public static final DCF_FILE_NAME_FREE_WORD_MPO:Ljava/lang/String; = "MPO_"

.field public static final DCF_FILE_NAME_FREE_WORD_PICTURE:Ljava/lang/String; = "DSC_"

.field public static final LENGTH_OF_DIR_NAME:I = 0x8

.field public static final LENGTH_OF_FILE_NAME:I = 0xc

.field public static final MAX_DIR_NAME:I = 0x3e7

.field public static final MAX_FILE_NAME:I = 0x270f

.field public static final MIN_DIR_NAME:I = 0x64

.field public static final MIN_FILE_NAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DcfPathBuilder"

.field public static final TYPE_MPO:I = 0x2

.field public static final TYPE_PICTURE:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1

.field private static sInstance:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;


# instance fields
.field private mDirNameFilter:Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageDirNameFilter;

.field private mDirNo:Ljava/lang/Integer;

.field private mFileNameFilter:Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageFileNameFilter;

.field private mFileNo:Ljava/lang/Integer;

.field mIsScanned:Z

.field mIsScanning:Z

.field private mPathScanner:Ljava/lang/Thread;

.field private mRootDirectory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->sInstance:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mRootDirectory:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    .line 40
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 47
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    .line 50
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mIsScanned:Z

    .line 53
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mIsScanning:Z

    .line 126
    new-instance v0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageDirNameFilter;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageDirNameFilter;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageDirNameFilter;

    .line 127
    new-instance v0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageFileNameFilter;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageFileNameFilter;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageFileNameFilter;

    .line 128
    return-void
.end method

.method private createImageDir()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 245
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    .line 246
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e7

    if-le v2, v3, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-object v1

    .line 249
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getDcimDirectory()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%03d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ANDRO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 255
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/sonyericsson/android/camera3d/DcfPathBuilder;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->sInstance:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    return-object v0
.end method

.method private searchImageDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "baseDir"

    .prologue
    .line 204
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, file:Ljava/io/File;
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageDirNameFilter;

    const/16 v4, 0x64

    iput v4, v3, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageDirNameFilter;->mDirNo:I

    .line 206
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageDirNameFilter;

    invoke-virtual {v1, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, fileList:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_1

    .line 209
    :cond_0
    const/16 v3, 0x63

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    .line 210
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->createImageDir()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, dirName:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 212
    .end local v0           #dirName:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageDirNameFilter;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageDirNameFilter;->mDirNo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    .line 213
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageDirNameFilter;

    iget-object v0, v3, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageDirNameFilter;->mDirName:Ljava/lang/String;

    .line 214
    .restart local v0       #dirName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->searchImageNo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private searchImageNo(Ljava/lang/String;)V
    .locals 4
    .parameter "baseDir"

    .prologue
    .line 226
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, file:Ljava/io/File;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageFileNameFilter;

    const/4 v3, 0x1

    iput v3, v2, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageFileNameFilter;->mFileNo:I

    .line 229
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageFileNameFilter;

    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, fileList:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 232
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageFileNameFilter;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$DcfImageFileNameFilter;->mFileNo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public assignImageFilePath(I)Ljava/lang/String;
    .locals 9
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 283
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mIsScanned:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 284
    const-string v0, ""

    .line 285
    .local v0, filePath:Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 286
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x270f

    if-le v2, v3, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->createImageDir()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 319
    .end local v0           #filePath:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 292
    .restart local v0       #filePath:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 295
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getDcimDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%03d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ANDRO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 308
    goto :goto_0

    .line 300
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DSC_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%04d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    goto :goto_0

    .line 303
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MOV_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    goto :goto_1

    .line 313
    .end local v0           #filePath:Ljava/lang/String;
    :cond_2
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mIsScanned:Z

    if-nez v2, :cond_3

    .line 315
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not yet scanned."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v0, v1

    .line 319
    goto/16 :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final cancel()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 159
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mIsScanning:Z

    if-eqz v1, :cond_0

    .line 160
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mIsScanned:Z

    .line 161
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mIsScanning:Z

    .line 162
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "DcfPathBuilder"

    const-string v2, "cancel: "

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    goto :goto_0

    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    throw v1
.end method

.method public getDcimDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mRootDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationToSave()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mRootDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getTempThumbnailDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getThumbnailDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getDcimDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.3d_thumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCurrentStorage(Ljava/lang/String;)Z
    .locals 1
    .parameter "storage"

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getDestinationToSave()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public returnUnusedFile()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 270
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 272
    :cond_0
    return-void
.end method

.method public final search()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getDcimDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x1

    .line 184
    .local v1, result:Z
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    const/4 v1, 0x0

    .line 189
    :cond_0
    if-eqz v1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getDcimDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->searchImageDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setDestinationToSave(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mRootDirectory:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public final startScan()V
    .locals 3

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mIsScanning:Z

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mIsScanned:Z

    .line 143
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$1;-><init>(Lcom/sonyericsson/android/camera3d/DcfPathBuilder;)V

    const-string v2, "DCF Path Builder"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 155
    :cond_0
    return-void
.end method

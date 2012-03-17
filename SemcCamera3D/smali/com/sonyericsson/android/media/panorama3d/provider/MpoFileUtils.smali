.class public Lcom/sonyericsson/android/media/panorama3d/provider/MpoFileUtils;
.super Ljava/lang/Object;
.source "MpoFileUtils.java"


# static fields
.field private static final PREFIX_TEMP_FILE:Ljava/lang/String; = "temp-"

.field private static final SUFFIX_TEMP_FILE:Ljava/lang/String; = "-mpo"

.field private static TAG:Ljava/lang/String;

.field public static final TEMP_FILE_DIRECTORY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "MpoFileUtils"

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/MpoFileUtils;->TAG:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/sonyericsson/android/media/panorama3d/provider/MpoFileUtils;->getTempFileDir()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/MpoFileUtils;->TEMP_FILE_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static createTempFile()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/MpoFileUtils;->TEMP_FILE_DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, fileFolder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    const-string v2, "temp-"

    const-string v3, "-mpo"

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 193
    :goto_0
    return-object v2

    .line 186
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 187
    .local v1, ret:Z
    if-nez v1, :cond_1

    .line 191
    const/4 v2, 0x0

    goto :goto_0

    .line 193
    :cond_1
    const-string v2, "temp-"

    const-string v3, "-mpo"

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    goto :goto_0
.end method

.method public static getJpegImageAndTypeFromMpoPicture(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "values"
    .parameter "mpoFilePath"

    .prologue
    .line 75
    const/4 v3, 0x0

    .line 76
    .local v3, mpoReader:Lcom/sonyericsson/android/camera3d/mpo/MpoReader;
    const/4 v6, 0x0

    .line 78
    .local v6, tempJpegFilePath:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->openMpoFile(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/mpo/MpoReader;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->getExtractJpegNum()I

    move-result v8

    if-lez v8, :cond_2

    .line 80
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->getRepresentativeImageIndex()I

    move-result v0

    .line 81
    .local v0, imageIndex:I
    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->getJpegDataLength(I)I

    move-result v2

    .line 83
    .local v2, length:I
    if-lez v2, :cond_0

    const v8, 0x895440

    if-gt v2, v8, :cond_0

    .line 84
    new-array v1, v2, [B

    .line 85
    .local v1, jpegData:[B
    invoke-virtual {v3, v0, v1}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->getJpegData(I[B)V

    .line 87
    invoke-static {v1}, Lcom/sonyericsson/android/media/panorama3d/provider/MpoFileUtils;->outputJpegFile([B)Ljava/io/File;

    move-result-object v5

    .line 88
    .local v5, tempJpegFile:Ljava/io/File;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 89
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 92
    .end local v1           #jpegData:[B
    .end local v5           #tempJpegFile:Ljava/io/File;
    :cond_0
    const/4 v7, 0x0

    .line 93
    .local v7, type:Ljava/lang/String;
    if-eqz p0, :cond_2

    const-string v8, "type"

    invoke-virtual {p0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_2

    .line 94
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->getMpoType()Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    move-result-object v4

    .line 95
    .local v4, mpotype:Lcom/sonyericsson/android/camera3d/mpo/MpoType;
    sget-object v8, Lcom/sonyericsson/android/camera3d/mpo/MpoType;->UNKNOWN:Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    if-ne v4, v8, :cond_4

    .line 96
    const-string v7, "unknown"

    .line 102
    :cond_1
    :goto_0
    const-string v8, "type"

    invoke-virtual {p0, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sonyericsson/android/camera3d/mpo/MpoReader$MpoFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_a

    .line 136
    .end local v0           #imageIndex:I
    .end local v2           #length:I
    .end local v4           #mpotype:Lcom/sonyericsson/android/camera3d/mpo/MpoType;
    .end local v7           #type:Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 137
    :try_start_1
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->closeMpoFile()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_c

    .line 142
    :cond_3
    :goto_1
    return-object v6

    .line 97
    .restart local v0       #imageIndex:I
    .restart local v2       #length:I
    .restart local v4       #mpotype:Lcom/sonyericsson/android/camera3d/mpo/MpoType;
    .restart local v7       #type:Ljava/lang/String;
    :cond_4
    :try_start_2
    sget-object v8, Lcom/sonyericsson/android/camera3d/mpo/MpoType;->STEREO:Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    if-ne v4, v8, :cond_5

    .line 98
    const-string v7, "3D"

    goto :goto_0

    .line 99
    :cond_5
    sget-object v8, Lcom/sonyericsson/android/camera3d/mpo/MpoType;->MULTIANGLE:Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    if-ne v4, v8, :cond_1

    .line 100
    const-string v7, "MA"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sonyericsson/android/camera3d/mpo/MpoReader$MpoFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_a

    goto :goto_0

    .line 109
    .end local v0           #imageIndex:I
    .end local v2           #length:I
    .end local v4           #mpotype:Lcom/sonyericsson/android/camera3d/mpo/MpoType;
    .end local v7           #type:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 136
    if-eqz v3, :cond_3

    .line 137
    :try_start_3
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->closeMpoFile()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 139
    :catch_1
    move-exception v8

    goto :goto_1

    .line 113
    :catch_2
    move-exception v8

    .line 136
    if-eqz v3, :cond_3

    .line 137
    :try_start_4
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->closeMpoFile()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 139
    :catch_3
    move-exception v8

    goto :goto_1

    .line 118
    :catch_4
    move-exception v8

    .line 136
    if-eqz v3, :cond_3

    .line 137
    :try_start_5
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->closeMpoFile()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_1

    .line 139
    :catch_5
    move-exception v8

    goto :goto_1

    .line 122
    :catch_6
    move-exception v8

    .line 136
    if-eqz v3, :cond_3

    .line 137
    :try_start_6
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->closeMpoFile()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_1

    .line 139
    :catch_7
    move-exception v8

    goto :goto_1

    .line 126
    :catch_8
    move-exception v8

    .line 136
    if-eqz v3, :cond_3

    .line 137
    :try_start_7
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->closeMpoFile()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_1

    .line 139
    :catch_9
    move-exception v8

    goto :goto_1

    .line 130
    :catch_a
    move-exception v8

    .line 136
    if-eqz v3, :cond_3

    .line 137
    :try_start_8
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->closeMpoFile()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_b

    goto :goto_1

    .line 139
    :catch_b
    move-exception v8

    goto :goto_1

    .line 135
    :catchall_0
    move-exception v8

    .line 136
    if-eqz v3, :cond_6

    .line 137
    :try_start_9
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->closeMpoFile()V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_d

    .line 140
    :cond_6
    :goto_2
    throw v8

    .line 139
    :catch_c
    move-exception v8

    goto :goto_1

    :catch_d
    move-exception v9

    goto :goto_2
.end method

.method private static getTempFileDir()Ljava/lang/String;
    .locals 9

    .prologue
    .line 50
    const/4 v6, 0x0

    .line 51
    .local v6, tempFileDir:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera3d/util/CameraEnvironment;->getExternalStorages()[Ljava/io/File;

    move-result-object v2

    .line 52
    .local v2, externalStorages:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 53
    .local v1, externalStorage:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 54
    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/util/CameraEnvironment;->getExternalStorageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, storageType:Ljava/lang/String;
    const-string v7, "Emmc"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 56
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/DCIM/.3d_thumbnails/temp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 60
    .end local v1           #externalStorage:Ljava/io/File;
    .end local v5           #storageType:Ljava/lang/String;
    :cond_0
    return-object v6

    .line 52
    .restart local v1       #externalStorage:Ljava/io/File;
    .restart local v5       #storageType:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static outputJpegFile([B)Ljava/io/File;
    .locals 8
    .parameter "data"

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, JpegFile:Ljava/io/File;
    const/4 v3, 0x0

    .line 149
    .local v3, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/media/panorama3d/provider/MpoFileUtils;->createTempFile()Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 150
    if-nez v0, :cond_1

    .line 170
    if-eqz v3, :cond_0

    .line 172
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    move-object v1, v0

    .line 178
    .end local v0           #JpegFile:Ljava/io/File;
    .local v1, JpegFile:Ljava/io/File;
    :goto_1
    return-object v1

    .line 153
    .end local v1           #JpegFile:Ljava/io/File;
    .restart local v0       #JpegFile:Ljava/io/File;
    :cond_1
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 154
    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .local v4, outStream:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v4, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 170
    if-eqz v4, :cond_5

    .line 172
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, v4

    .end local v4           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    move-object v1, v0

    .line 178
    .end local v0           #JpegFile:Ljava/io/File;
    .restart local v1       #JpegFile:Ljava/io/File;
    goto :goto_1

    .line 173
    .end local v1           #JpegFile:Ljava/io/File;
    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v0       #JpegFile:Ljava/io/File;
    .restart local v4       #outStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 175
    .end local v4           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 155
    :catch_1
    move-exception v2

    .line 156
    .local v2, e:Ljava/io/IOException;
    :goto_3
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    .line 158
    .local v5, ret:Z
    if-nez v5, :cond_3

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 165
    .end local v5           #ret:Z
    :cond_3
    const/4 v0, 0x0

    .line 170
    if-eqz v3, :cond_2

    .line 172
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 173
    :catch_2
    move-exception v6

    goto :goto_2

    .line 170
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_4

    .line 172
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 175
    :cond_4
    :goto_5
    throw v6

    .line 173
    :catch_3
    move-exception v6

    goto :goto_0

    :catch_4
    move-exception v7

    goto :goto_5

    .line 170
    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v4       #outStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 155
    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v4       #outStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v4       #outStream:Ljava/io/FileOutputStream;
    :cond_5
    move-object v3, v4

    .end local v4           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

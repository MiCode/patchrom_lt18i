.class public Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;
.super Ljava/lang/Object;
.source "Panorama3dMiniThumbFile.java"


# static fields
.field public static final BYTES_PER_MINTHUMB:I = 0x2710

.field private static final HEADER_SIZE:I = 0xd

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Panorama3dMiniThumbFile"

.field private static sThumbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private mMiniThumbFile:Ljava/io/RandomAccessFile;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mUri:Landroid/net/Uri;

    .line 156
    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    .line 157
    return-void
.end method

.method public static declared-synchronized instance(Landroid/net/Uri;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;
    .locals 4
    .parameter "uri"

    .prologue
    .line 88
    const-class v3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;

    monitor-enter v3

    :try_start_0
    const-string v1, "3D"

    .line 89
    .local v1, type:Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;

    .line 90
    .local v0, file:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;
    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;

    .end local v0           #file:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;
    const-string v2, "mpo_3d_pictures_thumb/3D"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 93
    .restart local v0       #file:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;
    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit v3

    return-object v0

    .line 88
    .end local v0           #file:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;
    .end local v1           #type:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private miniThumbDataFile()Ljava/io/RandomAccessFile;
    .locals 6

    .prologue
    .line 120
    iget-object v4, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->removeOldFile()V

    .line 122
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, path:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 124
    .local v0, directory:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 132
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v2, f:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-eqz v4, :cond_1

    .line 145
    iget-object v4, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    .line 148
    .end local v0           #directory:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #path:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    return-object v4

    .line 135
    .restart local v0       #directory:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #path:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 139
    .local v1, ex:Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 140
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private randomAccessFilePath(I)Ljava/lang/String;
    .locals 3
    .parameter "version"

    .prologue
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.3d_thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, directoryName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.MA_3D_thumbdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeOldFile()V
    .locals 3

    .prologue
    .line 108
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, oldPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, oldFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized reset()V
    .locals 4

    .prologue
    .line 78
    const-class v3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;

    .line 79
    .local v0, file:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;
    invoke-virtual {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 78
    .end local v0           #file:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 81
    :cond_0
    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    monitor-exit v3

    return-void
.end method


# virtual methods
.method public declared-synchronized deactivate()V
    .locals 1

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 167
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized getMagic(J)J
    .locals 10
    .parameter "id"

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x1

    .line 199
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 200
    .local v7, r:Ljava/io/RandomAccessFile;
    if-eqz v7, :cond_2

    .line 201
    const-wide/16 v3, 0x2710

    mul-long v1, p1, v3

    .line 202
    .local v1, pos:J
    const/4 v6, 0x0

    .line 204
    .local v6, lock:Ljava/nio/channels/FileLock;
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x9

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v6

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v8, :cond_1

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v3

    .line 228
    if-eqz v6, :cond_0

    .line 229
    :try_start_2
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 235
    .end local v1           #pos:J
    .end local v6           #lock:Ljava/nio/channels/FileLock;
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v3

    .line 228
    .restart local v1       #pos:J
    .restart local v6       #lock:Ljava/nio/channels/FileLock;
    :cond_1
    if-eqz v6, :cond_2

    .line 229
    :try_start_3
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 235
    .end local v1           #pos:J
    .end local v6           #lock:Ljava/nio/channels/FileLock;
    :cond_2
    :goto_1
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 215
    .restart local v1       #pos:J
    .restart local v6       #lock:Ljava/nio/channels/FileLock;
    :catch_0
    move-exception v0

    .line 228
    if-eqz v6, :cond_2

    .line 229
    :try_start_4
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 230
    :catch_1
    move-exception v0

    goto :goto_1

    .line 219
    :catch_2
    move-exception v0

    .line 228
    if-eqz v6, :cond_2

    .line 229
    :try_start_5
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 230
    :catch_3
    move-exception v0

    goto :goto_1

    .line 227
    :catchall_0
    move-exception v0

    .line 228
    if-eqz v6, :cond_3

    .line 229
    :try_start_6
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 232
    :cond_3
    :goto_2
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 199
    .end local v1           #pos:J
    .end local v6           #lock:Ljava/nio/channels/FileLock;
    .end local v7           #r:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 230
    .restart local v1       #pos:J
    .restart local v6       #lock:Ljava/nio/channels/FileLock;
    .restart local v7       #r:Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v3

    goto :goto_2
.end method

.method public declared-synchronized getMiniThumbFromFile(J[B)[B
    .locals 14
    .parameter "id"
    .parameter "data"

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .line 298
    .local v12, r:Ljava/io/RandomAccessFile;
    if-nez v12, :cond_1

    .line 299
    const/16 p3, 0x0

    .line 342
    .end local p3
    :cond_0
    :goto_0
    monitor-exit p0

    return-object p3

    .line 301
    .restart local p3
    :cond_1
    const-wide/16 v4, 0x2710

    mul-long v2, p1, v4

    .line 302
    .local v2, pos:J
    const/4 v9, 0x0

    .line 304
    .local v9, lock:Ljava/nio/channels/FileLock;
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 305
    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v4, 0x2710

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v9

    .line 306
    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v4, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4, v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v13

    .line 307
    .local v13, size:I
    const/16 v1, 0xd

    if-le v13, v1, :cond_2

    .line 308
    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 309
    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 310
    .local v7, flag:B
    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    .line 311
    .local v10, magic:J
    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 317
    .local v8, length:I
    add-int/lit8 v1, v8, 0xd

    if-lt v13, v1, :cond_2

    move-object/from16 v0, p3

    array-length v1, v0

    if-lt v1, v8, :cond_2

    .line 318
    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v0, v4, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 336
    if-eqz v9, :cond_0

    .line 337
    :try_start_2
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v1

    goto :goto_0

    .line 336
    .end local v7           #flag:B
    .end local v8           #length:I
    .end local v10           #magic:J
    :cond_2
    if-eqz v9, :cond_3

    .line 337
    :try_start_3
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 342
    .end local v13           #size:I
    :cond_3
    :goto_1
    const/16 p3, 0x0

    goto :goto_0

    .line 322
    :catch_1
    move-exception v1

    .line 336
    if-eqz v9, :cond_3

    .line 337
    :try_start_4
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 338
    :catch_2
    move-exception v1

    goto :goto_1

    .line 327
    :catch_3
    move-exception v1

    .line 336
    if-eqz v9, :cond_3

    .line 337
    :try_start_5
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 338
    :catch_4
    move-exception v1

    goto :goto_1

    .line 335
    :catchall_0
    move-exception v1

    .line 336
    if-eqz v9, :cond_4

    .line 337
    :try_start_6
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 340
    :cond_4
    :goto_2
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 297
    .end local v2           #pos:J
    .end local v9           #lock:Ljava/nio/channels/FileLock;
    .end local v12           #r:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 338
    .restart local v2       #pos:J
    .restart local v9       #lock:Ljava/nio/channels/FileLock;
    .restart local v12       #r:Ljava/io/RandomAccessFile;
    .restart local v13       #size:I
    :catch_5
    move-exception v1

    goto :goto_1

    .end local v13           #size:I
    :catch_6
    move-exception v4

    goto :goto_2
.end method

.method public declared-synchronized removeMiniThumbDataFile()V
    .locals 3

    .prologue
    .line 177
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 182
    :catch_0
    move-exception v2

    goto :goto_0

    .line 177
    .end local v0           #file:Ljava/io/File;
    .end local v1           #path:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJ)V
    .locals 9
    .parameter "data"
    .parameter "id"
    .parameter "magic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x2710

    .line 243
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 244
    .local v8, r:Ljava/io/RandomAccessFile;
    if-nez v8, :cond_1

    .line 287
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 246
    :cond_1
    mul-long v1, p2, v3

    .line 247
    .local v1, pos:J
    const/4 v7, 0x0

    .line 249
    .local v7, lock:Ljava/nio/channels/FileLock;
    if-eqz p1, :cond_3

    .line 250
    :try_start_1
    array-length v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v3, 0x2703

    if-le v0, v3, :cond_2

    .line 281
    if-eqz v7, :cond_0

    .line 282
    :try_start_2
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    goto :goto_0

    .line 254
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    array-length v3, p1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x2710

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 281
    :cond_3
    if-eqz v7, :cond_0

    .line 282
    :try_start_4
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 283
    :catch_1
    move-exception v0

    goto :goto_0

    .line 267
    :catch_2
    move-exception v6

    .line 271
    .local v6, ex:Ljava/io/IOException;
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 280
    .end local v6           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 281
    if-eqz v7, :cond_4

    .line 282
    :try_start_6
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 285
    :cond_4
    :goto_1
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 243
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    .end local v8           #r:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 272
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    .restart local v8       #r:Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v0

    .line 281
    if-eqz v7, :cond_0

    .line 282
    :try_start_8
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 283
    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v3

    goto :goto_1
.end method

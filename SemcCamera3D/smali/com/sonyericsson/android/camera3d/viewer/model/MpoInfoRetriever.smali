.class public Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
.super Ljava/lang/Object;
.source "MpoInfoRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$1;,
        Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentMpoInfo;,
        Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentFile;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private final mCursorAccessSection:Ljava/lang/Object;

.field private mIndexOfData:I

.field private mIndexOfDateTaken:I

.field private mIndexOfId:I

.field private mIndexOfMimeType:I

.field private mIndexOfMpoType:I

.field private mIndexOfOrientation:I

.field private mIndexOfThumbMagic:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursorAccessSection:Ljava/lang/Object;

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursor:Landroid/database/Cursor;

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mIndexOfId:I

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursor:Landroid/database/Cursor;

    const-string v1, "datetaken"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mIndexOfDateTaken:I

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursor:Landroid/database/Cursor;

    const-string v1, "orientation"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mIndexOfOrientation:I

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursor:Landroid/database/Cursor;

    const-string v1, "mime_type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mIndexOfMimeType:I

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursor:Landroid/database/Cursor;

    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mIndexOfData:I

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursor:Landroid/database/Cursor;

    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mIndexOfMpoType:I

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursor:Landroid/database/Cursor;

    const-string v1, "mini_thumb_magic"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mIndexOfThumbMagic:I

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method private convert(Landroid/database/Cursor;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    .locals 10
    .parameter "c"

    .prologue
    const/4 v9, 0x0

    .line 120
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v9

    .line 144
    :goto_0
    return-object v0

    .line 124
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mIndexOfId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 125
    .local v1, thumbID:I
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mIndexOfDateTaken:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 126
    .local v3, datetaken:J
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mIndexOfOrientation:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 127
    .local v5, orientation:I
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mIndexOfMimeType:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, mime:Ljava/lang/String;
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mIndexOfData:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, data:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->hasThumbnail(Landroid/database/Cursor;)Z

    move-result v8

    .line 130
    .local v8, hasThumbnail:Z
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->getMpoType(Landroid/database/Cursor;)Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    move-result-object v7

    .line 131
    .local v7, mpotype:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    if-eqz v7, :cond_2

    .line 132
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;-><init>(ILjava/lang/String;JILjava/lang/String;Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v1           #thumbID:I
    .end local v2           #data:Ljava/lang/String;
    .end local v3           #datetaken:J
    .end local v5           #orientation:I
    .end local v6           #mime:Ljava/lang/String;
    .end local v7           #mpotype:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    .end local v8           #hasThumbnail:Z
    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v9

    .line 144
    goto :goto_0
.end method

.method public static create(Landroid/database/Cursor;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 53
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public static createWithCurrentFile(Landroid/database/Cursor;Ljava/io/File;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    .locals 1
    .parameter "cursor"
    .parameter "current"

    .prologue
    .line 57
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentFile;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentFile;-><init>(Landroid/database/Cursor;Ljava/io/File;)V

    return-object v0
.end method

.method public static createWithCurrentMpoInfo(Landroid/database/Cursor;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    .locals 1
    .parameter "cursor"
    .parameter "current"
    .parameter "photoStackNum"

    .prologue
    .line 62
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentMpoInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever$WithCurrentMpoInfo;-><init>(Landroid/database/Cursor;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;I)V

    return-object v0
.end method

.method private getMpoType(Landroid/database/Cursor;)Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    .locals 1
    .parameter "c"

    .prologue
    .line 152
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mIndexOfMpoType:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->fromString(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    move-result-object v0

    return-object v0
.end method

.method private hasThumbnail(Landroid/database/Cursor;)Z
    .locals 7
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 162
    :try_start_0
    iget v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mIndexOfThumbMagic:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, magic:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 166
    .end local v1           #magic:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public dump()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public get(I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursorAccessSection:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 106
    monitor-exit v1

    .line 111
    :goto_0
    return-object v0

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->convert(Landroid/database/Cursor;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 111
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 174
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursorAccessSection:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x0

    monitor-exit v1

    .line 178
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursorAccessSection:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->mCursor:Landroid/database/Cursor;

    .line 97
    monitor-exit v1

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

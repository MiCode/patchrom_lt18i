.class public Lcom/sonyericsson/android/camera/photostack/PhotoStackQueryHelper;
.super Ljava/lang/Object;
.source "PhotoStackQueryHelper.java"


# static fields
.field private static final EXTENSION_JPG:Ljava/lang/String; = "JPG"

.field private static final EXTENSION_MPO:Ljava/lang/String; = "MPO"

.field private static final TAG:Ljava/lang/String; = "PhotoStackQueryHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized crDelete(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;)I
    .locals 4
    .parameter "contentResolver"
    .parameter "uri"
    .parameter "params"

    .prologue
    .line 145
    const-class v2, Lcom/sonyericsson/android/camera/photostack/PhotoStackQueryHelper;

    monitor-enter v2

    const/4 v0, 0x0

    .line 147
    .local v0, result:I
    :try_start_0
    iget-object v1, p2, Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;->where:Ljava/lang/String;

    iget-object v3, p2, Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 152
    :goto_0
    monitor-exit v2

    return v0

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 149
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;)Landroid/database/Cursor;
    .locals 8
    .parameter "contentResolver"
    .parameter "uri"
    .parameter "params"

    .prologue
    .line 110
    const-class v7, Lcom/sonyericsson/android/camera/photostack/PhotoStackQueryHelper;

    monitor-enter v7

    const/4 v6, 0x0

    .line 114
    .local v6, result:Landroid/database/Cursor;
    :try_start_0
    iget v0, p2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    if-lez v0, :cond_0

    .line 115
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s limit %d offset %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->sortOrder:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->offset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, order:Ljava/lang/String;
    :goto_0
    iget-object v2, p2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->projection:[Ljava/lang/String;

    iget-object v3, p2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->where:Ljava/lang/String;

    iget-object v4, p2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->selectionArgs:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 130
    .end local v5           #order:Ljava/lang/String;
    :goto_1
    monitor-exit v7

    return-object v6

    .line 119
    :cond_0
    :try_start_1
    iget-object v5, p2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->sortOrder:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5       #order:Ljava/lang/String;
    goto :goto_0

    .line 110
    .end local v5           #order:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 127
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 14
    .parameter "contenResolver"
    .parameter "uri"

    .prologue
    .line 30
    const/4 v2, 0x0

    .line 31
    .local v2, failCount:I
    if-nez p1, :cond_0

    .line 32
    const/4 v10, 0x0

    .line 94
    :goto_0
    return v10

    .line 35
    :cond_0
    new-instance v8, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    invoke-direct {v8}, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;-><init>()V

    .line 36
    .local v8, params:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "_id"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "_data"

    aput-object v12, v10, v11

    iput-object v10, v8, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 42
    const/4 v10, 0x0

    iput-object v10, v8, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->where:Ljava/lang/String;

    .line 43
    const/4 v10, 0x0

    iput-object v10, v8, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->selectionArgs:[Ljava/lang/String;

    .line 44
    const/4 v10, 0x0

    iput-object v10, v8, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 45
    const/4 v10, 0x0

    iput v10, v8, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    .line 46
    const/4 v10, 0x0

    iput v10, v8, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->offset:I

    .line 47
    invoke-static {p0, p1, v8}, Lcom/sonyericsson/android/camera/photostack/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v0

    .line 48
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v0, :cond_4

    .line 49
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 50
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 52
    const/4 v10, 0x1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, imagePath:Ljava/lang/String;
    new-instance v1, Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;-><init>()V

    .line 56
    .local v1, deparams:Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;->where:Ljava/lang/String;

    .line 58
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;->selectionArgs:[Ljava/lang/String;

    .line 59
    invoke-static {p0, p1, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackQueryHelper;->crDelete(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;)I

    move-result v7

    .line 60
    .local v7, number:I
    const/4 v10, 0x1

    if-eq v7, v10, :cond_2

    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 49
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 65
    :cond_2
    if-eqz v4, :cond_1

    const-string v10, ".*\\.[Mm][Pp][Oo]$"

    invoke-virtual {v4, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 66
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    const-string v13, "MPO"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "JPG"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, jpgImagePath:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_data=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 72
    .local v9, where:Ljava/lang/String;
    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v9, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v6, mpoFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 79
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_2

    .line 87
    .end local v1           #deparams:Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;
    .end local v4           #imagePath:Ljava/lang/String;
    .end local v5           #jpgImagePath:Ljava/lang/String;
    .end local v6           #mpoFile:Ljava/io/File;
    .end local v7           #number:I
    .end local v9           #where:Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 91
    .end local v3           #i:I
    :cond_4
    if-nez v2, :cond_5

    .line 92
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 94
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

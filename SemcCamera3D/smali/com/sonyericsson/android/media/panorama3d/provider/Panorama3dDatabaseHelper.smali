.class public final Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Panorama3dDatabaseHelper.java"


# static fields
.field private static final DATABASE_VERSION:I = 0x1

.field private static final MAX_EXTERNAL_DATABASES:I = 0x3

.field private static final OBSOLETE_DATABASE_DB:J = 0x134fd9000L

.field private static TAG:Ljava/lang/String;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mInternal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "Panorama3dProvider"

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "internal"

    .prologue
    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->mContext:Landroid/content/Context;

    .line 57
    iput-boolean p3, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->mInternal:Z

    .line 58
    return-void
.end method

.method private static updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 1
    .parameter "db"
    .parameter "internal"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 120
    :cond_1
    if-le p2, p3, :cond_2

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 132
    :cond_2
    const-string v0, "DROP TABLE IF EXISTS mpo_3d_pictures"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    const-string v0, "DROP TABLE IF EXISTS mpo_3d_pictures_thumb"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 65
    const-string v0, "CREATE TABLE IF NOT EXISTS mpo_3d_pictures (_id INTEGER PRIMARY KEY, _data TEXT not null, datetaken INTEGER, orientation INTEGER, latitude INTEGER, longitude INTEGER, mime_type TEXT not null, type TEXT, title TEXT not null, _display_name TEXT not null, _size INTEGER not null, date_modified INTEGER not null, mini_thumb_magic INTEGER, bucket_id INTEGER not null, bucket_display_name TEXT not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    const-string v0, "CREATE TABLE IF NOT EXISTS mpo_3d_pictures_thumb (_id INTEGER PRIMARY KEY,_data TEXT not null,image_id INTEGER not null,kind INTEGER not null,width INTEGER not null,height INTEGER not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 18
    .parameter "db"

    .prologue
    .line 143
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->mInternal:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 219
    :cond_0
    return-void

    .line 147
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v3, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 150
    .local v9, now:J
    :try_start_0
    invoke-virtual {v3, v9, v10}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, databases:[Ljava/lang/String;
    array-length v1, v2

    .line 165
    .local v1, count:I
    const/4 v5, 0x3

    .line 169
    .local v5, limit:I
    const-wide v16, 0x134fd9000L

    sub-long v14, v9, v16

    .line 170
    .local v14, twoMonthsAgo:J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_5

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    aget-object v17, v2, v4

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 172
    .local v11, other:Ljava/io/File;
    invoke-virtual {v3, v11}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 173
    const/16 v16, 0x0

    aput-object v16, v2, v4

    .line 174
    add-int/lit8 v1, v1, -0x1

    .line 175
    invoke-virtual {v3, v11}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 179
    add-int/lit8 v5, v5, -0x1

    .line 170
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 182
    :cond_3
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 183
    .local v12, time:J
    cmp-long v16, v12, v14

    if-gez v16, :cond_2

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    aget-object v17, v2, v4

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 188
    const/16 v16, 0x0

    aput-object v16, v2, v4

    .line 189
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 210
    .end local v11           #other:Ljava/io/File;
    .end local v12           #time:J
    .local v6, lruIndex:I
    .local v7, lruTime:J
    :cond_4
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v6, v0, :cond_5

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    aget-object v17, v2, v6

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 215
    const/16 v16, 0x0

    aput-object v16, v2, v6

    .line 216
    add-int/lit8 v1, v1, -0x1

    .line 196
    .end local v6           #lruIndex:I
    .end local v7           #lruTime:J
    :cond_5
    if-le v1, v5, :cond_0

    .line 197
    const/4 v6, -0x1

    .line 198
    .restart local v6       #lruIndex:I
    const-wide/16 v7, 0x0

    .line 200
    .restart local v7       #lruTime:J
    const/4 v4, 0x0

    :goto_3
    array-length v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_4

    .line 201
    aget-object v16, v2, v4

    if-eqz v16, :cond_7

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    aget-object v17, v2, v4

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 203
    .restart local v12       #time:J
    const-wide/16 v16, 0x0

    cmp-long v16, v7, v16

    if-eqz v16, :cond_6

    cmp-long v16, v12, v7

    if-gez v16, :cond_7

    .line 204
    :cond_6
    move v6, v4

    .line 205
    move-wide v7, v12

    .line 200
    .end local v12           #time:J
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 151
    .end local v1           #count:I
    .end local v2           #databases:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #limit:I
    .end local v6           #lruIndex:I
    .end local v7           #lruTime:J
    .end local v14           #twoMonthsAgo:J
    :catch_0
    move-exception v16

    goto/16 :goto_0

    .line 157
    :catch_1
    move-exception v16

    goto/16 :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->mInternal:Z

    invoke-static {p1, v0, p2, p3}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 100
    return-void
.end method

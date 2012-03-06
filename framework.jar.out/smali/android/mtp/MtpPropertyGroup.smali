.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V
    .locals 5
    .parameter "database"
    .parameter "provider"
    .parameter "volume"
    .parameter "properties"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 71
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    .line 72
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 73
    invoke-static {p3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 75
    array-length v1, p4

    .line 76
    .local v1, count:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .local v0, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-array v3, v1, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 80
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 81
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p4, v2

    invoke-direct {p0, v4, v0}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 84
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 85
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 86
    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    :cond_1
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 5
    .parameter "code"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .prologue
    .line 91
    .local p2, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 94
    .local v0, column:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, type:I
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    .line 196
    :goto_1
    return-object v2

    .line 96
    .end local v1           #type:I
    :sswitch_0
    const-string/jumbo v0, "storage_id"

    .line 97
    const/4 v1, 0x6

    .line 98
    .restart local v1       #type:I
    goto :goto_0

    .line 100
    .end local v1           #type:I
    :sswitch_1
    const-string v0, "format"

    .line 101
    const/4 v1, 0x4

    .line 102
    .restart local v1       #type:I
    goto :goto_0

    .line 105
    .end local v1           #type:I
    :sswitch_2
    const/4 v1, 0x4

    .line 106
    .restart local v1       #type:I
    goto :goto_0

    .line 108
    .end local v1           #type:I
    :sswitch_3
    const-string v0, "_size"

    .line 109
    const/16 v1, 0x8

    .line 110
    .restart local v1       #type:I
    goto :goto_0

    .line 112
    .end local v1           #type:I
    :sswitch_4
    const-string v0, "_data"

    .line 113
    const v1, 0xffff

    .line 114
    .restart local v1       #type:I
    goto :goto_0

    .line 116
    .end local v1           #type:I
    :sswitch_5
    const-string/jumbo v0, "title"

    .line 117
    const v1, 0xffff

    .line 118
    .restart local v1       #type:I
    goto :goto_0

    .line 120
    .end local v1           #type:I
    :sswitch_6
    const-string v0, "date_modified"

    .line 121
    const v1, 0xffff

    .line 122
    .restart local v1       #type:I
    goto :goto_0

    .line 124
    .end local v1           #type:I
    :sswitch_7
    const-string v0, "date_added"

    .line 125
    const v1, 0xffff

    .line 126
    .restart local v1       #type:I
    goto :goto_0

    .line 128
    .end local v1           #type:I
    :sswitch_8
    const-string/jumbo v0, "year"

    .line 129
    const v1, 0xffff

    .line 130
    .restart local v1       #type:I
    goto :goto_0

    .line 132
    .end local v1           #type:I
    :sswitch_9
    const-string/jumbo v0, "parent"

    .line 133
    const/4 v1, 0x6

    .line 134
    .restart local v1       #type:I
    goto :goto_0

    .line 137
    .end local v1           #type:I
    :sswitch_a
    const-string/jumbo v0, "storage_id"

    .line 138
    const/16 v1, 0xa

    .line 139
    .restart local v1       #type:I
    goto :goto_0

    .line 141
    .end local v1           #type:I
    :sswitch_b
    const-string v0, "duration"

    .line 142
    const/4 v1, 0x6

    .line 143
    .restart local v1       #type:I
    goto :goto_0

    .line 145
    .end local v1           #type:I
    :sswitch_c
    const-string/jumbo v0, "track"

    .line 146
    const/4 v1, 0x4

    .line 147
    .restart local v1       #type:I
    goto :goto_0

    .line 149
    .end local v1           #type:I
    :sswitch_d
    const-string v0, "_display_name"

    .line 150
    const v1, 0xffff

    .line 151
    .restart local v1       #type:I
    goto :goto_0

    .line 153
    .end local v1           #type:I
    :sswitch_e
    const v1, 0xffff

    .line 154
    .restart local v1       #type:I
    goto :goto_0

    .line 156
    .end local v1           #type:I
    :sswitch_f
    const v1, 0xffff

    .line 157
    .restart local v1       #type:I
    goto :goto_0

    .line 159
    .end local v1           #type:I
    :sswitch_10
    const-string v0, "album_artist"

    .line 160
    const v1, 0xffff

    .line 161
    .restart local v1       #type:I
    goto :goto_0

    .line 164
    .end local v1           #type:I
    :sswitch_11
    const v1, 0xffff

    .line 165
    .restart local v1       #type:I
    goto :goto_0

    .line 167
    .end local v1           #type:I
    :sswitch_12
    const-string v0, "composer"

    .line 168
    const v1, 0xffff

    .line 169
    .restart local v1       #type:I
    goto :goto_0

    .line 171
    .end local v1           #type:I
    :sswitch_13
    const-string v0, "description"

    .line 172
    const v1, 0xffff

    .line 173
    .restart local v1       #type:I
    goto :goto_0

    .line 176
    .end local v1           #type:I
    :sswitch_14
    const/4 v1, 0x2

    .line 177
    .restart local v1       #type:I
    goto :goto_0

    .line 179
    .end local v1           #type:I
    :sswitch_15
    const-string/jumbo v0, "width"

    .line 180
    const/4 v1, 0x6

    .line 181
    .restart local v1       #type:I
    goto :goto_0

    .line 183
    .end local v1           #type:I
    :sswitch_16
    const-string v0, "height"

    .line 184
    const/4 v1, 0x6

    .line 185
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 196
    :cond_0
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    goto :goto_1

    .line 94
    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_0
        0xdc02 -> :sswitch_1
        0xdc03 -> :sswitch_2
        0xdc04 -> :sswitch_3
        0xdc07 -> :sswitch_4
        0xdc09 -> :sswitch_6
        0xdc0b -> :sswitch_9
        0xdc41 -> :sswitch_a
        0xdc44 -> :sswitch_5
        0xdc46 -> :sswitch_e
        0xdc48 -> :sswitch_13
        0xdc4e -> :sswitch_7
        0xdc4f -> :sswitch_14
        0xdc87 -> :sswitch_15
        0xdc88 -> :sswitch_16
        0xdc89 -> :sswitch_b
        0xdc8b -> :sswitch_c
        0xdc8c -> :sswitch_11
        0xdc96 -> :sswitch_12
        0xdc99 -> :sswitch_8
        0xdc9a -> :sswitch_f
        0xdc9b -> :sswitch_10
        0xdce0 -> :sswitch_d
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "path"

    .prologue
    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, start:I
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 286
    .local v1, lastSlash:I
    if-ltz v1, :cond_0

    .line 287
    add-int/lit8 v2, v1, 0x1

    .line 289
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 290
    .local v0, end:I
    sub-int v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    .line 291
    add-int/lit16 v0, v2, 0xff

    .line 293
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v8, 0x0

    .line 222
    const/4 v6, 0x0

    .line 224
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 227
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 235
    if-eqz v6, :cond_0

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 230
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 235
    if-eqz v6, :cond_0

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 232
    :catch_0
    move-exception v7

    .line 235
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    goto :goto_0

    .line 235
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 242
    const/4 v6, 0x0

    .line 244
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 245
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 248
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 257
    if-eqz v6, :cond_0

    .line 258
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 251
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    if-eqz v6, :cond_0

    .line 258
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 253
    .end local v1           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 254
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MtpPropertyGroup"

    const-string/jumbo v2, "queryGenre exception"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    if-eqz v6, :cond_2

    .line 258
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    goto :goto_0

    .line 257
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 258
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .locals 9
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v7, 0x0

    .line 264
    const/4 v6, 0x0

    .line 267
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 270
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    new-instance v0, Ljava/lang/Long;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    if-eqz v6, :cond_0

    .line 276
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 279
    :cond_0
    :goto_0
    return-object v0

    .line 275
    :cond_1
    if-eqz v6, :cond_2

    .line 276
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v7

    .line 279
    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 275
    if-eqz v6, :cond_2

    .line 276
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 275
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 276
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v8, 0x0

    .line 201
    const/4 v6, 0x0

    .line 204
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 207
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 215
    if-eqz v6, :cond_0

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 210
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    if-eqz v6, :cond_0

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 212
    :catch_0
    move-exception v7

    .line 215
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    goto :goto_0

    .line 215
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .locals 30
    .parameter "handle"
    .parameter "format"
    .parameter "depth"

    .prologue
    .line 298
    const/4 v2, 0x1

    move/from16 v0, p3

    if-gt v0, v2, :cond_0

    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 299
    :cond_0
    if-nez p1, :cond_4

    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    .line 301
    const/16 p1, -0x1

    .line 302
    const/16 p3, 0x0

    .line 312
    :cond_1
    if-nez p2, :cond_7

    .line 313
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 315
    const/4 v5, 0x0

    .line 316
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 340
    .local v6, whereArgs:[Ljava/lang/String;
    :goto_0
    const/16 v19, 0x0

    .line 343
    .local v19, c:Landroid/database/Cursor;
    if-gtz p3, :cond_2

    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    .line 344
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 345
    if-nez v19, :cond_a

    .line 346
    new-instance v7, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2009

    invoke-direct {v7, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    if-eqz v19, :cond_3

    .line 466
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    .end local v19           #c:Landroid/database/Cursor;
    :cond_3
    :goto_1
    return-object v7

    .line 306
    :cond_4
    new-instance v7, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const v3, 0xa808

    invoke-direct {v7, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    goto :goto_1

    .line 318
    :cond_5
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 319
    .restart local v6       #whereArgs:[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    .line 320
    const-string/jumbo v5, "parent=?"

    .restart local v5       #where:Ljava/lang/String;
    goto :goto_0

    .line 322
    .end local v5           #where:Ljava/lang/String;
    :cond_6
    const-string v5, "_id=?"

    .restart local v5       #where:Ljava/lang/String;
    goto :goto_0

    .line 326
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    :cond_7
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 328
    const-string v5, "format=?"

    .line 329
    .restart local v5       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .restart local v6       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 331
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    :cond_8
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 332
    .restart local v6       #whereArgs:[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_9

    .line 333
    const-string/jumbo v5, "parent=? AND format=?"

    .restart local v5       #where:Ljava/lang/String;
    goto :goto_0

    .line 335
    .end local v5           #where:Ljava/lang/String;
    :cond_9
    const-string v5, "_id=? AND format=?"

    .restart local v5       #where:Ljava/lang/String;
    goto :goto_0

    .line 350
    .restart local v19       #c:Landroid/database/Cursor;
    :cond_a
    if-nez v19, :cond_c

    const/16 v21, 0x1

    .line 351
    .local v21, count:I
    :goto_2
    :try_start_1
    new-instance v7, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    mul-int v2, v2, v21

    const/16 v3, 0x2001

    invoke-direct {v7, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 355
    .local v7, result:Landroid/mtp/MtpPropertyList;
    const/16 v26, 0x0

    .local v26, objectIndex:I
    :goto_3
    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_16

    .line 356
    if-eqz v19, :cond_b

    .line 357
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    .line 358
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 p1, v0

    .line 362
    :cond_b
    const/16 v28, 0x0

    .local v28, propertyIndex:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_15

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget-object v27, v2, v28

    .line 364
    .local v27, property:Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v27

    iget v9, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 365
    .local v9, propertyCode:I
    move-object/from16 v0, v27

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    move/from16 v20, v0

    .line 368
    .local v20, column:I
    sparse-switch v9, :sswitch_data_0

    .line 448
    move-object/from16 v0, v27

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const v3, 0xffff

    if-ne v2, v3, :cond_13

    .line 449
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 362
    :goto_5
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    .line 350
    .end local v7           #result:Landroid/mtp/MtpPropertyList;
    .end local v9           #propertyCode:I
    .end local v20           #column:I
    .end local v21           #count:I
    .end local v26           #objectIndex:I
    .end local v27           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v28           #propertyIndex:I
    :cond_c
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v21

    goto :goto_2

    .line 371
    .restart local v7       #result:Landroid/mtp/MtpPropertyList;
    .restart local v9       #propertyCode:I
    .restart local v20       #column:I
    .restart local v21       #count:I
    .restart local v26       #objectIndex:I
    .restart local v27       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v28       #propertyIndex:I
    :sswitch_0
    const/4 v10, 0x2

    const-wide/16 v11, 0x0

    move/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 462
    .end local v7           #result:Landroid/mtp/MtpPropertyList;
    .end local v9           #propertyCode:I
    .end local v20           #column:I
    .end local v21           #count:I
    .end local v26           #objectIndex:I
    .end local v27           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v28           #propertyIndex:I
    :catch_0
    move-exception v23

    .line 463
    .local v23, e:Landroid/os/RemoteException;
    :try_start_2
    new-instance v7, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2002

    invoke-direct {v7, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    if-eqz v19, :cond_3

    .line 466
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 375
    .end local v23           #e:Landroid/os/RemoteException;
    .restart local v7       #result:Landroid/mtp/MtpPropertyList;
    .restart local v9       #propertyCode:I
    .restart local v20       #column:I
    .restart local v21       #count:I
    .restart local v26       #objectIndex:I
    .restart local v27       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v28       #propertyIndex:I
    :sswitch_1
    const/4 v10, 0x6

    :try_start_3
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v11, v2

    move/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 465
    .end local v7           #result:Landroid/mtp/MtpPropertyList;
    .end local v9           #propertyCode:I
    .end local v20           #column:I
    .end local v21           #count:I
    .end local v26           #objectIndex:I
    .end local v27           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v28           #propertyIndex:I
    :catchall_0
    move-exception v2

    if-eqz v19, :cond_d

    .line 466
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2

    .line 379
    .restart local v7       #result:Landroid/mtp/MtpPropertyList;
    .restart local v9       #propertyCode:I
    .restart local v20       #column:I
    .restart local v21       #count:I
    .restart local v26       #objectIndex:I
    .restart local v27       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v28       #propertyIndex:I
    :sswitch_2
    const/4 v10, 0x4

    const-wide/16 v11, 0x0

    move/from16 v8, p1

    :try_start_4
    invoke-virtual/range {v7 .. v12}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_5

    .line 383
    :sswitch_3
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 384
    .local v29, value:Ljava/lang/String;
    if-eqz v29, :cond_e

    .line 385
    invoke-static/range {v29 .. v29}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_5

    .line 387
    :cond_e
    const/16 v2, 0x2009

    invoke-virtual {v7, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_5

    .line 392
    .end local v29           #value:Ljava/lang/String;
    :sswitch_4
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 394
    .local v25, name:Ljava/lang/String;
    if-nez v25, :cond_f

    .line 395
    const-string/jumbo v2, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 398
    :cond_f
    if-nez v25, :cond_10

    .line 399
    const-string v2, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 400
    if-eqz v25, :cond_10

    .line 401
    invoke-static/range {v25 .. v25}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 404
    :cond_10
    if-eqz v25, :cond_11

    .line 405
    move/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v9, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_5

    .line 407
    :cond_11
    const/16 v2, 0x2009

    invoke-virtual {v7, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_5

    .line 413
    .end local v25           #name:Ljava/lang/String;
    :sswitch_5
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 417
    :sswitch_6
    const-string v2, "%04d0101T000000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 418
    .local v22, dateTime:Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v9, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 422
    .end local v22           #dateTime:Ljava/lang/String;
    :sswitch_7
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 423
    .local v11, puid:J
    const/16 v2, 0x20

    shl-long/2addr v11, v2

    .line 424
    move/from16 v0, p1

    int-to-long v2, v0

    add-long/2addr v11, v2

    .line 425
    const/16 v10, 0xa

    move/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 428
    .end local v11           #puid:J
    :sswitch_8
    const/16 v16, 0x4

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    move-wide/from16 v17, v0

    move-object v13, v7

    move/from16 v14, p1

    move v15, v9

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 432
    :sswitch_9
    const-string v2, "artist"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 436
    :sswitch_a
    const-string v2, "album"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 440
    :sswitch_b
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    move-result-object v24

    .line 441
    .local v24, genre:Ljava/lang/String;
    if-eqz v24, :cond_12

    .line 442
    move/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v9, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 444
    :cond_12
    const/16 v2, 0x2009

    invoke-virtual {v7, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_5

    .line 450
    .end local v24           #genre:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, v27

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    if-nez v2, :cond_14

    .line 451
    move-object/from16 v0, v27

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v16, v0

    const-wide/16 v17, 0x0

    move-object v13, v7

    move/from16 v14, p1

    move v15, v9

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 453
    :cond_14
    move-object/from16 v0, v27

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v16, v0

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    move-object v13, v7

    move/from16 v14, p1

    move v15, v9

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    .line 355
    .end local v9           #propertyCode:I
    .end local v20           #column:I
    .end local v27           #property:Landroid/mtp/MtpPropertyGroup$Property;
    :cond_15
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3

    .line 465
    .end local v28           #propertyIndex:I
    :cond_16
    if-eqz v19, :cond_3

    .line 466
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 368
    nop

    :sswitch_data_0
    .sparse-switch
        0xdc03 -> :sswitch_2
        0xdc07 -> :sswitch_3
        0xdc09 -> :sswitch_5
        0xdc41 -> :sswitch_7
        0xdc44 -> :sswitch_4
        0xdc46 -> :sswitch_9
        0xdc4e -> :sswitch_5
        0xdc4f -> :sswitch_0
        0xdc87 -> :sswitch_1
        0xdc88 -> :sswitch_1
        0xdc8b -> :sswitch_8
        0xdc8c -> :sswitch_b
        0xdc99 -> :sswitch_6
        0xdc9a -> :sswitch_a
    .end sparse-switch
.end method

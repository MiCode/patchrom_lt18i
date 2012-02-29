.class Landroid/app/DownloadManager$CursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CursorTranslator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 892
    const-class v0, Landroid/app/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;)V
    .locals 0
    .parameter "cursor"
    .parameter "baseUri"

    .prologue
    .line 896
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 897
    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 898
    return-void
.end method

.method private getErrorCode(I)J
    .locals 2
    .parameter "status"

    .prologue
    .line 1075
    const/16 v0, 0x190

    if-gt v0, p1, :cond_0

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_2

    const/16 v0, 0x258

    if-ge p1, v0, :cond_2

    .line 1078
    :cond_1
    int-to-long v0, p1

    .line 1108
    :goto_0
    return-wide v0

    .line 1081
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 1108
    :pswitch_0
    const-wide/16 v0, 0x3e8

    goto :goto_0

    .line 1083
    :pswitch_1
    const-wide/16 v0, 0x3e9

    goto :goto_0

    .line 1087
    :pswitch_2
    const-wide/16 v0, 0x3ea

    goto :goto_0

    .line 1090
    :pswitch_3
    const-wide/16 v0, 0x3ec

    goto :goto_0

    .line 1093
    :pswitch_4
    const-wide/16 v0, 0x3ed

    goto :goto_0

    .line 1096
    :pswitch_5
    const-wide/16 v0, 0x3ee

    goto :goto_0

    .line 1099
    :pswitch_6
    const-wide/16 v0, 0x3ef

    goto :goto_0

    .line 1102
    :pswitch_7
    const-wide/16 v0, 0x3f0

    goto :goto_0

    .line 1105
    :pswitch_8
    const-wide/16 v0, 0x3f1

    goto :goto_0

    .line 1081
    :pswitch_data_0
    .packed-switch 0x1e8
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1000
    const-string v5, "destination"

    invoke-direct {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1001
    .local v0, destinationType:J
    const-wide/16 v5, 0x4

    cmp-long v5, v0, v5

    if-nez v5, :cond_0

    .line 1003
    const-string v5, "hint"

    invoke-direct {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1017
    :goto_0
    return-object v5

    .line 1006
    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-nez v5, :cond_2

    .line 1008
    const-string v5, "_data"

    invoke-direct {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1009
    .local v4, localPath:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1010
    const/4 v5, 0x0

    goto :goto_0

    .line 1012
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1016
    .end local v4           #localPath:Ljava/lang/String;
    :cond_2
    const-string v5, "_id"

    invoke-direct {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1017
    .local v2, downloadId:J
    iget-object v5, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private getReason(I)J
    .locals 2
    .parameter "status"

    .prologue
    .line 1046
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1054
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 1048
    :sswitch_0
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    goto :goto_0

    .line 1051
    :sswitch_1
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    goto :goto_0

    .line 1046
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private getUnderlyingLong(Ljava/lang/String;)J
    .locals 2
    .parameter "column"

    .prologue
    .line 1113
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "column"

    .prologue
    .line 1117
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isLongColumn(Ljava/lang/String;)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 947
    invoke-static {}, Landroid/app/DownloadManager;->access$100()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private translateLong(Ljava/lang/String;)J
    .locals 3
    .parameter "column"

    .prologue
    const-string v2, "_id"

    const-string/jumbo v1, "status"

    .line 1021
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->isLongColumn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1023
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1042
    :goto_0
    return-wide v0

    .line 1026
    :cond_0
    const-string v0, "_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    const-string v0, "_id"

    invoke-direct {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 1029
    :cond_1
    const-string/jumbo v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1030
    const-string/jumbo v0, "total_bytes"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 1032
    :cond_2
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1033
    const-string/jumbo v0, "status"

    invoke-direct {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 1035
    :cond_3
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1036
    const-string/jumbo v0, "status"

    invoke-direct {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getReason(I)J

    move-result-wide v0

    goto :goto_0

    .line 1038
    :cond_4
    const-string v0, "bytes_so_far"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1039
    const-string v0, "current_bytes"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 1041
    :cond_5
    sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    const-string v0, "last_modified_timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1042
    :cond_6
    const-string v0, "lastmod"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private translateStatus(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 1121
    packed-switch p1, :pswitch_data_0

    .line 1138
    :pswitch_0
    sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/provider/Downloads;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1123
    :pswitch_1
    const/4 v0, 0x1

    .line 1139
    :goto_0
    return v0

    .line 1126
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1132
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1135
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 1139
    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    .line 1121
    nop

    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private translateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "column"

    .prologue
    const-string/jumbo v4, "uri"

    const-string/jumbo v3, "title"

    const-string v2, "mediaprovider_uri"

    const-string v1, "description"

    .line 976
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->isLongColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 996
    :goto_0
    return-object v0

    .line 979
    :cond_0
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    const-string/jumbo v0, "title"

    invoke-direct {p0, v3}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 982
    :cond_1
    const-string v0, "description"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 983
    const-string v0, "description"

    invoke-direct {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 985
    :cond_2
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 986
    const-string/jumbo v0, "uri"

    invoke-direct {p0, v4}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 988
    :cond_3
    const-string v0, "media_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 989
    const-string v0, "mimetype"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 991
    :cond_4
    const-string v0, "mediaprovider_uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 992
    const-string v0, "mediaprovider_uri"

    invoke-direct {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 995
    :cond_5
    sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    const-string v0, "local_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 996
    :cond_6
    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getBlob(I)[B
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 938
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 933
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "columnName"

    .prologue
    .line 902
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 907
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 908
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 909
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 911
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 4
    .parameter "columnIndex"

    .prologue
    .line 916
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    .line 917
    .local v0, numColumns:I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 918
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid column index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " columns exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 921
    :cond_1
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    return-object v1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 926
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/String;

    .line 927
    .local v0, returnColumns:[Ljava/lang/String;
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 928
    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 943
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 952
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 957
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 962
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->translateLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method getPausedReason(I)J
    .locals 2
    .parameter "status"

    .prologue
    .line 1059
    packed-switch p1, :pswitch_data_0

    .line 1070
    const-wide/16 v0, 0x4

    :goto_0
    return-wide v0

    .line 1061
    :pswitch_0
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 1064
    :pswitch_1
    const-wide/16 v0, 0x2

    goto :goto_0

    .line 1067
    :pswitch_2
    const-wide/16 v0, 0x3

    goto :goto_0

    .line 1059
    nop

    :pswitch_data_0
    .packed-switch 0xc2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getShort(I)S
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 967
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 972
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->translateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
